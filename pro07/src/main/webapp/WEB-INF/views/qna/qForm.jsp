<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
	<title>Insert title here</title>
	<jsp:include page="../include/head.jsp" />
</head>
<body>
<jsp:include page="../include/header.jsp" />
<div class="content" id="content">
	    <div class="row column text-center">
	      <h2 class="h1">질문 등록</h2>
	      <hr>
	      <div class="container">
	      	   <form action="${path1 }/qna/qWrite" method="post">
					<table class="table">
					   <tbody>
					    <tr>
					      <th><label for="title">제목</label></th>
					      <td>
					      <input type="text" class="input" name="author" id="author" value="${sid }" readonly="readonly">
					      <input type="text" class="input" maxlength="120" name="title" id="title" placeholder="제목 입력" required />
					      </td>
					    </tr>
					    <tr>
					      <th><label for="content">내용</label></th>
					      <td><textarea rows="8" cols="100" name="content" id="content" class="textarea" required></textarea></td>
					    </tr>
					  </tbody>
					</table>
					<div class="buttons">
					  <button type="submit" class="button is-success">등록</button>
					  <button type="reset" class="button is-warning">취소</button>
					  <a href="${path1 }/qna/list" class="button is-success">목록</a>
					</div>
				</form>
	      </div>
	    </div>
	</div>
<footer>
	<h2>footer</h2>
</footer>
</body>
</html>