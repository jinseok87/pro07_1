<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!-- 헤더 내용 기술 -->
<div class="container">

	<hr>
	<nav class="navbar navbar-expand">
		<div class="container">
			<a class="link-secondary" href="${path1 }/"> <img src="${path1 }/resources/image/main/logo.png" alt="Logo" width="200px" height="40px"></a>
			<div class="collapse navbar-collapse justify-content-evenly" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<div class="hstack gap-5">
						<li class="nav-item dropdown"><a class="nav-link dropdown " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 소통 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><a class="dropdown-item" href="#">Something else here</a></li>
							</ul></li>

						<li class="nav-item dropdown"><a class="nav-link dropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">공감</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><a class="dropdown-item" href="#">Something else here</a></li>
							</ul></li>

						<li class="nav-item dropdown"><a class="nav-link dropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">참여</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><a class="dropdown-item" href="#">Something else here</a></li>
							</ul></li>

						<li class="nav-item dropdown"><a class="nav-link dropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">채용</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><a class="dropdown-item" href="#">Something else here</a></li>
							</ul></li>

						<li class="nav-item dropdown"><a class="nav-link dropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">소개</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><a class="dropdown-item" href="#">Something else here</a></li>
							</ul></li>

						<li class="nav-item dropdown"><a class="nav-link dropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 게시판 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="${path1 }/board/list">공지사항</a></li>
								<li><a class="dropdown-item" href="${path1 }/free/list">자유게시판</a></li>
								<li><a class="dropdown-item" href="${path1 }/qna/list">QNA</a></li>
							</ul></li>
				</ul>

			</div>
			<c:if test="${empty sid }">
				<button type="button" class="btn btn-light me-md-2"><a href="${path1 }/member/loginForm.do">로그인</a></button>
				<button type="button" class="btn btn-light"><a href="${path1 }/member/agree.do">회원가입</a></button>
			</c:if>
			<c:if test="${not empty sid }">
				<p>${member.name }님</p>
				<button type="button" class="btn btn-light me-md-2"><a href="${path1 }/member/logout.do">로그아웃</a></button>
				<button type="button" class="btn btn-light"><a href="${path1 }/member/read">회원정보</a></button>
			</c:if>
		</div>
	</nav>
	<hr>
</div>