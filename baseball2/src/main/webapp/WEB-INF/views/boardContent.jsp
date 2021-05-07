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
    	location.href="<c:url value='/boardList.do'/>"; 
     }  
  </script>
</head>
<body>
<form action="<c:url value='/boardUpdate.do'/>" method="post">
<input type="hidden" name="idx" value="${vo.idx}"/> 
<input type="hidden" name="count" value="${vo.count+1}"/> 
<table class="table table-bordered">

<colgroup>
<col style="width: 90px">
<col style="width: 378px">
</colgroup>
<thead>
  <tr>
    <th class="tg-c3ow">제목</th>
    <th class="tg-0pky"><input type="text" name="title" value="${vo.title}"/></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-c3ow">내용</td>
    <td class="tg-0pky"><textarea rows="5" cols="47" name="contents"> ${vo.contents}</textarea></td>
  </tr>
  <tr>
    <td class="tg-c3ow">작성자</td>
    <td class="tg-0pky"><input type="hidden" name="writer" value="${vo.writer}"/>${vo.writer}</td>
  </tr>



  <tr>
    <td colspan="2" align="center">
       <input type="submit" value="수정" class="btn btn-primary"/>
       <input type="reset" value="취소" class="btn btn-warning"/>
       <input type="submit" value="목록" class="btn btn-success" onclick="goList()"/>
    </td>
  </tr>
</table>
</form>
</body>
</html>