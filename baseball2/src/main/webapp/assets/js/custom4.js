// canvas settings
var viewWidth = 768,
    viewHeight = 768,
    drawingCanvas = document.getElementById("drawing_canvas"),
    ctx,
    timeStep = (1/60),
    time = 0;

var nodes = [],
    signals = [];

var signalCount = 0;

window.onload = function() {
    initDrawingCanvas();
    createNodes();
    connectNodes();

    transmit();
    setInterval(transmit, 1500);

    requestAnimationFrame(loop);
};

function initDrawingCanvas() {
    drawingCanvas.width = viewWidth;
    drawingCanvas.height = viewHeight;
    ctx = drawingCanvas.getContext('2d');
}

function createNodes() {
    var rad = viewWidth * 0.5 - 10;

    for (var i = 0; i < 300; i++) {
        var q = Math.random() * (Math.PI * 2);
        var r = Math.sqrt(Math.random());
        var x = (rad * r) * Math.cos(q) + viewWidth * 0.5;
        var y = (rad * r) * Math.sin(q) + viewWidth * 0.5;

        nodes[i] = new Node(x, y);
    }
}
function connectNodes() {
    var connection,
        j,
        connectCount;

    for (var i = 0; i < nodes.length; i++) {
        j = 0;

        connectCount = Math.floor(randomRange(3, 6));

        while (j < connectCount) {
            connection = getRandom(nodes);

            if (nodes[i] !== connection) {
                nodes[i].connections.push(connection);
                j++;
            }
        }
    }
}
function transmit() {
    signals.push(new Signal(getRandom(nodes)));
    signalCount++;
}
function update() {
    nodes.forEach(function(n) {
        n.update();
    });
    signals.forEach(function(s) {
        if (s.update() === true) {
            signals.splice(signals.indexOf(s), 1);
        }
    });
}
function draw() {
    ctx.clearRect(0, 0, viewWidth, viewHeight);

    nodes.forEach(function(n) {
        n.draw();
    });
    signals.forEach(function(s) {
        s.draw();
    });
}
function loop() {
    update();
    draw();
    time += timeStep;
    requestAnimationFrame(loop);
}
function Node(x, y) {
    this.x = this._x = x;
    this.y = this._y = y;

    this.connections = [];

    this.r = randomRange(-10, 10);
}
Node.prototype = {
    update:function() {
        this.x = this._x + Math.sin(time) * this.r;
        this.y = this._y + Math.cos(time) * this.r;
    },
    draw:function() {
        ctx.strokeStyle = '#fff';
        ctx.fillStyle = '#fff';
        ctx.lineWidth = 0.05;
        ctx.fillRect(this.x, this.y, 1, 1);
        for (var i = 0; i < this.connections.length; i++) {
            ctx.beginPath();
            ctx.moveTo(this.x, this.y);
            ctx.lineTo(this.connections[i].x, this.connections[i].y);
            ctx.stroke();
        }
    }
};
function Signal(start) {
    this.start = start;
    this.parts = [];
    this.completeParts = [];
    this.strength = 4.0;
    this.jumps = 0;
    var tint = (signalCount % 12) * 30;
    this.style = 'hsl(' + tint + ',100%,50%)';
    for (var i = 0; i < start.connections.length; i++) {
        this.parts.push(new SignalPart(this.start, this.start.connections[i], this.strength, this.style));
    }
}
Signal.prototype = {
    update:function() {
        var complete = false;
        this.completeParts.length = 0;
        for (var i = this.parts.length - 1; i >= 0; i--) {
            this.parts[i].time += timeStep;
            if (this.parts[i].complete) {
                this.completeParts.push(this.parts.splice(i, 1)[0]);
            }
        }
        if (this.completeParts.length > 0) {
            this.jumps++;
            this.strength--;
            complete = this.jumps === 3;
        }
        if (complete === false) {
            var part,
              end,
              connection;
            for (var j = 0; j < this.completeParts.length; j++) {
                part = this.completeParts[j];
                end = part.end;
                for (var k = 0; k < end.connections.length; k++) {
                    connection = end.connections[k];
                    this.parts.push(new SignalPart(end, connection, this.strength, this.style));
                }
            }
        }
        return complete;
    },
    draw:function() {
        for (var i = 0; i < this.parts.length; i++) {
            this.parts[i].draw();
        }
    }
};
function SignalPart(start, end, strength, style) {
    this.start = start;
    this.end = end;
    this.strength = strength;
    this.style = style;
    this._time = 0;
    this.prevTime = 0;
    this.duration = 2;
    this.complete = false;

    this.p0 = {x:0, y:0};
    this.p1 = {x:0, y:0};
}
SignalPart.prototype = {
    set time(v) {
        this.prevTime = this._time;
        this._time = v >= this.duration ? this.duration : v;
        this.complete = this._time === this.duration;
    },
    get time() {
        return this._time;
    },
    draw:function() {
        var t0 = Ease.outCubic(this.prevTime, 0, 1, this.duration);
        var t1 = Ease.outQuad(this.time, 0, 1, this.duration);
        lerp(this.start, this.end, t0, this.p0);
        lerp(this.start, this.end, t1, this.p1);

        ctx.strokeStyle = this.style;
        ctx.lineWidth = this.strength * 0.25;
        ctx.lineCap = 'round';
        ctx.beginPath();
        ctx.moveTo(this.p0.x, this.p0.y);
        ctx.lineTo(this.p1.x, this.p1.y);
        ctx.stroke();
    }
};
function randomRange(min, max) {
    return min + Math.random() * (max - min);
}
function getRandom(a) {
    return a[Math.floor(Math.random() * a.length)];
}
function lerp(n1, n2, t, p) {
    p = p || {x:0, y:0};
    p.x = n1.x + t * (n2.x - n1.x);
    p.y = n1.y + t * (n2.y - n1.y);
    return p;
}
/**
 * easing equations from http://gizma.com/easing/
 * t = current time
 * b = start value
 * c = delta value
 * d = duration
 */
var Ease = {
    inCubic:function (t, b, c, d) {
        t /= d;
        return c*t*t*t + b;
    },
    outCubic:function(t, b, c, d) {
        t /= d;
        t--;
        return c*(t*t*t + 1) + b;
    },
    inQuad: function (t, b, c, d) {
        return c*(t/=d)*t + b;
    },
    outQuad: function (t, b, c, d) {
        return -c *(t/=d)*(t-2) + b;
    },
    inOutCubic:function(t, b, c, d) {
        t /= d/2;
        if (t < 1) return c/2*t*t*t + b;
        t -= 2;
        return c/2*(t*t*t + 2) + b;
    }
};
/*/왼쪽 상단 배경이미지 */




$("body").addClass("active");


/*function counter() {
    if ($('.about .count').size()) {
        $c = $('.about .count');

        $c.each(function () {
            var $this = $(this);
            $this.data('target', parseInt($this.html()));
            $this.data('counted', false);
            $this.html('0');
        });

        $(window).bind('scroll', function () {
            var speed = 5000;

            $c.each(function (i) {
                var $t = $(this);
                if (!$t.data('counted') && $(window).scrollTop() + $(window).height() >= $t.offset().top) {

                    $t.data('counted', true);
                    
                    $t.animate({
                        dummy: 1
                    }, {
                        duration: speed,
                        step: function (now) {
                            var $this = $(this);
                            var val = Math.round($this.data('target') * now);
                            $this.html(val);
                        },
                        easing: 'easeInOutQuart'
                    });

                    // easy pie
                    $('.pie').easyPieChart({
                        barColor: '#000',
                        trackColor: '#ccc',
                        scaleColor: '#000',
                        scaleLength: 5,
                        lineWidth: 1,
                        size: 200,
                        lineCap: 'round',
                        animate: { duration: speed, enabled: true }
                    });
                }
            });
        }).triggerHandler('scroll');
    }
}*/

//고정된 사이드 메뉴들
$(function(){
	//햄버거 메뉴 
	var cont = $("#contents > div");
	var sideBar = $(".side-bar");
	var phone = $(".phone");
	var menuBtn = $(".menu-wrapper");

	$(".icon-wrap").click(function(){
		$("body").toggleClass("scroll");
	   $(".icon").toggleClass("animation");
	   $(".overlay").toggleClass("open");
	   $(".box-wrap").toggleClass("show");
	   $(".menu").toggleClass("show");
	   	sideBar.find(".sb-svg").toggleClass("show3");
		sideBar.find(".sb-txt").toggleClass("show3");
		sideBar.find(".sb-sns i").toggleClass("show3");
		phone.find(".phone-icon svg").toggleClass("show3");
		phone.find(".phone-number").toggleClass("show3");
		menuBtn.find(".menu-button.wrap").toggleClass("show3");
	});

	$(".menu-right > a").click(function(){
		$(".icon").removeClass("animation");
	   $(".box-wrap").removeClass("show");
	   $(".menu").removeClass("show");
	   $("body").removeClass("scroll");
        sideBar.find(".sb-svg").removeClass("show3");
        sideBar.find(".sb-txt").removeClass("show3");
        sideBar.find(".sb-sns i").removeClass("show3");
        phone.find(".phone-icon svg").removeClass("show3");
        phone.find(".phone-number").removeClass("show3");
        menuBtn.find(".menu-button.wrap").removeClass("show3");
	});
});

// 스크롤시 색변화
var cont = $("#contents > div");
var sideBar = $(".side-bar");
var phone = $(".phone");
var menuBtn = $(".menu-wrapper");

$(window).scroll(function(){
	var wScroll = $(this).scrollTop();
	wScroll = parseInt(wScroll);
	
	
	if(wScroll >= cont.eq(0).offset().top){
		sideBar.find(".sb-svg").removeClass("show");
		sideBar.find(".sb-txt").removeClass("show");
		sideBar.find(".sb-sns i").removeClass("show");
		phone.find(".phone-icon svg").removeClass("show");
		phone.find(".phone-number").removeClass("show");
		menuBtn.find(".menu-button.wrap").removeClass("show");
	}
	if(wScroll >= cont.eq(1).offset().top - $(window).height()/2){
		sideBar.find(".sb-svg").addClass("show");
		sideBar.find(".sb-txt").addClass("show");
		sideBar.find(".sb-sns i").addClass("show");
		phone.find(".phone-icon svg").addClass("show");
		phone.find(".phone-number").addClass("show");
		menuBtn.find(".menu-button.wrap").addClass("show");
	}
	if(wScroll >= cont.eq(2).offset().top - $(window).height()/2){
		sideBar.find(".sb-svg").removeClass("show");
		sideBar.find(".sb-txt").removeClass("show");
		sideBar.find(".sb-sns i").removeClass("show");
		phone.find(".phone-icon svg").removeClass("show");
		phone.find(".phone-number").removeClass("show");
		menuBtn.find(".menu-button.wrap").removeClass("show");
	}
	if(wScroll >= cont.eq(3).offset().top - $(window).height()/2){
		sideBar.find(".sb-svg").addClass("show");
		sideBar.find(".sb-txt").addClass("show");
		sideBar.find(".sb-sns i").addClass("show");
		phone.find(".phone-icon svg").addClass("show");
		phone.find(".phone-number").addClass("show");
		menuBtn.find(".menu-button.wrap").addClass("show");
	}
	
	//4page 누락
	/*if(wScroll >= cont.eq(4).offset().top - $(window).height()/2){
		sideBar.find(".sb-svg").removeClass("show");
		sideBar.find(".sb-txt").removeClass("show");
		sideBar.find(".sb-sns i").removeClass("show");
		phone.find(".phone-icon svg").removeClass("show");
		phone.find(".phone-number").removeClass("show");
		menuBtn.find(".menu-button.wrap").removeClass("show");
	}*/


	if(wScroll >= cont.eq(2).offset().top - $(window).height()/2 ){
		cont.eq(2).find(".sec3").addClass("show");
	}
});

//스크롤시 애니메이션
var contents = $("#section2");
var contents2 = $("#section3");
var about = $(".about");

$(window).scroll(function(){
    var wScroll = $(this).scrollTop();

    //section2 이동시 스크롤 값
	try{
		if(wScroll >= $(".about").offset().top -$(window).height()/3){
			$(".about").addClass("show");
		} else {
	        $(".about").removeClass("show");
	    }
	}catch (e) {
		
	}
	
    

	//section3 이동시 스크롤 값
	
	//title
	/*if(wScroll >= $(".s1_tit").offset().top -$(window).height()/1.2){
	    $(".s1_tit").addClass("show");
	}else {
	    $(".s1_tit").removeClass("show");
	}
	if(wScroll >= $(".h3_tit").offset().top -$(window).height()/1.5){
	    $(".h3_tit").addClass("show");
	}else {
	    $(".h3_tit").removeClass("show");
	}
	if(wScroll >= $(".p1_desc").offset().top -$(window).height()/1.2){
	    $(".p1_desc").addClass("show");
	}else {
	    $(".p1_desc").removeClass("show");
	}
	if(wScroll >= $(".p2_desc").offset().top -$(window).height()/1.2){
	    $(".p2_desc").addClass("show");
	}else {
	    $(".p2_desc").removeClass("show");
	}*/
	
    // cont1
	if(wScroll >= $(".s1_tit.cont1").offset().top -$(window).height()/1.6){
	    $(".s1_tit.cont1").addClass("show");
	}else {
	    $(".s1_tit.cont1").removeClass("show");
	}
	if(wScroll >= $(".h3_tit.cont1").offset().top -$(window).height()/1.4){
	    $(".h3_tit.cont1").addClass("show");
	}else {
	    $(".h3_tit.cont1").removeClass("show");
	}
	if(wScroll >= $(".p1_desc.cont1").offset().top -$(window).height()/1.2){
	    $(".p1_desc.cont1").addClass("show");
	}else {
	    $(".p1_desc.cont1").removeClass("show");
	}
	if(wScroll >= $(".s1_tit.ta_right").offset().top -$(window).height()/1.4){
	    $(".s1_tit.ta_right").addClass("show");
	}else {
	    $(".s1_tit.ta_right").removeClass("show");
	}
	
	
	
	
	//cont2
	if(wScroll >= $(".s1_tit.cont2").offset().top -$(window).height()/1.2){
	    $(".s1_tit.cont2").addClass("show");
	    $(".s1_tit.cont_pl").addClass("show");
	}else {
	    $(".s1_tit.cont2").removeClass("show");
	    $(".s1_tit.cont_pl").removeClass("show");
	}
	if(wScroll >= $(".h3_tit.cont2").offset().top -$(window).height()/1.4){
	    $(".h3_tit.cont2").addClass("show");
	    $(".h3_tit.cont1_pl").addClass("show");
	}else {
	    $(".h3_tit.cont2").removeClass("show");
	    $(".h3_tit.cont1_pl").removeClass("show");
	}
	if(wScroll >= $(".p1_desc.cont2").offset().top -$(window).height()/1.2){
	    $(".p1_desc.cont2").addClass("show");
	    $(".p1_desc.cont1_pl").addClass("show");
	}else {
	    $(".p1_desc.cont2").removeClass("show");
	    $(".p1_desc.cont1_pl").removeClass("show");
	}
	if(wScroll >= $(".s1_tit.ta_left").offset().top -$(window).height()/1.6){
	    $(".s1_tit.ta_left").addClass("show");
	    $(".s1_tit.ta_pl").addClass("show");
	}else {
	    $(".s1_tit.ta_left").removeClass("show");
	    $(".s1_tit.ta_pl").removeClass("show");
	}


	
    
    
    
    
	//section4
    /*if(wScroll >= $(".ani-title p").offset().top -$(window).height()/1.4){
		$(".ani-title p").addClass("show");
	}else {
	    $(".ani-title p").removeClass("show");
	}
	if(wScroll >= $(".ani-title h4").offset().top -$(window).height()/1.4){
		$(".ani-title h4").addClass("show");
	}else {
	    $(".ani-title h4").removeClass("show");
	}
 	if(wScroll >= $(".tit-left").offset().top -$(window).height()/1.4){
		$(".tit-left").addClass("show");
	}else {
        $(".tit-left").removeClass("show");
    }
	if(wScroll >= $(".iframe.iframe-left").offset().top -$(window).height()/1.6){
		$(".iframe.iframe-left").addClass("show");
	}else {
        $(".iframe.iframe-left").removeClass("show");
    }
    if(wScroll >= $(".desc-left").offset().top -$(window).height()/1.2){
		$(".desc-left").addClass("show");
	}else {
        $(".desc-left").removeClass("show");
    }
    if(wScroll >= $(".code-left").offset().top -$(window).height()/1.2){
		$(".code-left").addClass("show");
	}else {
        $(".code-left").removeClass("show");
    }
    if(wScroll >= $(".tit-left").eq(1).offset().top -$(window).height()/1.4){
		$(".tit-left").eq(1).addClass("show");
	}else {
        $(".tit-left").eq(1).removeClass("show");
    }
	if(wScroll >= $(".iframe.iframe-left").eq(1).offset().top -$(window).height()/1.6){
		$(".iframe.iframe-left").eq(1).addClass("show");
	}else {
        $(".iframe.iframe-left").eq(1).removeClass("show");
    }
    if(wScroll >= $(".desc-left").eq(1).offset().top -$(window).height()/1.2){
		$(".desc-left").eq(1).addClass("show");
	}else {
        $(".desc-left").eq(1).removeClass("show");
    }
    if(wScroll >= $(".code-left").eq(1).offset().top -$(window).height()/1.2){
		$(".code-left").eq(1).addClass("show");
	}else {
        $(".code-left").eq(1).removeClass("show");
    }
    if(wScroll >= $(".tit-left").eq(2).offset().top -$(window).height()/1.4){
		$(".tit-left").eq(2).addClass("show");
	}else {
        $(".tit-left").eq(2).removeClass("show");
    }
	if(wScroll >= $(".iframe.iframe-left").eq(2).offset().top -$(window).height()/1.6){
		$(".iframe.iframe-left").eq(2).addClass("show");
	}else {
        $(".iframe.iframe-left").eq(2).removeClass("show");
    }
    if(wScroll >= $(".desc-left").eq(2).offset().top -$(window).height()/1.2){
		$(".desc-left").eq(2).addClass("show");
	}else {
        $(".desc-left").eq(2).removeClass("show");
    }
    if(wScroll >= $(".code-left").eq(2).offset().top -$(window).height()/1.2){
		$(".code-left").eq(2).addClass("show");
	}else {
        $(".code-left").eq(2).removeClass("show");
    }
    if(wScroll >= $(".tit-left").eq(3).offset().top -$(window).height()/1.4){
		$(".tit-left").eq(3).addClass("show");
	}else {
        $(".tit-left").eq(3).removeClass("show");
    }
	if(wScroll >= $(".iframe.iframe-left").eq(3).offset().top -$(window).height()/1.6){
		$(".iframe.iframe-left").eq(3).addClass("show");
	}else {
        $(".iframe.iframe-left").eq(3).removeClass("show");
    }
    if(wScroll >= $(".desc-left").eq(3).offset().top -$(window).height()/1.2){
		$(".desc-left").eq(3).addClass("show");
	}else {
        $(".desc-left").eq(3).removeClass("show");
    }
    if(wScroll >= $(".code-left").eq(3).offset().top -$(window).height()/1.2){
		$(".code-left").eq(3).addClass("show");
	}else {
        $(".code-left").eq(3).removeClass("show");
    }
   
    if(wScroll >= $(".tit-right").offset().top -$(window).height()/1.4){
		$(".tit-right").addClass("show");
	}else {
        $(".tit-right").removeClass("show");
    }
	if(wScroll >= $(".iframe.iframe-right").offset().top -$(window).height()/1.6){
		$(".iframe.iframe-right").addClass("show");
	}else {
        $(".iframe.iframe-right").removeClass("show");
    }
    if(wScroll >= $(".desc-right").offset().top -$(window).height()/1.2){
		$(".desc-right").addClass("show");
	}else {
        $(".desc-right").removeClass("show");
    }
    if(wScroll >= $(".code-right").offset().top -$(window).height()/1.2){
		$(".code-right").addClass("show");
	}else {
        $(".code-right").removeClass("show");
    }
    if(wScroll >= $(".tit-right").eq(1).offset().top -$(window).height()/1.4){
		$(".tit-right").eq(1).addClass("show");
	}else {
        $(".tit-right").eq(1).removeClass("show");
    }
	if(wScroll >= $(".iframe.iframe-right").eq(1).offset().top -$(window).height()/1.6){
		$(".iframe.iframe-right").eq(1).addClass("show");
	}else {
        $(".iframe.iframe-right").eq(1).removeClass("show");
    }
    if(wScroll >= $(".desc-right").eq(1).offset().top -$(window).height()/1.2){
		$(".desc-right").eq(1).addClass("show");
	}else {
        $(".desc-right").eq(1).removeClass("show");
    }
    if(wScroll >= $(".code-right").eq(1).offset().top -$(window).height()/1.2){
		$(".code-right").eq(1).addClass("show");
	}else {
        $(".code-right").eq(1).removeClass("show");
    }
    if(wScroll >= $(".tit-right").eq(2).offset().top -$(window).height()/1.4){
		$(".tit-right").eq(2).addClass("show");
	}else {
        $(".tit-right").eq(2).removeClass("show");
    }
	if(wScroll >= $(".iframe.iframe-right").eq(2).offset().top -$(window).height()/1.6){
		$(".iframe.iframe-right").eq(2).addClass("show");
	}else {
        $(".iframe.iframe-right").eq(2).removeClass("show");
    }
    if(wScroll >= $(".desc-right").eq(2).offset().top -$(window).height()/1.2){
		$(".desc-right").eq(2).addClass("show");
	}else {
        $(".desc-right").eq(2).removeClass("show");
    }
    if(wScroll >= $(".code-right").eq(2).offset().top -$(window).height()/1.2){
		$(".code-right").eq(2).addClass("show");
	}else {
        $(".code-right").eq(2).removeClass("show");
    }
    if(wScroll >= $(".tit-right").eq(3).offset().top -$(window).height()/1.4){
		$(".tit-right").eq(3).addClass("show");
	}else {
        $(".tit-right").eq(3).removeClass("show");
    }
	if(wScroll >= $(".iframe.iframe-right").eq(3).offset().top -$(window).height()/1.6){
		$(".iframe.iframe-right").eq(3).addClass("show");
	}else {
        $(".iframe.iframe-right").eq(3).removeClass("show");
    }
    if(wScroll >= $(".desc-right").eq(3).offset().top -$(window).height()/1.2){
		$(".desc-right").eq(3).addClass("show");
	}else {
        $(".desc-right").eq(3).removeClass("show");
    }
    if(wScroll >= $(".code-right").eq(3).offset().top -$(window).height()/1.2){
		$(".code-right").eq(3).addClass("show");
	}else {
        $(".code-right").eq(3).removeClass("show");
    }

    if(wScroll >= $(".sec5-title").offset().top -$(window).height()/1.4){
		$(".sec5-title").addClass("show");
	}else {
        $(".sec5-title").removeClass("show");
    }
    if(wScroll >= $(".contact-img").offset().top -$(window).height()/1.4){
		$(".contact-img").addClass("show");
	}else {
        $(".contact-img").removeClass("show");
    }
    if(wScroll >= $(".contactMe-left").offset().top -$(window).height()/1.4){
		$(".contactMe-left").addClass("show");
	}else {
        $(".contactMe-left").removeClass("show");
    }
    if(wScroll >= $(".contactMe-right").offset().top -$(window).height()/1.2){
		$(".contactMe-right").addClass("show");
	}else {
        $(".contactMe-right").removeClass("show");
    }*/
	
	
});

//section5
$(".btn1").click(function(){
    $(".animation-wrap:nth-child(2) .animation-box #modal").removeAttr("class").addClass("one");
});
$(".btn2").click(function(){
    $(".animation-wrap:nth-child(3) .animation-box #modal").removeAttr("class").addClass("one");
});
$(".btn3").click(function(){
    $(".animation-wrap:nth-child(4) .animation-box #modal").removeAttr("class").addClass("one");
});
$(".btn4").click(function(){
    $(".animation-wrap:nth-child(5) .animation-box #modal").removeAttr("class").addClass("one");
});
$(".btn5").click(function(){
    $(".animation-wrap:nth-child(6) .animation-box #modal").removeAttr("class").addClass("one");
});
$(".btn6").click(function(){
    $(".animation-wrap:nth-child(7) .animation-box #modal").removeAttr("class").addClass("one");
});
$(".btn7").click(function(){
    $(".animation-wrap:nth-child(8) .animation-box #modal").removeAttr("class").addClass("one");
});
$(".btn8").click(function(){
    $(".animation-wrap:nth-child(9) .animation-box #modal").removeAttr("class").addClass("one");
});
$(".close").click(function(){
    $(".animation-box:nth-child(1) #modal").addClass("out");
    $(".animation-box:nth-child(2) #modal").addClass("out");
    $(".animation-box:nth-child(3) #modal").addClass("out");
    $(".animation-box:nth-child(4) #modal").addClass("out");
    $(".animation-box:nth-child(5) #modal").addClass("out");
    $(".animation-box:nth-child(6) #modal").addClass("out");
    $(".animation-box:nth-child(7) #modal").addClass("out");
    $(".animation-box:nth-child(8) #modal").addClass("out");
});

$(".iframe-left").hover(function(){
	$(".tit-left.show").css({"left":"0","top":"20px"});
	// $(".iframe-left.show").css({"width":"100%"});
	$(".desc-left").css({"top":"73%"});
},function(){
	$(".tit-left.show").css({"left":"40%","top":"120px"});
	// $(".iframe-left.show").css({"width":"50%"});
	$(".desc-left").css({"top":"40%"});
});	

$(".iframe-right").hover(function(){
	$(".tit-right.show").css({"right":"0","top":"20px"});
	// $(".iframe-right.show").css({"width":"100%"});
	$(".desc-right").css({"top":"73%"});
},function(){
	$(".tit-right.show").css({"right":"40%","top":"120px"});
	// $(".iframe-right.show").css({"width":"50%"});
	$(".desc-right").css({"top":"40%"});
});	




//section3 윈도우 팝업 창
function popupOpen(){
    var popUrl = "http://kimju7.dothome.co.kr/mobile2/appdesign/index/login.html";          //팝업창에 출력될 페이지 URL
    var popOption = "width=400, height=700, resizable=no, scrollbars=no, status=no;";               //팝업창 옵션(optoin)
    window.open(popUrl,"",popOption);
    }

