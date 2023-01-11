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
<title>Board Detail</title>
</head>
<body>
	<section class="container">
		<form action="${ path1}/board/update" method="post">
			<div class="detail">
				
				<div class="group">
					<label for="title">title</label>
					<input type="hidden" name="no" id="no" value="${board.no }" >
					<input type="text" id="title" name="title" class="control" value="${board.title }" required>
				</div>
				<div class="group">
					<label for="content">content</label>
					<input type="text" id="content" name="content" class="control" value="${board.content }" required>
				</div>
				<div class="group">
					<label for="author">author</label>
					<input type="text" id="author" name="author" class="control" value="${board.author }" required readonly>
				</div>
			
			</div>
			
			<input type="submit" class="submit success button" value="글 수정" >
			<a class="button" href="${path1 }/board/list">글 목록</a>
		</form>
	</section>
	
</body>
</html>