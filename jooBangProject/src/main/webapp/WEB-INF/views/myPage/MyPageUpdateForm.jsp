<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원 정보 수정</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/head.jsp"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/mypage.css'/>">
		
	</head>
	<body>
	<div id="wrap">
	<nav id="nav">
	<c:import url="/WEB-INF/views/top.jsp"/>
	</nav>
	
				  <div class="category">
				  <form id="myPageForm" class="myPageForm" method="post" action="<c:url value='/myPage/updateMyPage'/>">
					  <h1>마이 페이지</h1>
					  <hr>
						<div class="profileBox" id="profileBox">
						<div class="PhotoBox" id="PhotoBox">
						<img class="profile" src="/image/default_profile.png">
						</div>
						</div>
					   <ul id="ul">
						<li class="side-menu">내 정보 수정</li><hr>
						<li class="side-menu"><a href="<c:url value='/member/findidform'/>">아이디 변경</a></li><hr>
						<li class="side-menu"><a href="<c:url value='/member/findPwdForm'/>">비밀번호 변경</a></li><hr>
						<li class="side-menu"><a href="<c:url value='/member/myPageUpdate'/>">주소 변경</a></li><hr>
						<li class="side-menu"><a href="<c:url value='/member/myPageUpdate'/>">사진변경</a></li><hr>
						<li class="side-menu"><a href="<c:url value='/board/boardListAll'/>">관련메뉴</a></li><hr>
						<li class="side-menu"><a href="<c:url value='/board/boardCtgList'/>">이용내역</a></li><hr>
						<li class="side-menu"><a href="<c:url value='/board/boardCtgList'/>">신청현황</a></li><hr>
						<li class="side-menu"><a href="<c:url value='/board/bestBoard'/>">등록한 방관리</a></li><hr>
					   </ul>
					   </form>

					   <div class="mypagebox">
						<div id="mypage">
							<form id="myPageForm" class="myPageForm" method="post" action="<c:url value='/myPage/updateMyPage'/>">
								<h1>회원 정보 수정</h1>
								<hr>
									<table>
										<tr><td>회원아이디</td>
												<td colspan="2"><input type="text" name="memId" value="${mem.memId }" readonly></td></tr>
										<tr><td>회원명</td>
												<td colspan="2"><input type="text" name="memName" value="${mem.memName }" readonly></td></tr>
										<tr><td>전화번호 *</td>
												<td colspan="2"><input type="text" name="memHP" value="${mem.memHP }"></td></tr>
										<tr><td>이메일 *</td>
												<td colspan="2"><input type="text" name="memEmail" value="${mem.memEmail}" ></td></tr>
										<tr><td id="zipcode">우편번호 </td>
												<td><input type="text" name="memZipcode" class="postcodify_postcode" id="memZipcode" value="${mem.memZipcode}" readonly></td>
											<td><button type="button" id="postcodify_search_button">검색</button></td></tr>
										<tr><td>도로명주소</td>
											<td colspan="2"><input type="text" name="memAddress1" class="postcodify_address" id="memAddress1" value="${mem.memAddress1}" readonly></td></tr>
										<tr><td>상세주소 *</td>
											<td colspan="2"><input type="text" name="memAddress2" class="postcodify_details" id="memAddress2" value="${mem.memAddress2}"></td></tr>
										<tr><td colspan="3">
										<input id="button" type="submit" value="수정">
										<input id="button" type="reset" value="취소"></td></tr>
									</table>
							</form>
						</div>
					</div>
				</div>
				</div>
				
				
					
					<!-- 주소 API 스크립트 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	
	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
	</body>
	<footer>
        <!-- bottom -->
          <c:import url="/WEB-INF/views/footer.jsp"/>
    </footer>
</html>