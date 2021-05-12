<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="kr.smhrd.model.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>프로젝트</title>

	<!-- css -->
	<link rel="stylesheet" href="assets/css/reset.css">
	<link rel="stylesheet" href="assets/css/style4.css">
	<link rel="stylesheet" href="assets/css/font-awesome.css">
	<link rel="stylesheet" href="assets/css/animate.css" >
	<link rel="stylesheet" href="assets/css/slick.css" >
	<link rel="stylesheet" href="assets/css/slick-theme.css" >
	<link rel="stylesheet" href="assets/css/glitch.css" >
	<link rel="stylesheet" href="assets/css/img_glitch.css" >
	<link rel="stylesheet" href="assets/css/modal.css" >
	<link rel="stylesheet" href="assets/css/p17_style4.css">

	<!-- font -->
	<link href="https://fonts.googleapis.com/css?family=Teko:300,400,500,600,700" rel="stylesheet">
	<!-- font-family: 'Teko', sans-serif; -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
	<!-- font-family: 'Roboto', sans-serif; -->
	<link href="https://fonts.googleapis.com/css?family=Sacramento" rel="stylesheet">
	<!-- 싸인글씨 font-family: 'Sacramento', cursive; -->
	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
	
	<style type="text/css">
		/* 나눔스퀘어로인한 비밀번호 안보이는 문제 해결방식  */
		input[type=password] {
	        font-family: "나눔스퀘어 아닐때 쓸 글꼴";
	        
	        &::placeholder {
	        	font-family: "NanumSquare";
	        }
	    }
	    
	    /* 회원가입 디자인 */
		div.replyModal01 { position:relative; z-index:1; display: none; }
		div.replyModal02 { position:relative; z-index:1; display: none; }
		div.modalBackground { position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0, 0, 0, 0.8); z-index:-1; }
		div.modalContent { position:fixed; top:20%; left:calc(50% - 250px); width:500px; height:550px; padding:20px 10px; background:#fff; border:2px solid #666; }
		div.modalContent table { position: relative; top: 50px; }
		div.modalContent th { font-size: 20px; border-spacing:0px 0px; border-bottom: 1px solid #1B456B; border-top: 1px solid #1B456B; padding-top: 10px; padding-bottom: 10px;}
		div.modalContent th.text-tg-join { text-align: right; }
		div.modalContent input { width: 100%; border: 0; font-size: 20px;}
		div.modalContent button { font-size:20px; padding:5px 10px; margin:10px 0; background:#baadad; border:1px solid #ccc; }
		div.modalContent button.modal_cancel { margin-left:20px; }
		div.modalContent button.idchecksubmit { position: relative; background-color: #f1f1f1; font-size: 16px; padding: 10px 20px;  cursor: pointer;  border-radius: 5px;  text-align: center; margin:0px 0; }
		
		button.boardselect {font-size:15px; padding:5px 10px; margin:10px 0; background:#baadad;}
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- 로그인 스크립트 -->
	<script type="text/javascript">
		//로그인 실패시 동작부
		$(document).ready(function(){
			<c:if test="${! empty msg}">
				alert("${msg}");
				<c:remove var='msg' scope='session'/> 
			</c:if>    	 
		});
		//내글보기 페이지 전환
		$(document).ready(function(){
			<c:if test="${! empty page2}">
				location.href="#section2";
				<c:remove var='page2' scope='session'/> 
			</c:if>    	 
		});
		//로그인 미기입부 확인
		function check(){
			if($('#id').val()==''){
				alert("아이디를 입력하세요.");
				return false;
			}
			if($('#pw').val()==''){
				alert("패스워드를 입력하세요.");
				return false;
			}
			return true;
		}
		//회원가입 검사
		function idchtr(){
		    if(idck==0){
		        alert('아이디 중복체크를 해주세요');
		        return false;
		    }
		    if($('#userid').val()==''){
				alert("패스워드를 입력하세요.");
				return false;
			}
		    if($('#userpw').val()==''){
				alert("패스워드를 입력하세요.");
				return false;
			}
			return true;
		}
		//로그아웃
		function out(){
			location.href="<c:url value='/memberLogout.do'/>";
		}
		/* 회원가입 활성화 버튼 */
		function signUp(){
			$(".replyModal01").attr("style", "display:block;");
		}
		//회원정보 수정 페이지
		function contentpg(){
			location.href="<c:url value='/memberContent.do'/>?id=${id}";
		}
		//회원 탈퇴 페이지 활성화 버튼
		function memderdel(){
			$(".replyModal02").attr("style", "display:block;");
		}
		//활성화 페이지 닫기
		function pageclose(){
			$(".replyModal01").attr("style", "display:none;");
			$(".replyModal02").attr("style", "display:none;");
		}
		//개인 목차 전환
		function memListView(){
			location.href="<c:url value='/memberMyList.do'/>?writer="+(writer="${id}");
		}
		//게시물작성 페이지 이동
		function goForm(){
			location.href="<c:url value='/boardRegister.do'/>";
		} 
	</script> 

</head>
<body>
	
	<!-- 첫 페이지 로딩 부분 -->
	<div class="progress" id="progress"> 
		<span class="progress-bar"></span>
		<span class="progress-text">0%</span>
	</div>
<!--     <div class="progress2"></div> -->
    <!-- //progress -->
    
    <!-- 화면 분할선 -->
    <div id="line">
        <div class="line sline"></div>
        <div class="line mline"></div>
        <div class="line mline"></div>
        <div class="line sline"></div>
        <div class="hline"></div>
    </div>
    <!-- //line -->

	<!-- 왼쪽 상단 클릭시 보이는 부분 -->
    <div class="side-bar-hover">
	    	<div class="hover-box">
	    		<em>
	    			<span>O</span>
	    			<span>H</span>
	    			<span>!</span>
	    			<span>-</span>
	    			<span>Y</span>
	    			<span>E</span>
	    			<span>S</span><br>
	    		</em>
	    		<p>날씨를 기반으로 야구의 경기력을  학습시킨</p>
	    		<p>딥러닝 모델을 통해 경기 결과를 예측해 드립니다 </p>
	    		<canvas id="drawing_canvas"></canvas>
	    	</div>
    </div>
    <!-- //side-bar-hover -->
    
    <!-- 첫화면 왼쪽 세로글 -->
    <div class="side-bar">
        <div class="sb-svg sb-pd">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 56.2 90" id="flag" width="100%" height="100%">
                <path d="M47.9 0h8.3v90h-8.3zM31.9 0h8.3v90h-8.3zM0 42.8h8.3V90H0zM16 42.8h8.3V90H16zM0 35.2h24.2V0H0v35.2zm13.6-14.3l-4 5.5v-6.8l-6.4-2.1 6.4-2.1V8.6l4 5.5L20 12l-4 5.5 4 5.5-6.4-2.1z"></path>
                <path d="M4.1 6.5h16V29h-16z"></path>
            </svg>
        </div>
        <div class="sb-txt sb-pd">
            <span>Welcome To Our Project</span>
        </div>
        <div class="sb-sns sb-pd">
            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
        </div>
    </div>
    <!-- //side-bar -->

	<!-- 오른쪽 상단 -->
    <div class="phone">
		<div class="phone-number" >
			<span></span><br>
			
			<!-- 로그인 섹터 -->
			<div class="panel-heading">
			<c:if test="${id=='' || id==null}"> 
				<span style="font-size: 35px">LOGIN<br></span>
				<form class="form-inline" action="<c:url value='/memberLogin.do'/>" method="post">
					<div class="form-group">
						<label for="user_id">ID:</label><br>
						<input type="text" class="form-control" id="id" name="id">
					</div>
					<div class="form-group">
						<label for="pw">PW:</label><br>
						<input type="password" class="form-control" id="pw" name="pw">
					</div>
					<div class="email">
						<button type="submit" class="btn btn-default" onclick="return check()">로그인</button>
						<button style="margin-left: 20px" type="button" class="singup" onclick="signUp()">회원가입</button>
					</div>
				</form>
			</c:if>
			<!-- 로그인 성공 시 활성화 -->
			<c:if test="${id!='' && id!=null}">
				<div class="form-group">
					<span style="font-size: 35px">MEMBER<br></span>
					<p><strong>${name}</strong>님 <br>환영합니다.</p>
					<br>
					<button style="position: absolute; right: 5px;" type="button" class="btn btn-default" onclick="out()">로그아웃</button>
					<br>
				</div> 
				<div class="email">
					<span style="position: absolute; right: 5px;">개인정보 관리</span>
					<br>
					<button style="position: absolute; right: 5px;" type="button" class="btn btn-default" onclick="contentpg()">회원정보 수정</button>
					<br>
					<button style="position: absolute; right: 5px;" type="button" class="btn btn-default" onclick="memderdel()">회원 탈퇴</button>
					<br>
				</div>
			</c:if>    
			</div>
		</div>
		
	</div>
	<!-- //phone -->

	<!-- 우측버튼 -->
	<div class="menu-wrapper">
		<button class="menu-button wrap">
			<span class="menu-button-item line">
				<svg viewBox="0 0 80 80" width="100%" height="100%">
					<path class="est0" d="M65.4 14.8L40.1 4.3 14.8 14.8 4.3 40.2l10.5 25.3L40.2 76l25.3-10.5L76 40.2 65.4 14.8zm-1.1 49.5l-24.2 10-24.1-10L6 40.1l10-24.2L40.1 6l24.2 10 10 24.2-10 24.1z"></path>
				</svg>
			</span>
			<span class="menu-button-item dots">
				<svg viewBox="0 0 80 80" width="100%" height="100%">	
					<circle class="dst0" cx="40.1" cy="5.2" r="1.9"></circle>
					<circle class="dst0" cx="40.1" cy="75.1" r="1.9"></circle>
					<g>
						<circle class="dst0" cx="5.1" cy="40.1" r="1.9"></circle>
						<circle class="dst0" cx="75.1" cy="40.1" r="1.9"></circle>
					</g>
				</svg>
			</span>
			<span class="menu-button-item base">
				<svg viewBox="0 0 80 80" id="burger-base" width="100%" height="100%">
					<path class="cst0" d="M61.3 18.9l-21.2-8.8-21.2 8.8-8.8 21.3 8.8 21.2 21.3 8.7 21.2-8.8 8.7-21.2z"></path>
				</svg>
			</span>
			<div class="icon-wrap">
			   <div class="icon"></div>
			</div> 
		</button>
	</div>
	<!-- //menu-wrapper -->

	<!-- 버튼 내부 -->
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
		    		<a href="" target="_blank"><span>링크 없음 지울 것</span><i class="fa fa-share" aria-hidden="true"></i></a><br>
		    		<a href="" target="_blank"><span>링크 없음 지울 것</span><i class="fa fa-share" aria-hidden="true"></i></a>
	    		</div>
	    		<!-- 클릭시 이동하는 부분 -->
	    		<div class="menu-right">
						<a href="#section1"><span>INTRO</span></a><br> 
						<a href="./index4.html#section3"><span>CODING</span></a><br> 
						<a href="./index4.html#section4"><span>ANIMATION</span></a><br>
						<a href="./index4.html#section5"><span>CONTACT</span></a><br>
						<!-- 	 <a href="#section5"><span>BOARD</span></a><br> -->
						<a href="#section2"><span>BOARD</span></a><br>
						<!-- <a href="https://codepen.io/wngus3277" target="_blank"><span>CODEPEN</span></a> -->


						<!-- 	    		</div> -->
				</div>
		    </div>
		</div>
        </div>
	</div>
	<!-- //menu-inner -->

	<!-- 문단 전체 -->
	<section id="contents">
		<!-- 첫 페이지 -->
	    <div id="section1">
	    	<!-- 배경 등장 방법 -->
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
            </div>
            <!-- //background -->

			<!-- 첫페이지 왼쪽 글 -->
            <div class="main-contents o_container">
	            <div class="main-title">
	                <h1>
	                    <span>Baseball<div class="mask"></div></span>
	                    <span>Weather<div class="mask"></div></span>
	                    <span>Deep learning<div class="mask"></div></span>
	                    <span>SITE<div class="mask"></div></span>  
	                </h1>
	            </div>
            </div>
            <!-- //main-contents -->

            <div class="main-btn-wrap">
            	<div class="main-btn">
            		<span>SCROLL DOWN</span>
            	</div>
				<div class="main-btnhover">
					<a href="#section2">SCROLL DOWN</a>
				</div>
			</div>
			<!-- //main-btn -->
	    </div>
		<!-- //section1 -->

		<!-- 두번째 페이지 -->
		<div id="section2">
			<div class="o_container">
				<div class="sec2">
					<div class="about show">

						
						<div class="board_list">
							<h2>게시물 목록</h2>
							<!-- 게시판 board -->

							<table class="table table-hover table-bordered">
								<tr>
									<td>게시물번호</td>
									<td>제목</td>
									<td>조회수</td>
									<td>등록자</td>
									<td>등록일</td>
									<td>상세보기</td>
								</tr>
								<c:forEach var="vo" items="${list}">
									<tr>
										<td>${vo.num}</td>
										<td>${vo.title}</td>
										<td>${vo.cnt}</td>
										<td>${vo.writer}</td>
										<td>${vo.send_date}</td>
										<td>
											<a href="<c:url value='/boardContent.do'/>?num=${vo.num}">내용 보기  </a>
											<c:if test="${id eq vo.writer}">
											<a href="<c:url value='/boardDelete.do'/>?num=${vo.num}">/ 삭제</a>
											</c:if>
										</td>
									</tr>
								</c:forEach>

								
								<c:if test="${id!='' && id!=null}">
								<tr id="button">
									<td colspan="6" align="right"><input type="button" value="글쓰기" class="btn btn-primary" onclick="goForm()" /></td>
								</tr>
								</c:if>
							</table>
						</div>
						
						
					</div>
					<c:if test="${id!='' && id!=null}">
					<div>
						<form action="<c:url value='/boardList.do'/>">
							<button type="submit" class="boardselect" >전체 글</button>
						</form>
						<button type="submit" class="boardselect" onclick="memListView()">작성 글</button>
					</div>
					</c:if>
				</div>
			</div>
		</div>
	    <!-- //section2 -->
	    
		
		<div id="section3">
	    	<div class="o_container">
	            <div class="sec3">

	                <div class="s3-title">
						<p class="s1_tit">MY WORK</p>
						<h3 class="h3_tit">
							<span class="coding" data-text="CODING">CODING</span><br><span class="project" data-text="PROJECT">PROJECT</span>
						</h3>
						<p class="p1_desc">This is my portfolio site. I am a web publisher.I can make various homepages using HTML, CSS, javascripts, and JQuery. I gained a lot of skill and experience while taking classes. I hope my portfolio will be pleased with you. Have a good time.</p>
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
								<span>GABIA</span><br><span>WEB</span><br><span>SITE</span>
							</h3>
							<p class="p1_desc cont1">This website is one of that I handed coding the site, gabia has passed the test css and the web standards test, and it has been fully implemented by cross-browser.</p>
							<p class="s1_tit ta_right">kimju7.dothome.co.kr</p>
							<a href="http://kimju7.dothome.co.kr/gabia/gabia5/index.html" target="_blank">
								<div class="s1_btn cont1">
									<p>+</p> 
									<span data-text="VIEW">VIEW</span> <span data-text="MY">MY</span> <span data-text="WORK">WORK</span>
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
								<span>WEB</span><br><span>STANDARD</span>
							</h3>
							<p class="p1_desc cont2">Standard for viewing the same results across all operating systems and all browsers. Every website should be free from any technology environment. Websites must be able to easily get all the information that's available to them without having to be professional.</p>
							<p class="s1_tit ta_left">kimju7.dothome.co.kr</p>
							<a href="http://kimju7.dothome.co.kr/webstandard/web/index.html" target="_blank">
								<div class="s1_btn cont2">
									<p>+</p> 
									<span data-text="VIEW">VIEW</span> <span data-text="MY">MY</span> <span data-text="WORK">WORK</span>
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
								<span data-text="Responsive">RESPONSIVE</span><br><span data-text="Site">SITE</span>
							</h3>
							<p class="p1_desc cont3">I created a Responsive site using HTML5. <br>Created a outliner and used the jquery slider plugin. <br>I also made use of mousehover. <br>It is supported from ie9, and the responsive is supported as well.</p>
							<p class="s1_tit ta_right cont3">kimju7.dothome.co.kr</p>
							<a href="http://kimju7.dothome.co.kr/html5/html5/index.html" target="_blank">
								<div class="s1_btn cont3">
									<p>+</p> 
									<span data-text="VIEW">VIEW</span> <span data-text="MY">MY</span> <span data-text="WORK">WORK</span>
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
								<span data-text="Mobile">MOBILE</span><br><span data-text="Coding">CODING</span>
							</h3>
							<p class="p1_desc cont4">Mobile coding is also possible. <br>I coded mobile web site 'SOONJUNGAPP'. <br>It is total of 32 pages and jquery such as sidemenu were actively used.</p>
							<p class="s1_tit ta_left cont4">kimju7.dothome.co.kr</p>
							<a href="javascript:popupOpen();" target="_blank">
								<div class="s1_btn cont4">
									<p>+</p> 
									<span data-text="VIEW">VIEW</span> <span data-text="MY">MY</span> <span data-text="WORK">WORK</span>
								</div>
							</a>
						</div>
						<div class="s3-cont4-box">
							<div class="cont4-box"><img src="assets/img/box1.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box2.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box3.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box4.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box5.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box6.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box7.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box8.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box9.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box10.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box01.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box02.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box03.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box04.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box05.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box06.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box07.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box08.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box09.png" alt="mobile image"></div>
							<div class="cont4-box"><img src="assets/img/box010.png" alt="mobile image"></div>
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
								<span data-text="Mobile">TSTORY</span><br><span data-text="Coding">CODING</span>
							</h3>
							<p class="p1_desc cont5">I coded and designed T-history blog. It explained and organized UI/UX design, UI/UX strategy, cultural contents planning, smart cultural contents development, and service operation.</p>
							<p class="s1_tit ta_right cont5">kimju7.dothome.co.kr</p>
							<a href="http://wngus-3277.tistory.com/" target="_blank">
								<div class="s1_btn cont5">
									<p>+</p> 
								</div>
							</a>
						</div>
					</div>

	            </div>
	        </div>
	    </div>
	    <!-- //section3 -->

	    <div id="section4">
	    	<div class="sec4">
                <div class="o_container">
                    <div class="row">
                        <div class="ani-title">
                            <p>
                            	<span>H</span><span>T</span><span>M</span><span>L</span><span>5</span> <span>&middot;</span> <span>C</span><span>S</span><span>S</span><span>3</span> <span>&middot;</span> <span>J</span><span>A</span><span>V</span><span>A</span><span>S</span><span>C</span><span>R</span><span>I</span><span>P</span><span>T</span>
                            </p>
                            <h4>
                            	<span>T</span><span>H</span><span>E</span> <span>A</span><span>N</span><span>I</span><span>M</span><span>A</span><span>T</span><span>I</span><span>O</span><span>N</span>
                            </h4>
                        </div>

                        <div class="ani-wrap clearfix">
                            <div class="tit tit-left">TweenMax<br><em>Animation</em></div>
                            <div class="desc desc-left">
                                <h5>TimelineMax</h5>
                                <p>이 우주선은 GSAP의 TweenMax를 이용한 애니메이션입니다. TweenMax 기능 중 TimelineMax 기능을 이용하여 우주선이 자연스럽게 이동하도록 만들었으며, <strong>translateY</strong>, <strong>scale</strong>, <strong>ease</strong> 효과를 통해 사실처럼 움직이는 애니메이션을 완성하였습니다.</p>
                            </div>
                            <div class="iframe iframe-left"><iframe src="subhtml/ani2.html" frameborder="0" scrolling="no"></iframe></div>
                            <a href="https://codepen.io/wngus3277/pen/VBmQVV" target="_blank" class="code code-left">Code View</a>
                        </div>

                        <div class="ani-wrap clearfix">
                            <div class="tit tit-right">Kraken<br><em>Animation</em></div>
                            <div class="desc desc-right">
                                <h5>Kraken Animation</h5>
                                <p>이 캐릭터는 움직임을 표현하는 애니메이션입니다. 이 애니메이션은 물방울과 캐릭터의 눈, 입, 다리를 <strong>animation</strong>과 <strong>keyframes</strong>을 사용하여 살아있는 듯한 캐릭터의 움직임을 자연스럽게 표현하였습니다.</p>
                            </div>
                            <div class="iframe iframe-right"><iframe src="subhtml/ani1.html" frameborder="0" scrolling="no"></iframe></div>
                            <a href="https://codepen.io/wngus3277/pen/pKPNPW" target="_blank" class="code code-right">Code View</a>
                        </div>

                        <div class="ani-wrap clearfix">
                            <div class="tit tit-left">Mouse<br><em>Cursor Effect</em></div>
                            <div class="desc desc-left">
                                <h5>Cursor Effect</h5>
                                <p>이 효과는 TweenMax와 Javascript를 이용한 애니메이션입니다. TweenMax 기능 중 <strong>posY</strong>, <strong>posX</strong>, <strong>	mouseX</strong>, <strong>mouseY</strong> 값을 설정하고 Hover me 라는 텍스트에 마우스를 대면 <strong>mouseenter</strong>메소드를 사용하여 엑티브가 되도록 하고 마우스가 벗어나면 <strong>mouseleave</strong>메소드에 엑티브가 없어지도록 표현하였습니다.</p>
                            </div>
                            <div class="iframe iframe-left"><iframe src="subhtml/ani3.html" frameborder="0" scrolling="no"></iframe></div>
                            <a href="https://codepen.io/wngus3277/pen/xJoKeE" target="_blank" class="code code-left">Code View</a>
                        </div>

                        <div class="ani-wrap clearfix">
                            <div class="tit tit-right">Mouse Hover<br><em>Blend Effect</em></div>
                            <div class="desc desc-right">
                                <h5>Blend Effect</h5>
                                <p>이 효과는 각 이미지의 <strong>class</strong>를 다르게 해주어 마우스를 오버했을 때 각 이미지의 <strong>mix-blend-mode</strong>, <strong>filter</strong>, <strong>background-color</strong>값을 다르게 입력하여 표현하였습니다.</p>
                            </div>
                            <div class="iframe iframe-right"><iframe src="subhtml/ani4.html" frameborder="0" scrolling="no"></iframe></div>
                            <a href="https://codepen.io/wngus3277/pen/eKvNbo" target="_blank" class="code code-right">Code View</a>
                        </div>

                        <div class="ani-wrap clearfix">
                            <div class="tit tit-left">Mouse<br><em>Move Image</em></div>
                            <div class="desc desc-left">
                                <h5>Move Image</h5>
                                <p>이 애니니메이션은 각각의 Mouse 버튼에 각기 다른 이미지를 설정하고 <strong>hover</strong>메소드를 이용하여 버튼에 오버했을 때 각기 다른 이미지를 보여주며 <strong>mousemove</strong>메소드에 <strong>pageX</strong>, <strong>pageY</strong>를 사용하여 이미지가 마우스 스크롤을 따라오는 애니메이션을 완성하였습니다.</p>
                            </div>
                            <div class="iframe iframe-left"><iframe src="subhtml/ani5.html" frameborder="0" scrolling="no"></iframe></div>
                            <a href="https://codepen.io/wngus3277/pen/pZePJY" target="_blank" class="code code-left">Code View</a>
                        </div>

                        <div class="ani-wrap clearfix">
                            <div class="tit tit-right">SVG<br><em>Text Animation</em></div>
                            <div class="desc desc-right">
                                <h5>Text Animation</h5>
                                <p>이 애니메이션은 illustrator 작업으로 SVG값을 알아내어 SVG에 <strong>stroke</strong>, <strong>stroke-width</strong>, <strong>stroke-dasharray</strong>, <br><strong>stroke-dashoffset</strong>을 이용하여 각각의 <strong>stroke</strong>와 <strong>stroke-dasharray</strong>다르게 입력하여 애니메이션을 완성하였습니다.</p>
                            </div>
                            <div class="iframe iframe-right"><iframe src="subhtml/ani6.html" frameborder="0" scrolling="no"></iframe></div>
                            <a href="https://codepen.io/wngus3277/pen/LBZmZy" target="_blank" class="code code-right">Code View</a>
                        </div>

                        <div class="ani-wrap clearfix">
                            <div class="tit tit-left">Roket<br><em>Animation</em></div>
                            <div class="desc desc-left">
                                <h5>Roket Animation</h5>
                                <p>이 애니니메이션은 로켓은 기본적인 <strong>animation</strong>, <strong>keyframes</strong>을 이용하여 작업한 애니메이션입니다. <strong>fire-1 ~ fire-4</strong>, <strong>spark-1 ~ spark-4</strong>의 여러 개의 class로 로켓의 불꽃과 스파크를 자연스럽게 표현하고 배경은 <strong>star-1 ~ star-20</strong>의 여러 개의 class로 우주의 별을 표현하였습니다. 로켓이 움직여 보이도록 별을 <strong>translate</strong>, <strong>scale</strong>을 이용하였습니다.  </p>
                            </div>
                            <div class="iframe iframe-left"><iframe src="subhtml/ani7.html" frameborder="0" scrolling="no"></iframe></div>
                            <a href="https://codepen.io/wngus3277/pen/MXOBjp?editors=1100" target="_blank" class="code code-left">
                            <span>Code View</span>
                        	</a>
                        </div>

                        <div class="ani-wrap clearfix">
                            <div class="tit tit-right">3D<br><em>Cube Animation</em></div>
                            <div class="desc desc-right">
                                <h5>3D Cube Animation</h5>
                                <p>이 애니메이션은 6개의 다른 면을 <strong>transform-origin</strong>, <strong>rotate</strong>, <strong>translate</strong>, <strong>animation</strong>, <strong>scale</strong>값을 다르게 입력하여 자연스럽게 움직이는 Cube Animation을 완성하였습니다.</p>
                            </div>
                            <div class="iframe iframe-right"><iframe src="subhtml/ani8.html" frameborder="0" scrolling="no"></iframe></div>
                            <a href="https://codepen.io/wngus3277/pen/GGvVMy" target="_blank" class="code code-right">Code View</a>
                        </div>
                    </div>
                </div>
            </div>
	    </div>
		<!-- //section4 -->

		<div id="section5">
			<div class="o_container">
		    	<div class="sec5">
		    		<div class="h3_tit cont1 show">
		    			<span>CONTACT BY</span><br>
		    			<span>PUBLISHER</span>
		    		</div>
		    		<div class="">
		    			
		    		</div>
		    		<div class="">
		    			<span>72 Bundang-gu, Seongnam-si, Gyeonggi</span>
		    		</div>
		    		<div class="p1_desc cont2 show">
		    			<div class="home">
		    				<strong>HOME</strong><br>
		    				<strong>031-5569-8877</strong>
		    			</div>
		    			<div class="tell">
		    				<strong>TELL ME</strong><br>
		    				<strong>+82 10-3192-7793</strong>
		    			</div>
		    			<div class="email">
		    				<strong>E-MAIL US</strong><br>
		    				<strong>wngus3277@naver.com</strong>
		    			</div>
		    		</div>
		    	</div>
		    </div>
	    </div>
		<!-- //section5 -->
	
	<!-- 회원가입 창 -->
	<div class="replyModal01">
		<div class="modalContent">
			<form action="<c:url value='/memberInsert.do'/>" method="post">
				<table class="table table-bordered" >
					<tr>
						<th class="text-tg-join">아이디 : </th>
						<th class="tg-0pky" colspan="2">
							<input style="width:70%; float: left;" type="text" minlength="3" maxlength="20" name="id" id="userid"/>
							<button style="float: right;" type="button" value="중복확인" class="idchecksubmit" id="idck">중복 확인</button>
						</th>
					</tr>
					<tr>
						<th class="text-tg-join">비밀번호 : </th>
						<th class="tg-0pky"><input type="password" name="pw" id="userpw"/></th>
					</tr>
					<tr>
				    	<th class="text-tg-join">이름 : </th>
				    	<th class="tg-0pky"><input type="text" name="name"/></th>
					</tr>
					<tr>
						<th class="text-tg-join">나이 : </th>
						<th class="tg-0pky"><input type="text" name="age"/></th>
					</tr>
					<tr>
						<th class="text-tg-join">응원하는 구단 : </th>
						<th class="tg-0lax"><input type="text" name="ft"/></th>
					</tr>
					<tr>
						<th class="tg-0lax" colspan="2" align="center">
							<button type="submit" value="가입" class="btn btn-success" onclick="return idchtr()">가입</button>
							<button type="reset" value="취소" class="btn btn-warning" onclick="pageclose()">취소</button>
						</th>
					</tr>
				</table>
			</form>
		</div>
		<div class="modalBackground"></div>
	</div>
		
	
	<!-- 회원 탈퇴 창 -->
	<div class="replyModal02">
		<div class="modalContent">
			<form action="<c:url value='/memberDelete.do'/>" method="post">
				<input type="hidden" name="id" value="${id}"/> 
				<table class="table table-bordered">
					<tr>
						<th colspan="2" align="center">
							${name}님 탈퇴하시겠습니까
						</th>
					</tr>
					<tr>
						<th colspan="2" align="center">
							<button type="submit" value="탈퇴" class="btn btn-success">탈퇴</button>
							<button type="reset" value="취소" class="btn btn-warning" onclick="pageclose()">취소</button>
						</th>
					</tr>
				</table>
			</form>
		</div>
		<div class="modalBackground"></div>
	</div>
		
						
	</section>

	
	
	
	<script src="assets/js/idcheck.js"></script>
	<script src="assets/js/jquery-1.12.4.js"></script>
	<script src="assets/js/jquery-ui-1.12.1.min.js"></script>
	<script src="assets/js/imagesloaded.pkgd.min.js"></script>
	<script src="assets/js/modernizr.min.js"></script>
	<script src="assets/js/slick.js"></script>
	<script src="assets/js/slick.min.js"></script>
	<script src="assets/js/easypiechart.min.js"></script>
	<script src="assets/js/custom4.js"></script>
	<script>
		$(function(){
            imagesProgress();		//이미지 로딩 
            counter();					//스킬 카운터

			//section2 img 스크롤에 따른 이미지 움직임
            $(window).scroll(function(){
				var wScroll = $(this).scrollTop();
				$(".about .img img").css({ 'transform':'translatey(-'+ wScroll/2 +'px) scale(3)' });
				// $(".menu-right").css({ 'transform':'translatey(-'+ wScroll/4 +'px)' });
			});
        });

		var cont = $("#contents > div");
		var sideBar = $(".side-bar");
		var phone = $(".phone");
		var menuBtn = $(".menu-wrapper");

        $(".side-bar .sb-svg").click(function(){
        	$("body").toggleClass("scroll");
		  	$(".side-bar-hover").toggleClass("show");
		  	sideBar.find(".sb-svg").toggleClass("show2");
			sideBar.find(".sb-txt").toggleClass("show2");
			sideBar.find(".sb-sns i").toggleClass("show2");
			phone.find(".phone-icon svg").toggleClass("show2");
			phone.find(".phone-number").toggleClass("show2");
			menuBtn.find(".menu-button.wrap").toggleClass("show2");
		});

		//스크롤시 #section3 이미지 움직임 변화
        $(window).scroll(function(){
			var wScroll = $(this).scrollTop();
			var offset = (wScroll  - $(window).height()) * 0.1;

			$(".visual-middle").css({ 'transform':'translateY(-'+ offset +'px)' });
			$(".visual-up").css({ 'transform':'translateY(-'+ offset*4 +'px)' });
			$(".visual-fast").css({ 'transform':'translateY(-'+ offset*8 +'px)' });
		});

		
	</script>
</body>
</html>