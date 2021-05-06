\<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="kr.smhrd.model.*" %>
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
     $(document).ready(function(){
    	 <c:if test="${!empty msg}">
    	     alert("${msg}");
    	     <c:remove var='msg' scope='session'/> 
    	 </c:if>    	 
     });
     function goForm(){
    	// 회원가입페이지로 요청(/mvc)
    	location.href="<c:url value='/memberRegister.do'/>";
     } 
     function goDel(num){
     	// 회원삭제페이지로 요청                          get(querystring:KEY=VALUE&KEY=VALUE~~~)
     	location.href="<c:url value='/memberDelete.do'/>?num="+num;  // num=2
      }
     function check(){
    	 if($('#id').val()==''){
    		 alert("아이디를 입력하세요.");
    		 return false;
    	 }
    	 if($('#pass').val()==''){
    		 alert("패스워드를 입력하세요.");
    		 return false;
    	 }
    	 return true;
     }
     function out(){
    	 location.href="<c:url value='/memberLogout.do'/>";
     }
  </script> 
</head>
<body>
<div class="container">
  <h2>회원관리시스템</h2>
  <div class="panel panel-default">
    <div class="panel-heading">
    <c:if test="${id=='' || id==null}"> 
		<form class="form-inline" action="<c:url value='/memberLogin.do'/>" method="post">
		  <div class="form-group">
		    <label for="user_id">ID:</label>
		    <input type="text" class="form-control" id="id" name="id">
		  </div>
		  <div class="form-group">
		    <label for="pwd">PW:</label>
		    <input type="password" class="form-control" id="pass" name="pass">
		  </div>
		  <button type="submit" class="btn btn-default" onclick="return check()">로그인</button>
		</form>
    </c:if>
     <c:if test="${id!='' && id!=null}"> 
        ${name}님 환영합니다.
        <button type="button" class="btn btn-default" onclick="out()">로그아웃</button>
     </c:if>    
    </div>
    <div class="panel-body">
		 <div class="table-responsive">          
		  <table class="table table-hover">
		    <thead>
			  <tr>
			    <th>번호</th>
			    <th>아이디</th>
			    <th>비밀번호</th>
			    <th>이름</th>
			    <th>나이</th>
			    <th>전화번호</th>
			    <th>이메일</th>
			    <th>삭제</th>
			  </tr>
		    </thead>
		    <tbody>
		    <c:forEach var="vo" items="${list}">
		    <tr>
			    <td><c:out value="${vo.num}"/></td>
			    <td><a href="<c:url value='/memberContent.do'/>?num=${vo.num}">${vo.id}</a></td>
			    <td>${vo.pass}</td>
			    <td>${vo.name}</td>
			    <td>${vo.age}</td>
			    <td>${vo.phone}</td>
			    <td>${vo.email}</td>
			    <c:if test="${id==vo.id}">
			     <td><input type="button" value="삭제" class="btn btn-warning" onclick="goDel(${vo.num})"/></td>
			    </c:if> 
			    <c:if test="${id!=vo.id}">  
			     <td><input type="button" value="삭제" class="btn btn-warning" onclick="goDel(${vo.num})" disabled="disabled"/></td>
		        </c:if>
		    </tr>
           </c:forEach>
		  <tr>
		    <td colspan="8">
		       <input type="button" value="회원가입" class="btn btn-primary" onclick="goForm()"/>
		    </td>
		  </tr>
		  </tbody>
		  </table>
		  </div>    
    </div>
    <div class="panel-footer">
          스마트인재개발원(admin@smhrd.kr)
    </div>
  </div>
</div>
</body>
</html>