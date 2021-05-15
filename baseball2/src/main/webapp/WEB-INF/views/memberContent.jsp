<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <script type="text/javascript">
     function goList(){
    	location.href="<c:url value='/testmain01.do'/>"; 
     }  
  </script>
  
  <style type="text/css">
		/* 나눔스퀘어로인한 비밀번호 안보이는 문제 해결방식  */
		input[type=password] {
	        font-family: "나눔스퀘어 아닐때 쓸 글꼴";
	        
	        &::placeholder {
	        	font-family: "NanumSquare";
	        }
	    }
	    
		body { position:fixed; top:0; left:0; width:100%; height:100%; background:#ddd8d8; z-index:-1; }
		div.modalContent { position:fixed; margin:5rem; padding:5rem; width:90%; height:90%; background:#f4f4f4; border:2px solid #666; }
		div.modalContent p {font-size: 3rem;}
		div.modalContent table { position: relative; top: 5rem; border:1px solid #666; }
		div.modalContent td { font-size: 20px; border-spacing:0px 0px; border-bottom: 1px solid #1B456B; border-top: 1px solid #1B456B; padding-top: 10px; padding-bottom: 10px;}
		div.modalContent td.text-tg-join { text-align: right; }
		div.modalContent input { width: 100%; border: 0; font-size: 20px;}
		div.modalContent select { width: 100%; border: 0; font-size: 20px;}
		div.modalContent button { 
			display: inline-block;
			background: transparent;
			text-transform: uppercase;
			font-weight: 700;
			font-style: normal;
			letter-spacing: 0.3em;
			color: rgba(223,190,106,0.7);/* 글자 색 */
			border-radius: 0;
			transition: all 0.7s ease-out;
			background: linear-gradient(270deg, rgba(223,190,106,0.8), rgba(146,111,52,0.8), rgba(34,34,34,0.7), rgba(34,34,34,0.7));
			background-position: 1% 50%;
			background-size: 300% 300%;
			text-decoration: none;
			margin: 0.625rem;
			border: none;
			border: 1px solid rgba(223,190,106,0.3);
			padding: 18px 80px 20px;
			font-size: 20px;/*원본 0.625rem */
			width: 70%;
		}
		div.modalContent button:hover {
			color: #fff;
			border: 1px solid rgba(223,190,106,0);
			color: $white;
			background-position: 99% 50%;
		}
	</style>
  
</head>
<body>

<div class="modalContent">
	<p>- 회원 정보 수정 -</p>
	<form action="<c:url value='/memberUpdate.do'/>" method="post">
		<input type="hidden" name="id" value="${vo.id}"/> 
		<table class="table table-bordered">
			<tr>
				<td>아이디</td>
				<td>${vo.id}</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="pw" value="${vo.pw}"/></td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${vo.name}</td>
			</tr> 
			<tr>
				<td>나이</td>
				<td><input type="text" name="age" value="${vo.age}"/></td>
			</tr>    
			<tr>
				<td>응원하는 팀</td>
				<td>
					<select name="ft">
						<option  value="${vo.ft}" disabled selected >${vo.ft}</option>
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
				</td>
			</tr> 
	 
			<tr>
				<td colspan="2" align="center">
					<button type="submit" value="수정" class="btn btn-primary">수정</button>
					<button type="reset" value="취소" class="btn btn-warning">취소</button>
					<button type="button" value="메인" class="btn btn-success" onclick="goList()">메인</button>
				</td>
			</tr>
		</table>
	</form>
	<div class="modalBackground"></div>
</div>

</body>
</html>