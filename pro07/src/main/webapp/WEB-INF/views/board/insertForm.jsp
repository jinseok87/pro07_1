<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>Board Insert</title>
</head>
<body>
	<section class="container">
		<form action="${ path1}/board/insert" method="post">
			<div class="detail">
				<div class="group">
					<label for="title">제목</label>
					<input type="text" id="title" name="title" placeholder="제목" required>
				</div>
				<div class="group">
					<label for="content">내용</label>
					<textarea id="content" name="content"  placeholder="내용" required ></textarea>
				</div>
				
			</div>
			<button type="submit">글 등록</button>
			<button type="reset">취소</button>
		</form>
	</section>
</body>
</html>