



//dot-menu 
var dot = $(".dot ul li");
var cont = $("#contents > div");
var sideBar = $(".side-bar");
var phone = $(".phone");
var menuBtn = $(".menu-wrapper");

dot.click(function(e){
	e.preventDefault();
	var target = $(this);
	var index = target.index();
	var section = cont.eq(index);
	var offset = section.offset().top;
	offset = parseInt(offset);	
	$("html,body").animate({ scrollTop:offset },600,"easeInOutExpo");
});

$(window).scroll(function(){
	var wScroll = $(this).scrollTop();
	wScroll = parseInt(wScroll);

	if(wScroll > $(window).height()/1 ){
		$(".dot").removeClass("hide");
	} 
	
	if(wScroll >= cont.eq(0).offset().top){
		dot.removeClass("active");
		dot.eq(0).addClass("active");
		sideBar.find("figure .svg").removeClass("show");
		sideBar.find(".side-bar-text").removeClass("show");
		sideBar.find(".socials li a i").removeClass("show");
		phone.find(".phone-icon svg").removeClass("show");
		phone.find(".phone-number").removeClass("show");
		menuBtn.find(".menu-button.wrap").removeClass("show");
	}
	if(wScroll >= cont.eq(1).offset().top){
		dot.removeClass("active");
		dot.eq(1).addClass("active");
		sideBar.find("figure .svg").addClass("show");
		sideBar.find(".side-bar-text").addClass("show");
		sideBar.find(".socials li a i").addClass("show");
		phone.find(".phone-icon svg").addClass("show");
		phone.find(".phone-number").addClass("show");
		menuBtn.find(".menu-button.wrap").addClass("show");
	}
	if(wScroll >= cont.eq(2).offset().top){
		dot.removeClass("active");
		dot.eq(2).addClass("active");
		sideBar.find("figure .svg").removeClass("show");
		sideBar.find(".side-bar-text").removeClass("show");
		sideBar.find(".socials li a i").removeClass("show");
		phone.find(".phone-icon svg").removeClass("show");
		phone.find(".phone-number").removeClass("show");
		menuBtn.find(".menu-button.wrap").removeClass("show");
	}
	if(wScroll >= cont.eq(3).offset().top){
		dot.removeClass("active");
		dot.eq(3).addClass("active");
	}
	if(wScroll >= cont.eq(4).offset().top){
		dot.removeClass("active");
		dot.eq(4).addClass("active");
	}
	if(wScroll >= cont.eq(5).offset().top){
		dot.removeClass("active");
		dot.eq(5).addClass("active");
	}
	if(wScroll >= cont.eq(2).offset().top - $(window).height()/2 ){
		cont.eq(2).find(".sec3").addClass("show");
	}
});



