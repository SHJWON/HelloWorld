<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- nav 시작 -->
<nav class="navContainer">
	<div class="mainNavItem navLogo">
		<a href="<c:url value='/'/>"><img src="/image/회색 로고.png"
			id="logoImg" /></a>
	</div>

	<div class="mainNavItem buttonWrapper">
		<div class="mainNavItem navSubMenu">
			<li class="subMenu" id="subMenuMap"><a
				href="<c:url value='/map/mapView'/>">지도</a></li>
			<li class="subMenu" id="subMenuWish"><a
				href="<c:url value='/wishList/wishListView'/>">찜목록</a></li>
			<c:if test="${not empty sessionScope.sid }">
				<li class="subMenu" id="subMenuRoom"><a
					href="<c:url value='/registForm'/>">방올리기</a></li>
			</c:if>

			<c:if test="${empty sessionScope.sid }">
				<li class="subMenu" id="subMenuRoom"><a
					href="<c:url value='/member/login'/>">방올리기</a></li>
			</c:if>
			<li class="subMenu" id="subMenuCommunity"><a
				href="<c:url value='/board/boardListAll/${1}'/>">커뮤니티</a></li>
			<li class="subMenu" id="subMenuRental"><a
				href="<c:url value='/furniture/furnitureRentalView/${1}'/>">가구대여</a></li>
		</div>
		<div class="mainNavItem navSign">

			<c:if test="${empty sessionScope.sid }">
				<div class="signBtnBox" id="loginBtn">
					<a href="<c:url value='/member/login'/>" id="mainLogin">로그인</a>
				</div>
				<div id="mainLS">|</div>
			</c:if>

			<c:if test="${empty sessionScope.sid }">
				<div class="signBtnBox" id="signUpBtn">
					<a href="<c:url value="/member/TOS"/>" id="mainSignUp">회원가입</a>
				</div>
			</c:if>

			<c:if test="${not empty sessionScope.sid }">
				<div class="signBtnBox" id="logoutBtn">
					<a href="<c:url value='/member/logout'/>">로그아웃</a>
				</div>
				<div id="mainLS">|</div>
			</c:if>

			<c:if test="${not empty sessionScope.sid }">
				<div class="signBtnBox" id="signUpBtn">
					<a href="<c:url value='/myPage/detailViewMyPage'/>">마이 페이지</a>
				</div>
			</c:if>
		</div>
	</div>
</nav>
<!-- nav 끝 -->