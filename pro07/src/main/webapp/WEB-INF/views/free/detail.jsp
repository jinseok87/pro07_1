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
<title>free Detail</title>
</head>
<body>
	<section class="container">
		<form action="${ path1}/free/update" method="post">
			<div class="free">
				<div class="group">
					<label for="no">no</label>
					<input type="text" id="no" name="no" class="control" value="${free.no}" readonly required>
				</div>
				<div class="group">
					<label for="title">title</label>
					<input type="text" id="title" name="title" class="control" value="${free.title }" readonly required>
				</div>
				<div class="group">
					<label for="content">content</label>
					<input type="text" id="content" name="content" class="control" value="${free.content }"readonly required>
				</div>
				<div class="group">
					<label for="id">author</label>
					<input type="text" id="id" name="id" class="control" value="${free.id }" required readonly>
				</div>
				<div class="group">
					<label for="regdate">regdate</label>
					<input type="text" id="regdate" name="regdate" class="control" value="${free.regdate }" required readonly>
				</div>
				<div class="group">
					<label for="visited">visited</label>
					<input type="text" id="visited" name="visited" class="control" value="${free.visited }" required readonly>
				</div>
			</div>
			 <a class="button" href="${path1 }/free/delete?no=${free.no}">글 삭제</a>
			 <a class="button" href="${path1 }/free/updateForm?no=${free.no}">글 수정</a>
			 <a class="button" href="${path1 }/free/list">글 목록</a>
		</form>
	</section>
</body>
</html>