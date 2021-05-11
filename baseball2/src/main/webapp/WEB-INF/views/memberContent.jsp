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
	    
	    /* 회원가입 디자인 */
		div.modalBackground { position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,255,0.3); z-index:-1; }
		div.modalContent { position:fixed; top:20%; left:calc(50% - 250px); width:500px; height:550px; padding:20px 10px; background:#fff; border:2px solid #666; }
		div.modalContent table { position: relative; top: 50px; }
		div.modalContent td { font-size: 20px; border-spacing:0px 0px; border-bottom: 1px solid #1B456B; border-top: 1px solid #1B456B; padding-top: 10px; padding-bottom: 10px;}
		div.modalContent td.text-tg-join { text-align: right; }
		div.modalContent input { width: 100%; border: 0; font-size: 20px;}
		div.modalContent button { font-size:20px; padding: 20px 10px; margin:10px 0; background:#baadad; border:1px solid #ccc; }
		div.modalContent button.modal_cancel { margin-left:20px; }
	</style>
  
</head>
<body>

<div class="modalContent">
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
				<td><input type="text" name="ft" value="${vo.ft}" /></td>
			</tr> 
	 
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="수정" class="btn btn-primary"/>
					<input type="reset" value="취소" class="btn btn-warning"/>
					<input type="button" value="메인" class="btn btn-success" onclick="goList()"/>
				</td>
			</tr>
		</table>
	</form>
	<div class="modalBackground"></div>
</div>

</body>
</html>