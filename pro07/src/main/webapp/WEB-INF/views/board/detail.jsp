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
<jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
	<div class="content" id="content">
	    <div class="row column text-center">
	      <h2 class="h1">공지사항 상세 보기</h2>
	      <hr>
	      <div class="container">
		      <table id="table1">
		      	<tbody>
		
		      		<tr>
		      			<th style="background-color:#dcdcdc">글 번호</th>
		      			<td>${board.no}</td>
		      		</tr>	
		      		<tr>
		      			<th style="background-color:#dcdcdc">글 제목</th>
		      			<td>${board.title }</td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">글 내용</th>
		      			<td><p>${board.content }</p></td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">작성자</th>
		      			<td>${board.author}</td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">작성일시</th>
		      			<td>${board.regdate }</td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">읽은 횟수</th>
		      			<td>${board.visited }</td>
		      		</tr>
		      	</tbody>
		      </table>
				<div class="button-group">
				  <a class="btn btn-light" href="${path1 }/board/list">글 목록</a>
				  <c:if test='${sid eq "admin"}'>
				  <a class="btn btn-light" href="${path1 }/board/delete?no=${board.no}">글 삭제</a>
				  <a class="btn btn-light" href="${path1 }/board/updateForm?no=${board.no}">글 수정</a>
				  </c:if>
				</div>
	      </div>
	    </div>
	</div>
</body>
</html>