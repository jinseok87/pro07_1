<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path2" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>회원목록</title>
<jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
	<header id="header">
		<h2>헤더</h2>
    </header>

    <div class="row column text-center">
      <h2 class="h1">회원 목록</h2>
      <hr>
      <table id="tb">
      	<thead>
      		<tr>
      			<th width="80">No</th>
      			<th width="100">ID</th>
      			<th width="100">NAME</th>
      			<th>RegDate</th>
      			
      		</tr>
      	</thead>
      	<tbody>
      	<c:forEach items="${memberList }" var="member" varStatus="status">
      		<tr>
      			<td>${status.count }</td>
      			<td><a href="${path2 }/member/detail?id=${member.id }">${member.id }</a></td>
      			<td>${member.name }</td>
      			<td>${member.regdate }</td>
      			
      		</tr>
      	</c:forEach>	
      	</tbody>
      </table>
    </div>
	
    <footer id="footer" class="footer-nav">
    	<h2>푸터</h2>
    </footer>
</body>
</html>