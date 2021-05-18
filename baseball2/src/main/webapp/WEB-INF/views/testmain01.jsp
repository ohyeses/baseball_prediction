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
	<link rel="stylesheet" href="assets/css/reset.css"><!-- 화면 여백 지움 -->
	<link rel="stylesheet" href="assets/css/style4.css"><!-- 전체 스타일 -->
	<link rel="stylesheet" href="assets/css/p17_style4.css"><!-- 2페이지 표 스타일 -->
	<link rel="stylesheet" href="assets/css/jquery-ui.css"><!-- 달력 -->
	
	
	<link rel="stylesheet" href="assets/css/glitch.css" >
	<link rel="stylesheet" href="assets/css/slick-theme.css" >
	<link rel="stylesheet" href="assets/css/slick.css" >
	<link rel="stylesheet" href="assets/css/animate.css" >
	<link rel="stylesheet" href="assets/css/font-awesome.css">
	

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
		div.modalContent { position:fixed; top:20%; left:calc(50% - 250px); background:#E6E6E6; border:2px solid #666; }
		div.modeljoin { width:500px; height: 500px; padding:20px 10px;  }
		div.modeldel { width:500px; height: 300px; padding:20px 10px;  }
		div.modalContent table { position: relative; top: 80px; }
		div.modalContent th { font-size: 20px; border-spacing:0px 0px; border-bottom: 1px solid #1B456B; border-top: 1px solid #1B456B; padding-top: 10px; padding-bottom: 10px;}
		div.modalContent th.text-tg-join { text-align: right; }
		div.modalContent input { width: 100%; border: 0; font-size: 20px;}
		div.modalContent select { width: 100%; border: 0; font-size: 20px;}
		
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- 로그인 스크립트 -->
	<script type="text/javascript">
		//세션 감지 동작부
		$(document).ready(function(){
			<c:if test="${! empty msg}">
				alert("${msg}");
				<c:remove var='msg' scope='session'/> 
			</c:if>    
			//내글보기 페이지 전환
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
						<label for="user_id">ID:</label>
						<input type="text" class="form-control" id="id" name="id">
					</div>
					<div class="form-group">
						<label for="pw">PW:</label>
						<input type="password" class="form-control" id="pw" name="pw">
					</div>
					<div class="email">
						<button style="position: relative; left: -20px; " type="submit" class="boardselect boardselect_member" onclick="return check()">로그인</button>
						<button style="position: relative; left: -20px; " type="button" class="boardselect boardselect_member" onclick="signUp()">회원가입</button>
					</div>
				</form>
			</c:if>
			<!-- 로그인 성공 시 활성화 -->
			<c:if test="${id!='' && id!=null}">
				<div class="form-group">
					<span style="font-size: 35px">MEMBER<br></span>
					<p><strong>${name}</strong>님 <br>환영합니다.</p>
					<br>
					<button style="position: absolute; bottom:70px; right: 5px;" type="button" class="boardselect boardselect_member" onclick="out()">로그아웃</button>
					<br>
				</div> 
				<div class="email">
					<span style="position: absolute; right: 15px;">개인정보 관리</span>
					<br>
					<button style="position: absolute; top: 15px; right: 5px;" type="button" class="boardselect boardselect_member" onclick="contentpg()">회원정보 수정</button>
					<br>
					<button style="position: absolute; top: 45px; right: 5px;" type="button" class="boardselect boardselect_member" onclick="memderdel()">회원 탈퇴</button>
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
		    		<a href="" target="_blank"><span> </span></a>
		    		<a href="https://sports.news.naver.com/kbaseball/schedule/index.nhn" target="_blank"><span>경기 일정</span><i class="fa fa-share" aria-hidden="true"></i></a><br>
	    		</div>
	    		<!-- 클릭시 이동하는 부분 -->
	    		<div class="menu-right">
						<a href="#section1"><span>메인페이지</span></a><br> 
						<a href="#section2"><span>게시판</span></a><br>
						<a href="#section3"><span>경기예측</span></a><br> 
						<a href="#section4"><span>연봉예측</span></a><br>
						<a href="#section5"><span>관리정보</span></a><br>
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
					
					<div class="board_list" style=" padding-top: 10%;  ">
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
							
								
						</table>
						<c:if test="${id!='' && id!=null}">
							<input type="button" value="글쓰기" class="btn btn-primary" onclick="goForm()" style="position: absolute; margin-left: 45%;"/>
						</c:if>
					</div>
					
					<!-- 게시물 버튼 활성화 조건 -->
					<c:if test="${id!='' && id!=null}">
						<div class="about" style="width: 245px;">
							<form action="<c:url value='/boardList.do'/>" >
								<button type="submit" class="boardselect boardselect_list" >전체 글</button>
							</form>
							<button type="button" class="boardselect boardselect_list" onclick="memListView()">작성 글</button>
						</div>
					</c:if>
					
					
				</div>
			</div>
		</div>
	    <!-- //section2 -->
	    
		
		<div id="section3">
	    	<div class="o_container">
	            <div class="sec3">
	            	<!-- <div class="s3-title">
						<p class="s1_tit">MY WORK</p>
						<h3 class="h3_tit">
							<span class="coding" data-text="CODING">CODING</span><br><span class="project" data-text="PROJECT">PROJECT</span>
						</h3>
						<p class="p1_desc">This is my portfolio site. I am a web publisher.I can make various homepages using HTML, CSS, javascripts, and JQuery. I gained a lot of skill and experience while taking classes. I hope my portfolio will be pleased with you. Have a good time.</p>
						<p class="p2_desc">This section shows my coding ability.</p>
					</div> -->
	            	
	            	
	            	<!-- cont1 -->
					<div class="s3-cont1 cont-wrap" id="cont1">
						<div class="side-text-pl side-left">
						
							<div class="h3_tit_pl cont1">
								<span>STEP 1. 날짜 선택하기 </span><br>
								<input type="text" id="datepicker" class="select-data">
							</div>
							<div class="h3_tit_pl cont1">
								<span>STEP 2. 지역 선택하기 </span><br>
								<select class="select-data location">
									<option value="" disabled selected>지역 선택</option>
									<option value="서울">서울</option>
									<option value="광주">광주</option>
									<option value="부산">부산</option>
									<option value="창원">창원</option>
									<option value="인천">인천</option>
									<option value="대전">대전</option>
									<option value="대구">대구</option>
									<option value="수원">수원</option>
								</select>
							</div>
							<div class="h3_tit_pl cont1">
								<span>STEP 3. 팀 선택하기 </span><br>
								<span>HOME . </span>
								<select onchange = "homeselectteam(this)" class="select-data home_team">
									<option value="" >팀 선택</option>
									<option value="KIA">기아 타이거즈</option>
									<option value="DU">두산 베어스</option>
									<option value="LG">LG 트윈스</option>
									<option value="SL">삼성 라이온즈</option>
									<option value="SK">SSG 랜더스</option>
									<option value="HE">한화 이글스</option>
									<option value="NC">NC 다이노스</option>
									<option value="GI">롯데 자이언츠</option>
									<option value="KH">키움 히어로즈</option>
									<option value="KT">KT 위즈</option>
								</select>
								<a style="display: none;" id="selecthome"></a>
								<br>
								<span>AWAY . </span>
								<select onchange = "awayselectteam(this)" class="select-data away_team">
									<option value="" >팀 선택</option>
									<option value="KIA">기아 타이거즈</option>
									<option value="DU">두산 베어스</option>
									<option value="LG">LG 트윈스</option>
									<option value="SL">삼성 라이온즈</option>
									<option value="SK">SSG 랜더스</option>
									<option value="HE">한화 이글스</option>
									<option value="NC">NC 다이노스</option>
									<option value="GI">롯데 자이언츠</option>
									<option value="KH">키움 히어로즈</option>
									<option value="KT">KT 위즈</option>
								</select>
								<a style="display: none;" id="selectaway"></a>
							</div>
							<c:choose>
								<c:when test="${id!='' && id!=null}">
									<button type="button" id="submit-python" class="boardselect baseballdeep">결과 보기</button>
								</c:when>
								<c:when test="${id=='' || id==null}">
									<button type="button" class="boardselect baseballdeep" onclick="alert('로그인 시 이용 가능합니다.');">결과 보기</button>
								</c:when>
							</c:choose>
							
						</div>
						
						
						<div class="side-text side-right">
							<p class="s1_tit cont1">데이터 선택</p>
							<h3 class="h3_tit cont1">
								<span>Scrowll</span><br><span>down</span><br>
							</h3>
							<p class="p1_desc cont1">선택 후 스크롤을 내려주세요</p>
							<p class="s1_tit ta_right"></p>
							
						</div>
					</div>
					
					
					<!-- cont2 -->
					<div class="s3-cont2 cont-wrap" id="cont2">
						
						
						<div class="side-text side-left">
							<p class="s1_tit cont2">HOME</p>
							<h3 class="h3_tit cont2">
								<img id="home-emblem-img" class="emblem-st-img" src="assets/baseball/kbo_emblem.jpg">
								<span style="font-size: 5rem;" id="result_text"></span>
							</h3>
							<p class="p1_desc cont2"></p>
							<p class="s1_tit ta_left"></p>
						</div>
						
						<div class="h3_tit" style="height: 500px; text-align: center; ">
							<br><br><br>
							<span>VS</span>
						</div>
						
						<div class="side-text-pl side-right">
							<p class="s1_tit cont_pl">AWAY</p>
							<h3 class="h3_tit cont1_pl">
								<img id="away-emblem-img" class="emblem-st-img" src="assets/baseball/kbo_emblem.jpg">
								<span style="font-size: 5rem;" id="result"></span>
							</h3>
							<p class="p1_desc cont1_pl"></p>
							<p class="s1_tit ta_pl"></p>
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
                            	<span>내년 연봉 예측 결과</span>
                            	<!-- <span>H</span><span>T</span><span>M</span><span>L</span><span>5</span> <span>&middot;</span> <span>C</span><span>S</span><span>S</span><span>3</span> <span>&middot;</span> <span>J</span><span>A</span><span>V</span><span>A</span><span>S</span><span>C</span><span>R</span><span>I</span><span>P</span><span>T</span> -->
                            </p>
                            <h4>
                            	<span>S</span><span>A</span><span>L</span><span>A</span><span>R</span><span>Y</span>
                            </h4>
                        </div>

                        <div class="ani-wrap clearfix">
                        	<div>
                        		<select id="address2" class="select-data away_team">
									<option value="" >팀 선택</option>
									<option value="KIA">기아 타이거즈</option>
									<option value="DU">두산 베어스</option>
									<option value="LG">LG 트윈스</option>
									<option value="SL">삼성 라이온즈</option>
									<option value="SK">SSG 랜더스</option>
									<option value="HE">한화 이글스</option>
									<option value="NC">NC 다이노스</option>
									<option value="GI">롯데 자이언츠</option>
									<option value="KH">키움 히어로즈</option>
									<option value="KT">KT 위즈</option>
								</select>
								<select id="address3" class="baseball-member-salary select-data" onchange="playerPredict();">
									<option value="">선수 선택</option>
								</select>
                        	</div>
                            <div class="desc desc-left">
                                <h5>TimelineMax</h5>
                                <p>이 우주선은 GSAP의 TweenMax를 이용한 애니메이션입니다. TweenMax 기능 중 TimelineMax 기능을 이용하여 우주선이 자연스럽게 이동하도록 만들었으며, <strong>translateY</strong>, <strong>scale</strong>, <strong>ease</strong> 효과를 통해 사실처럼 움직이는 애니메이션을 완성하였습니다.</p>
                            </div>
                            <div class="iframe iframe-left">
                            	<iframe src="assets/baseball/emblem_HT.png" frameborder="0" scrolling="no"></iframe>
                            </div>
                            <a target="_blank" class="code code-left">Code View</a>
                        </div>

                        <!-- <div class="ani-wrap clearfix">
                            <div class="tit tit-right">Kraken<br><em>Animation</em></div>
                            <div class="desc desc-right">
                                <h5>Kraken Animation</h5>
                                <p>이 캐릭터는 움직임을 표현하는 애니메이션입니다. 이 애니메이션은 물방울과 캐릭터의 눈, 입, 다리를 <strong>animation</strong>과 <strong>keyframes</strong>을 사용하여 살아있는 듯한 캐릭터의 움직임을 자연스럽게 표현하였습니다.</p>
                            </div>
                            <div class="iframe iframe-right"><iframe src="" frameborder="0" scrolling="no"></iframe></div>
                            <a href="https://codepen.io/wngus3277/pen/pKPNPW" target="_blank" class="code code-right">Code View</a>
                        </div>

                        <div class="ani-wrap clearfix">
                            <div class="tit tit-left">Mouse<br><em>Cursor Effect</em></div>
                            <div class="desc desc-left">
                                <h5>Cursor Effect</h5>
                                <p>이 효과는 TweenMax와 Javascript를 이용한 애니메이션입니다. TweenMax 기능 중 <strong>posY</strong>, <strong>posX</strong>, <strong>	mouseX</strong>, <strong>mouseY</strong> 값을 설정하고 Hover me 라는 텍스트에 마우스를 대면 <strong>mouseenter</strong>메소드를 사용하여 엑티브가 되도록 하고 마우스가 벗어나면 <strong>mouseleave</strong>메소드에 엑티브가 없어지도록 표현하였습니다.</p>
                            </div>
                            <div class="iframe iframe-left"><iframe src="" frameborder="0" scrolling="no"></iframe></div>
                            <a href="https://codepen.io/wngus3277/pen/xJoKeE" target="_blank" class="code code-left">Code View</a>
                        </div>

                        <div class="ani-wrap clearfix">
                            <div class="tit tit-right">Mouse Hover<br><em>Blend Effect</em></div>
                            <div class="desc desc-right">
                                <h5>Blend Effect</h5>
                                <p>이 효과는 각 이미지의 <strong>class</strong>를 다르게 해주어 마우스를 오버했을 때 각 이미지의 <strong>mix-blend-mode</strong>, <strong>filter</strong>, <strong>background-color</strong>값을 다르게 입력하여 표현하였습니다.</p>
                            </div>
                            <div class="iframe iframe-right"><iframe src="" frameborder="0" scrolling="no"></iframe></div>
                            <a href="https://codepen.io/wngus3277/pen/eKvNbo" target="_blank" class="code code-right">Code View</a>
                        </div>

                        <div class="ani-wrap clearfix">
                            <div class="tit tit-left">Mouse<br><em>Move Image</em></div>
                            <div class="desc desc-left">
                                <h5>Move Image</h5>
                                <p>이 애니니메이션은 각각의 Mouse 버튼에 각기 다른 이미지를 설정하고 <strong>hover</strong>메소드를 이용하여 버튼에 오버했을 때 각기 다른 이미지를 보여주며 <strong>mousemove</strong>메소드에 <strong>pageX</strong>, <strong>pageY</strong>를 사용하여 이미지가 마우스 스크롤을 따라오는 애니메이션을 완성하였습니다.</p>
                            </div>
                            <div class="iframe iframe-left"><iframe src="" frameborder="0" scrolling="no"></iframe></div>
                            <a href="https://codepen.io/wngus3277/pen/pZePJY" target="_blank" class="code code-left">Code View</a>
                        </div>

                        <div class="ani-wrap clearfix">
                            <div class="tit tit-right">SVG<br><em>Text Animation</em></div>
                            <div class="desc desc-right">
                                <h5>Text Animation</h5>
                                <p>이 애니메이션은 illustrator 작업으로 SVG값을 알아내어 SVG에 <strong>stroke</strong>, <strong>stroke-width</strong>, <strong>stroke-dasharray</strong>, <br><strong>stroke-dashoffset</strong>을 이용하여 각각의 <strong>stroke</strong>와 <strong>stroke-dasharray</strong>다르게 입력하여 애니메이션을 완성하였습니다.</p>
                            </div>
                            <div class="iframe iframe-right"><iframe src="" frameborder="0" scrolling="no"></iframe></div>
                            <a href="https://codepen.io/wngus3277/pen/LBZmZy" target="_blank" class="code code-right">Code View</a>
                        </div>

                        <div class="ani-wrap clearfix">
                            <div class="tit tit-left">Roket<br><em>Animation</em></div>
                            <div class="desc desc-left">
                                <h5>Roket Animation</h5>
                                <p>이 애니니메이션은 로켓은 기본적인 <strong>animation</strong>, <strong>keyframes</strong>을 이용하여 작업한 애니메이션입니다. <strong>fire-1 ~ fire-4</strong>, <strong>spark-1 ~ spark-4</strong>의 여러 개의 class로 로켓의 불꽃과 스파크를 자연스럽게 표현하고 배경은 <strong>star-1 ~ star-20</strong>의 여러 개의 class로 우주의 별을 표현하였습니다. 로켓이 움직여 보이도록 별을 <strong>translate</strong>, <strong>scale</strong>을 이용하였습니다.  </p>
                            </div>
                            <div class="iframe iframe-left"><iframe src="" frameborder="0" scrolling="no"></iframe></div>
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
                            <div class="iframe iframe-right"><iframe src="" frameborder="0" scrolling="no"></iframe></div>
                            <a href="https://codepen.io/wngus3277/pen/GGvVMy" target="_blank" class="code code-right">Code View</a>
                        </div> -->
                    </div>
                </div>
            </div>
	    </div>
		<!-- //section4 -->

		<div id="section5">
			<div class="o_container">
		    	<div class="sec5">
		    	
		    		<div class="sec5-title show">
		    			<span>SMHRD BigData</span>
		    			<span>3차 프로젝트</span>
		    		</div>
		    		<div class="contact-img show">
		    		</div>
		    		<div class="contactMe-left show">
		    			<span>60, Songam-ro, Nam-gu, Gwangju, Republic of Korea</span>
		    		</div>
		    		<div class="contactMe-right show">
		    			<div class="home">
		    				<strong>HOME</strong><br>
		    				<strong>062-1234-5678</strong>
		    			</div>
		    			<div class="tell">
		    				<strong>TELL ME</strong><br>
		    				<strong>+82 10-1234-5678</strong>
		    			</div>
		    			<div class="email">
		    				<strong>E-MAIL US</strong><br>
		    				<strong>shmrd@gmail.com</strong>
		    			</div>
		    		</div>
		    	</div>
		    </div>
	    </div>
		<!-- //section5 -->
	
	<!-- 회원가입 창 -->
	<div class="replyModal01">
		<div class="modalContent modeljoin">
			<form action="<c:url value='/memberInsert.do'/>" method="post">
				<table class="table table-bordered" >
					<tr>
						<th class="text-tg-join">아이디 : </th>
						<th class="tg-0pky" colspan="2">
							<input style="width:70%; float: left;" type="text" minlength="3" maxlength="20" name="id" id="userid"/>
							<button style="float: right;" type="button" value="중복확인" class="boardselect idchecksubmit" id="idck">중복 확인</button>
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
						<th class="tg-0lax">
							<select name="ft">
								<option  value="" disabled selected >응원하는 팀</option>
								<option value = "KIA 타이거즈"> 기아 타이거즈 </option>
								<option value = "두산 베어스"> 두산 베어스 </option>
								<option value = "LG 트윈스">  LG 트윈스 </option>
								<option value = "삼성 라이온즈"> 삼성 라이온즈 </option>
								<option value = "SK 와이번스"> SK 와이번스 </option>
								<option value = "한화 이글스"> 한화 이글스 </option>
								<option value = "NC 다이노스"> NC 다이노스 </option>
								<option value = "롯데 자이언츠"> 롯데 자이언츠 </option>
								<option value = "키움 히어로즈"> 키움 히어로즈 </option>
								<option value = "KT 위즈"> KT 위즈</option>
							</select>
						</th>
					</tr>
					<tr>
						<th class="tg-0lax" colspan="2" align="center">
							<button type="submit" value="가입" class="boardselect boardselect_list" onclick="return idchtr()">가입</button>
							<button type="reset" value="취소" class="boardselect boardselect_list" onclick="pageclose()">취소</button>
						</th>
					</tr>
				</table>
			</form>
		</div>
		<div class="modalBackground"></div>
	</div>
		
	
	<!-- 회원 탈퇴 창 -->
	<div class="replyModal02">
		<div class="modalContent modeldel">
			<form action="<c:url value='/memberDelete.do'/>" method="post">
				<input type="hidden" name="id" value="${id}"/> 
				<table class="table table-bordered del">
					<tr>
						<th colspan="2" align="center">
							${name}님 탈퇴하시겠습니까
						</th>
					</tr>
					<tr>
						<th colspan="2" align="center">
							<button type="submit" value="탈퇴" class="boardselect boardselect_list">탈퇴</button>
							<button type="reset" value="취소" class="boardselect boardselect_list" onclick="pageclose()">취소</button>
						</th>
					</tr>
				</table>
			</form>
		</div>
		<div class="modalBackground"></div>
	</div>
		
						
	</section>

	
	
	
	<script src="assets/js/idcheck.js"></script><!-- 중복검사 -->
	<script src="assets/js/custom4.js"></script><!-- 애니메이션 동작 -->
	<script src="assets/js/jquery-1.12.4.js"></script>
	<script src="assets/js/datepicker-test.js"></script><!-- 팀 select문 동작 -->
	<script src="assets/js/pythondeeplearning.js"></script><!-- 플라스크 -->
	
	<script src="assets/js/jquery-ui-1.12.1.min.js"></script>
	<script src="assets/js/easypiechart.min.js"></script>
	<script src="assets/js/slick.min.js"></script>
	<script src="assets/js/slick.js"></script>
	<script src="assets/js/modernizr.min.js"></script>
	<script src="assets/js/imagesloaded.pkgd.min.js"></script>
	
	<script>
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
        
        //홈팀 이미지 변경
        function homeselectteam(e){
        	/* 중복팀 선택 불가 */
			$("select option").prop('disabled',false);
			$("select option[value*="+e.value+"]").prop('disabled',true);
			$("#selecthome").val(e.value);
        	
        	if(e.value == "KIA") {
				$("#home-emblem-img").attr("src", 'assets/baseball/emblem_HT.png');
			}else if (e.value == "DU") {
				$("#home-emblem-img").attr("src", 'assets/baseball/emblem_OB.png');
			}else if (e.value == "LG") {
				$("#home-emblem-img").attr("src", 'assets/baseball/emblem_LG.png');
			}else if (e.value == "SL") {
				$("#home-emblem-img").attr("src", 'assets/baseball/emblem_SS.png');
			}else if (e.value == "SK") {
				$("#home-emblem-img").attr("src", 'assets/baseball/emblem_SK.png');
			}else if (e.value == "HE") {
				$("#home-emblem-img").attr("src", 'assets/baseball/emblem_HH.png');
			}else if (e.value == "NC") {
				$("#home-emblem-img").attr("src", 'assets/baseball/emblem_NC.png');
			}else if (e.value == "GI" ) {
				$("#home-emblem-img").attr("src", 'assets/baseball/emblem_LT.png');
			}else if (e.value == "KH") {
				$("#home-emblem-img").attr("src", 'assets/baseball/emblem_WO.png');
			}else if (e.value == "KT") {
				$("#home-emblem-img").attr("src", 'assets/baseball/emblem_KT.png');
			}else{
				$("#home-emblem-img").attr("src", 'assets/baseball/kbo_emblem.jpg');
			}
        }
      //어웨이팀 이미지 변경
		function awayselectteam(e){
			$("select option").prop('disabled',false);
			$("select option[value*="+e.value+"]").prop('disabled',true);
			$("#selectaway").val(e.value);
			
			if(e.value == "KIA") {
				$("#away-emblem-img").attr("src", 'assets/baseball/emblem_HT.png');
			}else if (e.value == "DU") {
				$("#away-emblem-img").attr("src", 'assets/baseball/emblem_OB.png');
			}else if (e.value == "LG") {
				$("#away-emblem-img").attr("src", 'assets/baseball/emblem_LG.png');
			}else if (e.value == "SL") {
				$("#away-emblem-img").attr("src", 'assets/baseball/emblem_SS.png');
			}else if (e.value == "SK") {
				$("#away-emblem-img").attr("src", 'assets/baseball/emblem_SK.png');
			}else if (e.value == "HE") {
				$("#away-emblem-img").attr("src", 'assets/baseball/emblem_HH.png');
			}else if (e.value == "NC") {
				$("#away-emblem-img").attr("src", 'assets/baseball/emblem_NC.png');
			}else if (e.value == "GI" ) {
				$("#away-emblem-img").attr("src", 'assets/baseball/emblem_LT.png');
			}else if (e.value == "KH") {
				$("#away-emblem-img").attr("src", 'assets/baseball/emblem_WO.png');
			}else if (e.value == "KT") {
				$("#away-emblem-img").attr("src", 'assets/baseball/emblem_KT.png');
			}else{
				$("#away-emblem-img").attr("src", 'assets/baseball/kbo_emblem.jpg');
			}
		}
        
		
	</script>
	
	
	
</body>
</html>