<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />

<html>
<head>
<jsp:include page="include/head.jsp"/>
<meta charset="UTF-8">
<title>대통령경호처</title>

</head>
<body>
	<header id="header">
		<jsp:include page="./include/header.jsp"/>
	</header>
	<div class="container px-4 px-lg-5 nimg">
		<section class="slider-three">
			<div class="container">
				<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="${path1 }/resources/image/main/m_visual1_1.jpg" alt="Image" class="d-block w-100" alt="visual1_1">
						</div>
						<div class="carousel-item">
							<img src="${path1 }/resources/image/main/m_visual1_4.jpg" alt="Image" class="d-block w-100" alt="visual1_4">
						</div>
						<div class="carousel-item">
							<img src="${path1 }/resources/image/main/m_visual1_5.jpg" alt="Image" class="d-block w-100" alt="visual1_5">
						</div>
					</div>
					<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>

			</div>
			<!-- container -->
		</section>
<jsp:include page="./include/footer.jsp"/>
	</div>
</body>
</html>
