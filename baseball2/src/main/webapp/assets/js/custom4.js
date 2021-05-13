


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
	if(wScroll >= cont.eq(1).offset().top){
		sideBar.find(".sb-svg").addClass("show");
		sideBar.find(".sb-txt").addClass("show");
		sideBar.find(".sb-sns i").addClass("show");
		phone.find(".phone-icon svg").addClass("show");
		phone.find(".phone-number").addClass("show");
		menuBtn.find(".menu-button.wrap").addClass("show");
	}
	if(wScroll >= cont.eq(2).offset().top){
		sideBar.find(".sb-svg").removeClass("show");
		sideBar.find(".sb-txt").removeClass("show");
		sideBar.find(".sb-sns i").removeClass("show");
		phone.find(".phone-icon svg").removeClass("show");
		phone.find(".phone-number").removeClass("show");
		menuBtn.find(".menu-button.wrap").removeClass("show");
	}
	if(wScroll >= cont.eq(3).offset().top){
		sideBar.find(".sb-svg").addClass("show");
		sideBar.find(".sb-txt").addClass("show");
		sideBar.find(".sb-sns i").addClass("show");
		phone.find(".phone-icon svg").addClass("show");
		phone.find(".phone-number").addClass("show");
		menuBtn.find(".menu-button.wrap").addClass("show");
	}
	if(wScroll >= cont.eq(4).offset().top - $(window).height()/2){
		sideBar.find(".sb-svg").removeClass("show");
		sideBar.find(".sb-txt").removeClass("show");
		sideBar.find(".sb-sns i").removeClass("show");
		phone.find(".phone-icon svg").removeClass("show");
		phone.find(".phone-number").removeClass("show");
		menuBtn.find(".menu-button.wrap").removeClass("show");
	}


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
	if(wScroll >= $(".about").offset().top -$(window).height()/50){
		$(".about").addClass("show");
	} else {
        $(".about").removeClass("show");
    }
    

//section3 이동시 스크롤 값
    
    // cont1
	if(wScroll >= $(".s3-cont1 .s3-img1.visual-middle").offset().top -$(window).height()/1.2){
	    $(".s3-cont1 .s3-img1.visual-middle").addClass("show");
	}else {
	    $(".s3-cont1 .s3-img1.visual-middle").removeClass("show");
	}
	if(wScroll >= $(".s3-cont1 .s3-img2.visual-up").offset().top -$(window).height()/1.5){
	    $(".s3-cont1 .s3-img2.visual-up").addClass("show");
	}else {
	    $(".s3-cont1 .s3-img2.visual-up").removeClass("show");
	}
	if(wScroll >= $(".s3-cont1 .s3-img3.visual-fast").offset().top -$(window).height()/1.2){
	    $(".s3-cont1 .s3-img3.visual-fast").addClass("show");
	}else {
	    $(".s3-cont1 .s3-img3.visual-fast").removeClass("show");
	}
	
	
	if(wScroll >= $(".s1_tit.cont1").offset().top -$(window).height()/1.2){
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
	if(wScroll >= $(".s3-cont2 .s3-img1.visual-middle").offset().top -$(window).height()/1.2){
	    $(".s3-cont2 .s3-img1.visual-middle").addClass("show");
	}else {
	    $(".s3-cont2 .s3-img1.visual-middle").removeClass("show");
	}
	if(wScroll >= $(".s3-cont2 .s3-img2.visual-up").offset().top -$(window).height()/1.2){
	    $(".s3-cont2 .s3-img2.visual-up").addClass("show");
	}else {
	    $(".s3-cont2 .s3-img2.visual-up").removeClass("show");
	}
	if(wScroll >= $(".s3-cont2 .s3-img3.visual-fast").offset().top -$(window).height()/1.2){
	    $(".s3-cont2 .s3-img3.visual-fast").addClass("show");
	}else {
	    $(".s3-cont2 .s3-img3.visual-fast").removeClass("show");
	}

	
	
	if(wScroll >= $(".s1_tit.cont2").offset().top ){
		console.log(wScroll);
	    $(".s1_tit.cont2").addClass("show");
	    $(".s1_tit.cont_pl").addClass("show");
	}else {
	    $(".s1_tit .cont2").removeClass("show");
	    $(".s1_tit .cont_pl").removeClass("show");
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


	//title
	if(wScroll >= $(".s1_tit").offset().top -$(window).height()/1.2){
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
	}
    
    
    
    
//section4
    if(wScroll >= $(".ani-title p").offset().top -$(window).height()/1.4){
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
    }
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

