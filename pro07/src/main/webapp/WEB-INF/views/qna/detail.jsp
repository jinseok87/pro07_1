<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<%-- <c:set var="path1" value="${pageContext.request.contextPath }" />   --%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>묻고 답하기</title>
    <jsp:include page="../include/head.jsp" />
  </head>
  <body>
  <jsp:include page="../include/header.jsp" />
  <section class="section">
    <div class="container">
		<h2 class="title">질문 및 답변 상세 내용</h2>
		<table class="table">
			<tbody>
				<tr>
					<th>구분</th>
					<td>
					<c:if test="${qna.lev eq 0}">
						<span>질문</span>
					</c:if>	
					<c:if test="${qna.lev ne 0}">
						<span>답변</span>
					</c:if>
					</td>
				</tr>
				<tr>
					<th>공개여부</th>
					<td>
					<c:if test='${qna.sec eq "Y" }'>
						<span>비공개</span>
					</c:if>	
					<c:if test='${qna.sec eq "N" }'>
						<span>공개</span>
					</c:if>
					</td>
				</tr>
				<tr>
					<th>번호</th>
					<td>${qna.no }</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>${qna.title }</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>${qna.content }</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${qna.author }</td>
				</tr>
				<tr>
					<th>작성일시</th>
					<td>${qna.regdate }</td>
				</tr>
				<tr>
					<th>읽은 횟수</th>
					<td>${qna.visited }</td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<a href="${path1 }/qna/list" class="button is-info">목록으로</a>
			<c:if test='${sid eq "admin" }'>
				<c:set var="lev" value="${qna.lev }"/>
				<c:if test="${qna.lev eq 0 }">
					<a href="../qna/aForm?lev=1&&parno=${qna.parno}" class="button is-primary">답변 하기</a>
					<a href='${path1}/ qna/update?no=${qna.no }' class="button is-info">글 수정</a>
					<a href='${path1}/ qna/delete?parno=${qna.no }' class="button is-danger">글 삭제</a>
				</c:if>	
				<c:if test="${qna.lev eq 1 }">
					<a href='${path1}qna/update?no=${qna.no }' class="button is-info">답글 수정</a>
					<a href='${path1}qna/delete?no=${qna.no }' class="button is-danger">답글 삭제</a>
				</c:if>	
			</c:if>	
			<c:if test="${sid eq qna.author }">
				<a href='${path1}qna/update?no=${qna.no }' class="button is-info">글 수정</a>
				<a href='${path1}qna/delete?parno=${qna.no }' class="button is-danger">글 삭제</a>
			</c:if>		
			<c:if test="${sid ne qna.author}">
				<p style="clear:both">글 작성자가 아닙니다.</p>
			</c:if>
			</div>
		</div>	
	</section>
	<footer>
		<h2>footer</h2>
	</footer>
  </body>
</html>