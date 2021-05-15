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
	
	<link rel="stylesheet" href="assets/css/reset.css"><!-- 화면 여백 지움 -->
	<link rel="stylesheet" href="assets/css/style4.css"><!-- 전체 스타일 -->
	<link rel="stylesheet" href="assets/css/p17_style4.css"><!-- 2페이지 표 스타일 -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function goList(){
			location.href="<c:url value='/boardViewCnt.do'/>?num=${vo.num}"; 
		}
	</script>
</head>
<body>

<form action="<c:url value='/boardUpdate.do'/>" method="post">
	<input type="hidden" name="num" value="${vo.num}"/> 
	
	<table class="table table-hover table-bordered">
	
	<colgroup>
	<col style="width: 90px">
	<col style="width: 378px">
	</colgroup>
	<thead>
		<tr>
			<th class="tg-c3ow">제목</th>
			<th class="tg-0pky"><input class="text-input-area" type="text" name="title" value="${vo.title}" /></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td class="tg-c3ow">내용</td>
			<td class="tg-0pky"><textarea class="text-input-area" rows="5" cols="47" name="content" > ${vo.content}</textarea></td>
		</tr>
		<tr>
			<td class="tg-c3ow">작성자</td>
			<td class="tg-0pky"><input id="writer-area" type="hidden" name="writer" value="${vo.writer}" readonly />${vo.writer}</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<c:if test="${id eq vo.writer}">
					<input type="submit" value="수정" class="btn btn-primary"/>
					<input type="reset" value="취소" class="btn btn-warning"/>
				</c:if>
				<input type="button" value="목록" class="btn btn-success" onclick="goList()"/>
			</td>
		</tr>
	</table>
</form>

<script type="text/javascript">
	if($('#writer-area').val()!='${id}'){
		$('.text-input-area').attr('readonly',true);
	}
	if($('#writer-area').val()=='${id}'){
		$('.text-input-area').attr('readonly',false);
	}
</script>

</body>
</html>