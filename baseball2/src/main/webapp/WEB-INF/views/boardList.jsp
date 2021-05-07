<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
     function goForm(){
    	// ??회원가입페이지로 요청(/mvc)
    	location.href="<c:url value='/boardRegister.do'/>";
     } 
     function goDel(num){
     	// ??회원삭제페이지로 요청                          get(querystring:KEY=VALUE&KEY=VALUE~~~)
     	location.href="<c:url value='/boardDelete.do'/>?num="+num;  // num=2
      }
  </script>
</head>
<body>
	- Spring MVC Board ohyes -
	<table class="table table-hover table-bordered">
		<tr>
			<td>게시물번호</td>
			<td>제목</td>
			<td>조회수</td>
			<td>등록자</td>
			<td>등록일</td>
			<td>삭제</td>

		</tr>
		<c:forEach var="vo" items="${list}">
			<tr>
				<td>${vo.idx}</td>
				<td><a href="<c:url value='/boardContent.do'/>?num=${vo.idx}">${vo.title}</a></td>
				<td>${vo.count}</td>
				<td>${vo.writer}</td>
				<td>${vo.indate}</td>
				<td><input type="button" value="삭제" class="btn btn-warning"
					onclick="goDel(${vo.idx})" /></td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="6" align="right"><input type="button" value="글쓰기"
				class="btn btn-primary" onclick="goForm()" /></td>
		</tr>
	</table>
</body>
</html>


