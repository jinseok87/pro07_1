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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>회원 정보 보기</title>
</head>
<body>
	<header id="header">
		<h2>헤더</h2>
    </header>
	
	<div class="content" id="con">
	    <div class="row column text-center">
	      <div class="container">
	      	<c:if test="${sid=='admin' }">
			<h2 class="page_tit">회원 정보 수정</h2>
			</c:if>
			<c:if test="${sid!='admin' }">
			<h2 class="page_tit">마이 페이지</h2>
			</c:if>
	      	<hr>
				<form action="${path1 }/member/update.do" method="post" onsubmit="return updateCheck(this)">
				<div class="table_form_wrap">
					<table class="table_form">
						<tbody>
							<tr>
								<th><label for="userid">아이디</label></th>
								<td><input type="text" name="id" id="id" size="100" class="single100" value="${member.id }" readonly required>
								</td>
							</tr>				
							<tr>
								<th><label for="userpw">비밀번호</label></th>
								<td><input type="password" name="pw" id="pw"  class="single100" value="${member.pw }"required><!--  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  -->
									<!-- <p>(최소 8자리에서 최대 16자리까지, 숫자, 영문 대소문자, 특수문자가 각 1 문자 이상 포함되어야 함)</p> -->
								</td>
							</tr>
							<tr>
								<th><label for="userpw2">비밀번호 확인</label></th>
								<td><input type="password" name="pw2" id="pw2"  class="single100" value="${member.pw }" required></td>
							</tr>
							<tr>
								<th><label for="username">이름</label></th>
								<td><input type="text" name="name" id="name" class="single100"  value="${member.name }" required></td>
							</tr>
						
							<tr>
								<th><label for="tel">전화번호</label></th>
								<td><input type="tel" name="tel" id="tel" class="single100"  value="${member.tel }" pattern="[0-9]{2,3}[0-9]{3,4}[0-9]{4}" required></td>
							</tr>
							<tr>
								<th><label for="" onclick="findAddr()">주소</label></th>
								<td>
									<input type="text" name="addr1" id="addr1" class="single100" value="${member.addr }"><br>
									<input type="text" name="addr2" id="addr2" class="single100" value="${member.addr2 }"><br>
									<input type="text" name="postcode" id="postcode" class="1" value="${member.postcode }">
									<input type="button" value="주소찾기" onclick="findAddr()" class="btn btn-primary">
								</td>
							</tr>
						
							
						</tbody>
					</table>
				</div>
				</form>
				<script>
				function updateCheck(f){
					if(f.userpw.value!=f.userpw2.value){
						alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
						return false;
					}
				}
				</script>
				
				<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	      </div>
	    </div>
	</div>
    <footer id="footer" class="footer-nav row expanded collapse">
    	<h2>푸터</h2>
    </footer>
</body>
</html>