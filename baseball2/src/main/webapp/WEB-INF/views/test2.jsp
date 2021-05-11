<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>TEST BOARD</title>
<!-- css -->
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/style4.css">
<link rel="stylesheet" href="assets/css/font-awesome.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/slick-theme.css">
<link rel="stylesheet" href="assets/css/glitch.css">
<link rel="stylesheet" href="assets/css/img_glitch.css">
<link rel="stylesheet" href="assets/css/modal.css">
<link rel="stylesheet" href="assets/css/p17_style4.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
     function goForm1(){
    	// ??����������� ��û(/mvc)
    	 location.href="<c:url value='/board.do'/>";
     } 
  </script>

<!-- font -->
<link
	href="https://fonts.googleapis.com/css?family=Teko:300,400,500,600,700"
	rel="stylesheet">
<!-- font-family: 'Teko', sans-serif; -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,900"
	rel="stylesheet">
<!-- font-family: 'Roboto', sans-serif; -->
<link href="https://fonts.googleapis.com/css?family=Sacramento"
	rel="stylesheet">
<!-- ���α۾� font-family: 'Sacramento', cursive; -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">

</head>
<body>
	<!-- Testing -->

	<!-- ����� ���� -->
	<!-- 	<div class="progress" id="progress">
		<span class="progress-bar"></span> <span class="progress-text">0%</span>
	</div> -->
	<!--     <div class="progress2"></div> -->
	<!-- //progress -->

	<!-- //menu-wrapper -->
		<div class="menu-wrapper">
		<button class="menu-button wrap">
			<span class="menu-button-item line"> <svg viewBox="0 0 80 80"
					width="100%" height="100%">
					<path class="est0"
						d="M65.4 14.8L40.1 4.3 14.8 14.8 4.3 40.2l10.5 25.3L40.2 76l25.3-10.5L76 40.2 65.4 14.8zm-1.1 49.5l-24.2 10-24.1-10L6 40.1l10-24.2L40.1 6l24.2 10 10 24.2-10 24.1z"></path>
				</svg>
			</span> <span class="menu-button-item dots"> <svg viewBox="0 0 80 80"
					width="100%" height="100%">	
					<circle class="dst0" cx="40.1" cy="5.2" r="1.9"></circle>
					<circle class="dst0" cx="40.1" cy="75.1" r="1.9"></circle>
					<g>
						<circle class="dst0" cx="5.1" cy="40.1" r="1.9"></circle>
						<circle class="dst0" cx="75.1" cy="40.1" r="1.9"></circle>
					</g>
				</svg>
			</span> <span class="menu-button-item base"> <svg viewBox="0 0 80 80"
					id="burger-base" width="100%" height="100%">
					<path class="cst0"
						d="M61.3 18.9l-21.2-8.8-21.2 8.8-8.8 21.3 8.8 21.2 21.3 8.7 21.2-8.8 8.7-21.2z"></path>
				</svg>
			</span>
			<div class="icon-wrap">
				<div class="icon"></div>
			</div>
		</button>
	</div>
	
	<div class="side-bar-hover">
		<div class="hover-box">
			<em><span>J</span><span>U</span><span>-</span><span>H</span><span>Y</span><span>E</span><span>O</span><span>N</span><span>'</span><span>S</span><br>
				<span>P</span><span>O</span><span>R</span><span>T</span><span>F</span><span>O</span><span>L</span><span>I</span><span>O</span></em>
			<p>welcome to visit my portfolio</p>
			<p>Thank you for view my work</p>
			<canvas id="drawing_canvas"></canvas>
		</div>
	</div>
	<!-- //side-bar-hover -->

	<div class="side-bar">
		<div class="sb-svg sb-pd">
			<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 56.2 90"
				id="flag" width="100%" height="100%">
                <path
					d="M47.9 0h8.3v90h-8.3zM31.9 0h8.3v90h-8.3zM0 42.8h8.3V90H0zM16 42.8h8.3V90H16zM0 35.2h24.2V0H0v35.2zm13.6-14.3l-4 5.5v-6.8l-6.4-2.1 6.4-2.1V8.6l4 5.5L20 12l-4 5.5 4 5.5-6.4-2.1z"></path>
                <path d="M4.1 6.5h16V29h-16z"></path>
            </svg>
		</div>
		<div class="sb-txt sb-pd">
			<span>WELCOME TO MY PORTFOLIO</span>
		</div>
		<div class="sb-sns sb-pd">
			<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> <a
				href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> <a
				href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
		</div>
	</div>

	<!-- //contact -->

	
	<!-- //side-bar -->

	<!-- phone ���� -->
	<!-- 	<div class="phone">
		<div class="phone-icon">
			<svg xmlns="http://www.w3.org/2000/svg" fill="#fff"
				viewBox="0 0 24 24" id="phone" width="20px" height="20px">
				<path
					d="M6.62 10.79c1.44 2.83 3.76 5.14 6.59 6.59l2.2-2.2c.27-.27.67-.36 1.02-.24 1.12.37 2.33.57 3.57.57.55 0 1 .45 1 1V20c0 .55-.45 1-1 1-9.39 0-17-7.61-17-17 0-.55.45-1 1-1h3.5c.55 0 1 .45 1 1 0 1.25.2 2.45.57 3.57.11.35.03.74-.25 1.02l-2.2 2.2z"></path></svg>
		</div>
		<div class="phone-number">
			<span>phone number<br>+82 10-3192-7793
			</span>
		</div>
		<div class="email">
			<span>E-mail<br>wngus3277@<br>naver.com
			</span>
		</div>
	</div> -->
	<!-- //phone -->

	<div class="menu-inner">
		<div class="box-wrap">
			<div class="box1 right">
				<div class="overlay right"></div>
			</div>
			<div class="box2 right">
				<div class="overlay right"></div>
			</div>
			<div class="box2 right">
				<div class="overlay right"></div>
			</div>
			<div class="box1 right">
				<div class="overlay right"></div>
			</div>
			<div class="box1 left">
				<div class="overlay left"></div>
			</div>
			<div class="box2 left">
				<div class="overlay left"></div>
			</div>
			<div class="box2 left">
				<div class="overlay left"></div>
			</div>
			<div class="box1 left">
				<div class="overlay left"></div>
			</div>

			<div class="menu">
				<div class="o_container">
					<div class="menu-left">
						<a href="http://kimju7.dothome.co.kr" target="_blank"><span>kimju7.dothome.co.kr</span><i
							class="fa fa-share" aria-hidden="true"></i></a><br> <a
							href="http://kimju7.dothome.co.kr/portfolio/index4.html"
							target="_blank"><span>kimju7.dothome.co.kr/portfolio/index4.html</span><i
							class="fa fa-share" aria-hidden="true"></i></a>
					</div>
					<div class="menu-right">
						<a href="./index4.html#section2"><span>INTRO</span></a><br> <a
							href="./index4.html#section3"><span>CODING</span></a><br> <a
							href="./index4.html#section4"><span>ANIMATION</span></a><br>
						<a href="./index4.html#section5"><span>CONTACT</span></a><br>
						<!-- 	 <a href="#section5"><span>BOARD</span></a><br> -->
						<a href="test2.do" target="_blank"><span>BOARD</span></a><br>
						<a href="./index4.html#section5"><span>LOGIN</span></a><br>
						<!-- <a href="https://codepen.io/wngus3277" target="_blank"><span>CODEPEN</span></a> -->


						<!-- 	    		</div> -->
					</div>
				</div>
			</div>
		</div>
	</div>
		<!-- //menu-inner -->
		<!-- //�Խ��� board -->
		<div class="o_container">
	
			<div class="sec2">
				<div class="about show">
	
					<div class=contact-form>
						<h2 style="font-size: 50px; color: #000; font-weight: bold;">�Խù�
							���</h2>
						<form action="<c:url value='/boardInsert.do'/>" method="post">
							<!--  <label> -->
							<div class="input-wrap">
								<input type="text" id="title" name="title" placeholder="����">
							</div>
							<!-- </label> -->
							<div class="input-wrap">
								<input type="text" id="writer" name="writer" placeholder="�ۼ���">
							</div>
							<div class="input-wrap">
								<textarea id="message" name="contents" placeholder="����"></textarea>
							</div>
							<div class="input-wrap"></div>
							<button type="submit" class="btn" onclick="goForm1()">���</button>
						</form>
					</div>
				</div>
	
			</div>
		</div>
		<section id="contents">
			<div id="section1" style="display: none">
				<div class="background">
					<div class="background1 right">
						<div class="bg img1"></div>
						<div class="overlay right"></div>
					</div>
					<div class="background2 right">
						<div class="bg img2"></div>
						<div class="overlay right"></div>
					</div>
					<div class="background2 right">
						<div class="bg img3"></div>
						<div class="overlay right"></div>
					</div>
					<div class="background1 right">
						<div class="bg img4"></div>
						<div class="overlay right"></div>
					</div>
					<div class="background1 left">
						<div class="bg img5"></div>
						<div class="overlay left"></div>
					</div>
					<div class="background2 left">
						<div class="bg img6"></div>
						<div class="overlay left"></div>
					</div>
					<div class="background2 left">
						<div class="bg img7"></div>
						<div class="overlay left"></div>
					</div>
					<div class="background1 left">
						<div class="bg img8"></div>
						<div class="overlay left"></div>
					</div>
					<div class="background1 left">
						<div class="bg img9"></div>
						<div class="overlay left"></div>
					</div>
				</div>
				//background

				<div class="main-contents o_container">
					<div class="main-title">
						<h1>
							<span>PUBLISHER
								<div class="mask"></div>
							</span> <span>JU-HYEON'S
								<div class="mask"></div>
							</span> <span>PORTFOLIO
								<div class="mask"></div>
							</span> <span>SITE
								<div class="mask"></div>
							</span>
						</h1>
					</div>
				</div>
				//main-contents

				<div class="main-btn-wrap">
					<div class="main-btn">
						<span>SCROLL DOWN</span>
					</div>
					<div class="main-btnhover">
						<a href="#section2">SCROLL DOWN</a>
					</div>
				</div>
				//main-btn
			</div>
			<!-- //section1 -->

			<div id="section2">
				<div class="o_container"></div>
			</div>
			<!-- //section2 -->

			<div id="section3" style="display: none">
				<div class="o_container">
					<div class="sec3">

						<div class="s3-title">
							<p class="s1_tit">MY WORK</p>
							<h3 class="h3_tit">
								<span class="coding" data-text="CODING">CODING</span><br> <span
									class="project" data-text="PROJECT">PROJECT</span>
							</h3>
							<p class="p1_desc">This is my portfolio site. I am a web
								publisher.I can make various homepages using HTML, CSS,
								javascripts, and JQuery. I gained a lot of skill and experience
								while taking classes. I hope my portfolio will be pleased with
								you. Have a good time.</p>
							<p class="p2_desc">This section shows my coding ability.</p>
						</div>

						<div class="s3-cont1 cont-wrap" id="cont1">
							<div class="s3-img1 visual-middle">
								<div class="glitch gabia" id="base"></div>
								<div class="glitch gabia" id="red"></div>
								<div class="glitch gabia" id="cyan"></div>
								<div class="glitch gabia" id="transparent"></div>
							</div>
							<div class="s3-img2 visual-up">
								<div class="glitch gabia2" id="base"></div>
								<div class="glitch gabia2" id="red"></div>
								<div class="glitch gabia2" id="cyan"></div>
								<div class="glitch gabia2" id="transparent"></div>
							</div>
							<div class="s3-img3 visual-fast">
								<div class="glitch gabia3" id="base"></div>
								<div class="glitch gabia3" id="red"></div>
								<div class="glitch gabia3" id="cyan"></div>
								<div class="glitch gabia3" id="transparent"></div>
							</div>
							<div class="side-text side-right">
								<p class="s1_tit cont1">CODING1</p>
								<h3 class="h3_tit cont1">
									<span>GABIA</span><br> <span>WEB</span><br> <span>SITE</span>
								</h3>
								<p class="p1_desc cont1">This website is one of that I
									handed coding the site, gabia has passed the test css and the
									web standards test, and it has been fully implemented by
									cross-browser.</p>
								<p class="s1_tit ta_right">kimju7.dothome.co.kr</p>
								<a href="http://kimju7.dothome.co.kr/gabia/gabia5/index.html"
									target="_blank">
									<div class="s1_btn cont1">
										<p>+</p>
										<span data-text="VIEW">VIEW</span> <span data-text="MY">MY</span>
										<span data-text="WORK">WORK</span>
									</div>
								</a>
							</div>
						</div>

						<div class="s3-cont2 cont-wrap" id="cont2">
							<div class="s3-img1 visual-middle">
								<div class="glitch standard" id="base"></div>
								<div class="glitch standard" id="red"></div>
								<div class="glitch standard" id="cyan"></div>
								<div class="glitch standard" id="transparent"></div>
							</div>
							<div class="s3-img2 visual-up">
								<div class="glitch standard2" id="base"></div>
								<div class="glitch standard2" id="red"></div>
								<div class="glitch standard2" id="cyan"></div>
								<div class="glitch standard2" id="transparent"></div>
							</div>
							<div class="s3-img3 visual-fast">
								<div class="glitch standard3" id="base"></div>
								<div class="glitch standard3" id="red"></div>
								<div class="glitch standard3" id="cyan"></div>
								<div class="glitch standard3" id="transparent"></div>
							</div>
							<div class="side-text side-left">
								<p class="s1_tit cont2">CODING2</p>
								<h3 class="h3_tit cont2">
									<span>WEB</span><br> <span>STANDARD</span>
								</h3>
								<p class="p1_desc cont2">Standard for viewing the same
									results across all operating systems and all browsers. Every
									website should be free from any technology environment.
									Websites must be able to easily get all the information that's
									available to them without having to be professional.</p>
								<p class="s1_tit ta_left">kimju7.dothome.co.kr</p>
								<a href="http://kimju7.dothome.co.kr/webstandard/web/index.html"
									target="_blank">
									<div class="s1_btn cont2">
										<p>+</p>
										<span data-text="VIEW">VIEW</span> <span data-text="MY">MY</span>
										<span data-text="WORK">WORK</span>
									</div>
								</a>
							</div>
						</div>

						<div class="s3-cont3 cont-wrap" id="cont3">
							<div class="s3-img1 visual-middle">
								<div class="glitch html5" id="base"></div>
								<div class="glitch html5" id="red"></div>
								<div class="glitch html5" id="cyan"></div>
								<div class="glitch html5" id="transparent"></div>
							</div>
							<div class="s3-img2 visual-up">
								<div class="glitch html5_2" id="base"></div>
								<div class="glitch html5_2" id="red"></div>
								<div class="glitch html5_2" id="cyan"></div>
								<div class="glitch html5_2" id="transparent"></div>
							</div>
							<div class="s3-img3 visual-fast">
								<div class="glitch html5_3" id="base"></div>
								<div class="glitch html5_3" id="red"></div>
								<div class="glitch html5_3" id="cyan"></div>
								<div class="glitch html5_3" id="transparent"></div>
							</div>
							<div class="side-text side-right">
								<p class="s1_tit cont3">CODING3</p>
								<h3 class="h3_tit cont3">
									<span data-text="Responsive">RESPONSIVE</span><br> <span
										data-text="Site">SITE</span>
								</h3>
								<p class="p1_desc cont3">
									I created a Responsive site using HTML5. <br>Created a
									outliner and used the jquery slider plugin. <br>I also
									made use of mousehover. <br>It is supported from ie9, and
									the responsive is supported as well.
								</p>
								<p class="s1_tit ta_right cont3">kimju7.dothome.co.kr</p>
								<a href="http://kimju7.dothome.co.kr/html5/html5/index.html"
									target="_blank">
									<div class="s1_btn cont3">
										<p>+</p>
										<span data-text="VIEW">VIEW</span> <span data-text="MY">MY</span>
										<span data-text="WORK">WORK</span>
									</div>
								</a>
							</div>
						</div>

						<div class="s3-cont4 cont-wrap" id="cont4">
							<div class="s3-img1 visual-middle">
								<div class="glitch mobile" id="base"></div>
								<div class="glitch mobile" id="red"></div>
								<div class="glitch mobile" id="cyan"></div>
								<div class="glitch mobile" id="transparent"></div>
							</div>
							<div class="s3-img2 visual-up">
								<div class="glitch mobile2" id="base"></div>
								<div class="glitch mobile2" id="red"></div>
								<div class="glitch mobile2" id="cyan"></div>
								<div class="glitch mobile2" id="transparent"></div>
							</div>
							<div class="s3-img3 visual-fast">
								<div class="glitch mobile3" id="base"></div>
								<div class="glitch mobile3" id="red"></div>
								<div class="glitch mobile3" id="cyan"></div>
								<div class="glitch mobile3" id="transparent"></div>
							</div>
							<div class="side-text side-left">
								<p class="s1_tit cont4">CODING4</p>
								<h3 class="h3_tit cont4">
									<span data-text="Mobile">MOBILE</span><br> <span
										data-text="Coding">CODING</span>
								</h3>
								<p class="p1_desc cont4">
									Mobile coding is also possible. <br>I coded mobile web
									site 'SOONJUNGAPP'. <br>It is total of 32 pages and jquery
									such as sidemenu were actively used.
								</p>
								<p class="s1_tit ta_left cont4">kimju7.dothome.co.kr</p>
								<a href="javascript:popupOpen();" target="_blank">
									<div class="s1_btn cont4">
										<p>+</p>
										<span data-text="VIEW">VIEW</span> <span data-text="MY">MY</span>
										<span data-text="WORK">WORK</span>
									</div>
								</a>
							</div>
							<div class="s3-cont4-box">
								<div class="cont4-box">
									<img src="assets/img/box1.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box2.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box3.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box4.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box5.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box6.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box7.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box8.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box9.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box10.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box01.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box02.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box03.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box04.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box05.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box06.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box07.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box08.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box09.png" alt="mobile image">
								</div>
								<div class="cont4-box">
									<img src="assets/img/box010.png" alt="mobile image">
								</div>
							</div>
						</div>

						<div class="s3-cont5 cont-wrap" id="cont5">
							<div class="s3-img1 visual-middle">
								<div class="glitch tstory" id="base"></div>
								<div class="glitch tstory" id="red"></div>
								<div class="glitch tstory" id="cyan"></div>
								<div class="glitch tstory" id="transparent"></div>
							</div>
							<div class="s3-img2 visual-up">
								<div class="glitch tstory2" id="base"></div>
								<div class="glitch tstory2" id="red"></div>
								<div class="glitch tstory2" id="cyan"></div>
								<div class="glitch tstory2" id="transparent"></div>
							</div>
							<div class="s3-img3 visual-fast">
								<div class="glitch tstory3" id="base"></div>
								<div class="glitch tstory3" id="red"></div>
								<div class="glitch tstory3" id="cyan"></div>
								<div class="glitch tstory3" id="transparent"></div>
							</div>
							<div class="side-text side-right">
								<p class="s1_tit cont5">CODING5</p>
								<h3 class="h3_tit cont5">
									<span data-text="Mobile">TSTORY</span><br> <span
										data-text="Coding">CODING</span>
								</h3>
								<p class="p1_desc cont5">I coded and designed T-history
									blog. It explained and organized UI/UX design, UI/UX strategy,
									cultural contents planning, smart cultural contents
									development, and service operation.</p>
								<p class="s1_tit ta_right cont5">kimju7.dothome.co.kr</p>
								<a href="http://wngus-3277.tistory.com/" target="_blank">
									<div class="s1_btn cont5">
										<p>+</p>
										<span data-text="VIEW">VIEW</span> <span data-text="MY">MY</span>
										<span data-text="WORK">WORK</span>
									</div>
								</a>
							</div>
						</div>

					</div>
				</div>
			</div>
			<!-- //section3 -->

			<div id="section4" style="display: none">
				<div class="sec4">
					<div class="o_container">
						<div class="row">
							<div class="ani-title">
								<p>
									<span>H</span><span>T</span><span>M</span><span>L</span><span>5</span>
									<span>&middot;</span> <span>C</span><span>S</span><span>S</span><span>3</span>
									<span>&middot;</span> <span>J</span><span>A</span><span>V</span><span>A</span><span>S</span><span>C</span><span>R</span><span>I</span><span>P</span><span>T</span>
								</p>
								<h4>
									<span>T</span><span>H</span><span>E</span> <span>A</span><span>N</span><span>I</span><span>M</span><span>A</span><span>T</span><span>I</span><span>O</span><span>N</span>
								</h4>
							</div>

							<div class="ani-wrap clearfix">
								<div class="tit tit-left">
									TweenMax<br> <em>Animation</em>
								</div>
								<div class="desc desc-left">
									<h5>TimelineMax</h5>
									<p>
										�� ���ּ��� GSAP�� TweenMax�� �̿��� �ִϸ��̼��Դϴ�. TweenMax ��� �� TimelineMax
										����� �̿��Ͽ� ���ּ��� �ڿ������� �̵��ϵ��� ���������, <strong>translateY</strong>,
										<strong>scale</strong>, <strong>ease</strong> ȿ���� ���� ���ó�� �����̴�
										�ִϸ��̼��� �ϼ��Ͽ����ϴ�.
									</p>
								</div>
								<div class="iframe iframe-left">
									<iframe src="ani2.html" frameborder="0" scrolling="no"></iframe>
								</div>
								<a href="https://codepen.io/wngus3277/pen/VBmQVV"
									target="_blank" class="code code-left">Code View</a>
							</div>

							<div class="ani-wrap clearfix">
								<div class="tit tit-right">
									Kraken<br> <em>Animation</em>
								</div>
								<div class="desc desc-right">
									<h5>Kraken Animation</h5>
									<p>
										�� ĳ���ʹ� �������� ǥ���ϴ� �ִϸ��̼��Դϴ�. �� �ִϸ��̼��� ������ ĳ������ ��, ��, �ٸ��� <strong>animation</strong>��
										<strong>keyframes</strong>�� ����Ͽ� ����ִ� ���� ĳ������ �������� �ڿ�������
										ǥ���Ͽ����ϴ�.
									</p>
								</div>
								<div class="iframe iframe-right">
									<iframe src="ani1.html" frameborder="0" scrolling="no"></iframe>
								</div>
								<a href="https://codepen.io/wngus3277/pen/pKPNPW"
									target="_blank" class="code code-right">Code View</a>
							</div>

							<div class="ani-wrap clearfix">
								<div class="tit tit-left">
									Mouse<br> <em>Cursor Effect</em>
								</div>
								<div class="desc desc-left">
									<h5>Cursor Effect</h5>
									<p>
										�� ȿ���� TweenMax�� Javascript�� �̿��� �ִϸ��̼��Դϴ�. TweenMax ��� �� <strong>posY</strong>,
										<strong>posX</strong>, <strong> mouseX</strong>, <strong>mouseY</strong>
										���� �����ϰ� Hover me ��� �ؽ�Ʈ�� ���콺�� ��� <strong>mouseenter</strong>�޼ҵ带
										����Ͽ� ��Ƽ�갡 �ǵ��� �ϰ� ���콺�� ����� <strong>mouseleave</strong>�޼ҵ忡
										��Ƽ�갡 ���������� ǥ���Ͽ����ϴ�.
									</p>
								</div>
								<div class="iframe iframe-left">
									<iframe src="ani3.html" frameborder="0" scrolling="no"></iframe>
								</div>
								<a href="https://codepen.io/wngus3277/pen/xJoKeE"
									target="_blank" class="code code-left">Code View</a>
							</div>

							<div class="ani-wrap clearfix">
								<div class="tit tit-right">
									Mouse Hover<br> <em>Blend Effect</em>
								</div>
								<div class="desc desc-right">
									<h5>Blend Effect</h5>
									<p>
										�� ȿ���� �� �̹����� <strong>class</strong>�� �ٸ��� ���־� ���콺�� �������� �� ��
										�̹����� <strong>mix-blend-mode</strong>, <strong>filter</strong>,
										<strong>background-color</strong>���� �ٸ��� �Է��Ͽ� ǥ���Ͽ����ϴ�.
									</p>
								</div>
								<div class="iframe iframe-right">
									<iframe src="ani4.html" frameborder="0" scrolling="no"></iframe>
								</div>
								<a href="https://codepen.io/wngus3277/pen/eKvNbo"
									target="_blank" class="code code-right">Code View</a>
							</div>

							<div class="ani-wrap clearfix">
								<div class="tit tit-left">
									Mouse<br> <em>Move Image</em>
								</div>
								<div class="desc desc-left">
									<h5>Move Image</h5>
									<p>
										�� �ִϴϸ��̼��� ������ Mouse ��ư�� ���� �ٸ� �̹����� �����ϰ� <strong>hover</strong>�޼ҵ带
										�̿��Ͽ� ��ư�� �������� �� ���� �ٸ� �̹����� �����ָ� <strong>mousemove</strong>�޼ҵ忡
										<strong>pageX</strong>, <strong>pageY</strong>�� ����Ͽ� �̹����� ���콺
										��ũ���� ������� �ִϸ��̼��� �ϼ��Ͽ����ϴ�.
									</p>
								</div>
								<div class="iframe iframe-left">
									<iframe src="ani5.html" frameborder="0" scrolling="no"></iframe>
								</div>
								<a href="https://codepen.io/wngus3277/pen/pZePJY"
									target="_blank" class="code code-left">Code View</a>
							</div>

							<div class="ani-wrap clearfix">
								<div class="tit tit-right">
									SVG<br> <em>Text Animation</em>
								</div>
								<div class="desc desc-right">
									<h5>Text Animation</h5>
									<p>
										�� �ִϸ��̼��� illustrator �۾����� SVG���� �˾Ƴ��� SVG�� <strong>stroke</strong>,
										<strong>stroke-width</strong>, <strong>stroke-dasharray</strong>,
										<br> <strong>stroke-dashoffset</strong>�� �̿��Ͽ� ������ <strong>stroke</strong>��
										<strong>stroke-dasharray</strong>�ٸ��� �Է��Ͽ� �ִϸ��̼��� �ϼ��Ͽ����ϴ�.
									</p>
								</div>
								<div class="iframe iframe-right">
									<iframe src="ani6.html" frameborder="0" scrolling="no"></iframe>
								</div>
								<a href="https://codepen.io/wngus3277/pen/LBZmZy"
									target="_blank" class="code code-right">Code View</a>
							</div>

							<div class="ani-wrap clearfix">
								<div class="tit tit-left">
									Roket<br> <em>Animation</em>
								</div>
								<div class="desc desc-left">
									<h5>Roket Animation</h5>
									<p>
										�� �ִϴϸ��̼��� ������ �⺻���� <strong>animation</strong>, <strong>keyframes</strong>��
										�̿��Ͽ� �۾��� �ִϸ��̼��Դϴ�. <strong>fire-1 ~ fire-4</strong>, <strong>spark-1
											~ spark-4</strong>�� ���� ���� class�� ������ �Ҳɰ� ����ũ�� �ڿ������� ǥ���ϰ� ����� <strong>star-1
											~ star-20</strong>�� ���� ���� class�� ������ ���� ǥ���Ͽ����ϴ�. ������ ������ ���̵��� ���� <strong>translate</strong>,
										<strong>scale</strong>�� �̿��Ͽ����ϴ�.
									</p>
								</div>
								<div class="iframe iframe-left">
									<iframe src="ani7.html" frameborder="0" scrolling="no"></iframe>
								</div>
								<a href="https://codepen.io/wngus3277/pen/MXOBjp?editors=1100"
									target="_blank" class="code code-left"> <span>Code
										View</span>
								</a>
							</div>

							<div class="ani-wrap clearfix">
								<div class="tit tit-right">
									3D<br> <em>Cube Animation</em>
								</div>
								<div class="desc desc-right">
									<h5>3D Cube Animation</h5>
									<p>
										�� �ִϸ��̼��� 6���� �ٸ� ���� <strong>transform-origin</strong>, <strong>rotate</strong>,
										<strong>translate</strong>, <strong>animation</strong>, <strong>scale</strong>����
										�ٸ��� �Է��Ͽ� �ڿ������� �����̴� Cube Animation�� �ϼ��Ͽ����ϴ�.
									</p>
								</div>
								<div class="iframe iframe-right">
									<iframe src="ani8.html" frameborder="0" scrolling="no"></iframe>
								</div>
								<a href="https://codepen.io/wngus3277/pen/GGvVMy"
									target="_blank" class="code code-right">Code View</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //section4 -->

			<div id="section5" style="display: none">
				<div class="o_container">
					<div class="sec5">
						<div class="sec5-title">
							<span>CONTACT BY</span> <span>PUBLISHER</span>
						</div>
						<div class="contact-img">
							<a
								href="https://map.naver.com/?query=%EA%B2%BD%EA%B8%B0%EB%8F%84+%EC%84%B1%EB%82%A8%EC%8B%9C+%EB%B6%84%EB%8B%B9%EA%B5%AC+%EC%A0%95%EC%9E%90%EC%9D%BC%EB%A1%9C72"
								target="_blank"><img src="assets/img/contact.png" alt="map"></a>
						</div>
						<div class="contactMe-left">
							<span>72 Bundang-gu, Seongnam-si, Gyeonggi</span>
						</div>
						<div class="contactMe-right">
							<div class="home">
								<strong>HOME</strong><br> <strong>031-5569-8877</strong>
							</div>
							<div class="tell">
								<strong>TELL ME</strong><br> <strong>+82
									10-3192-7793</strong>
							</div>
							<div class="email">
								<strong>E-MAIL US</strong><br> <strong>wngus3277@naver.com</strong>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //section5 -->




		</section>

		<script src="assets/js/jquery-1.12.4.js"></script>
		<script src="assets/js/jquery-ui-1.12.1.min.js"></script>
		<script src="assets/js/imagesloaded.pkgd.min.js"></script>
		<script src="assets/js/modernizr.min.js"></script>
		<script src="assets/js/slick.js"></script>
		<script src="assets/js/slick.min.js"></script>
		<script src="assets/js/easypiechart.min.js"></script>
		<script src="assets/js/custom4.js"></script>
		<script>
			$(function() {
				imagesProgress(); //�̹��� �ε� 
				counter(); //��ų ī����

				//section2 img ��ũ�ѿ� ���� �̹��� ������
				$(window).scroll(
						function() {
							var wScroll = $(this).scrollTop();
							$(".about .img img").css(
									{
										'transform' : 'translatey(-' + wScroll
												/ 2 + 'px) scale(3)'
									});
							// $(".menu-right").css({ 'transform':'translatey(-'+ wScroll/4 +'px)' });
						});
			});

			var cont = $("#contents > div");
			var sideBar = $(".side-bar");
			var phone = $(".phone");
			var menuBtn = $(".menu-wrapper");

			$(".side-bar .sb-svg").click(function() {
				$("body").toggleClass("scroll");
				$(".side-bar-hover").toggleClass("show");
				sideBar.find(".sb-svg").toggleClass("show2");
				sideBar.find(".sb-txt").toggleClass("show2");
				sideBar.find(".sb-sns i").toggleClass("show2");
				phone.find(".phone-icon svg").toggleClass("show2");
				phone.find(".phone-number").toggleClass("show2");
				menuBtn.find(".menu-button.wrap").toggleClass("show2");
			});

			//��ũ�ѽ� #section3 �̹��� ������ ��ȭ
			$(window).scroll(function() {
				var wScroll = $(this).scrollTop();
				var offset = (wScroll - $(window).height()) * 0.1;

				$(".visual-middle").css({
					'transform' : 'translateY(-' + offset + 'px)'
				});
				$(".visual-up").css({
					'transform' : 'translateY(-' + offset * 4 + 'px)'
				});
				$(".visual-fast").css({
					'transform' : 'translateY(-' + offset * 8 + 'px)'
				});
			});
		</script>
</body>
</html>