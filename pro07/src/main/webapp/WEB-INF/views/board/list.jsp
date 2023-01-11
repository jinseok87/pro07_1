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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>공지사항 목록</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
    
</head>
<body>
	<header id="header">
		<jsp:include page="../include/header.jsp"></jsp:include>
    </header>
	<div class="content" id="content">
	    <div class="row column text-center">
	      
	      <hr>
	      <div class="container">
		      <table id="tb">
		      	<thead>
		      		<tr>
		      			<th width="80">글 번호</th>
		      			<th>제목</th>
		      			<th width="120">작성일</th>
		      			<th width="100">조회수</th>
		      		</tr>
		      	</thead>
		      	<tbody>
		      	<c:forEach items="${boardList }" var="board" varStatus="status">
		      		<tr>
		      			<td>${status.count }</td>
		      			<c:if test="${empty sid }">
							<td><a href="${path1 }/member/loginForm" class="not-member">${board.title }</a></td>
						</c:if>
						<c:if test="${not empty sid }">
							<td><a href="${path1 }/board/detail?no=${board.no }">${board.title }</a></td>
						</c:if>
		      			<td>
	      					<fmt:parseDate value="${board.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
	      					<fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
		      			</td>
		      			<td>${board.visited }</td>
		      		</tr>
		      	</c:forEach>	
		      	</tbody>
		      </table>
		            
			 <c:if test='${sid eq "admin"}'>  
		      	<div class="button-group">
					<a class="button" href="${path1 }/board/insertForm">글쓰기</a>
				</div>
			</c:if> 
	      </div>

	    </div>
	</div>
	<script>
	$(document).ready(function(){
		$(".not-member").click(function(){
			alert("로그인 후 조회가 가능합니다.");
		});
	});
	</script>
    <footer id="footer" class="footer-nav row expanded collapse">
    	
    	<h2>footer</h2>
    </footer>
</body>
</html>