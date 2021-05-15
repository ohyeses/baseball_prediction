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
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function goList(){
			location.href="<c:url value='/boardViewCnt.do'/>?num=${vo.num}"; 
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
		div.modalContent textarea {height:40rem; width: 100%; border: 0; font-size: 20px; text-align: left;}
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
	<form action="<c:url value='/boardUpdate.do'/>" method="post">
		<input type="hidden" name="num" value="${vo.num}"/> 
		
		<table class="table table-hover table-bordered">
		
		<colgroup>
		<col style="width: 90px">
		<col style="width: 378px">
		</colgroup>
		<thead>
			<tr>
				<td class="tg-c3ow">제목</td>
				<td class="tg-0pky"><input class="text-input-area" type="text" name="title" value="${vo.title}" /></td>
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
</div>

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