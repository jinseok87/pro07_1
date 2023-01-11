<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>Login</title>
<jsp:include page="../include/head.jsp" />
</head>
<body>
	<jsp:include page="../include/header.jsp" />
	<div class="content" id="con">
		<div class="row column text-center">
			<h2 class="h1">로그인</h2>
			<hr>
			<div class="container">
				<c:if test="${!empty msg }">
					<script>
						alert("로그인 실패");
						document.loginForm.userid.focus();
					</script>
				</c:if>
				<form action="${path1 }/member/signin.do" method="post" name="loginForm">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="id" name="id" placeholder="id">
						<label for="floatingInput">id</label>
					</div>
					<div class="form-floating">
						<input type="password" class="form-control" id="pw" name="pw" placeholder="Password">
						<label for="floatingPassword">Password</label>
					</div>
					<div class="table_form_wrap">
						<input type="submit" class="btn btn-light" value="로그인"> <input type="reset" class="btn btn-light" value="취소">
					</div>
				</form>
			</div>
			<script>
				function loginFaiure() {
					alert("로그인 실패");
				}
			</script>
		</div>
	</div>
	</div>
	<footer id="footer" class="footer-nav row expanded collapse">
		<jsp:include page="../include/footer.jsp" />
	</footer>
</body>
</html>