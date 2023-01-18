<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <!-- nav 시작 -->
      <nav class="navContainer">
        <div class="mainNavItem navLogo">
        <a href="<c:url value='/map/mapView'/>"><img
            src="/image/회색 로고.png"
            id="logoImg"
            width="100"
            height="70"
          /></a>
        </div>

        <div class="mainNavItem navSubMenu">
          <ul class="subMenu">
            <li class="subMenu" id="subMenuMap"><a href="<c:url value='/map/mapView'/>">지도</a></li>
            <li class="subMenu" id="subMenuWish"><a href="<c:url value='#'/>">찜목록</a></li>
            <li class="subMenu" id="subMenuRoom"><a href="<c:url value='/ragist/registForm'/>">방올리기</a></li>
            <li class="subMenu" id="subMenuCommunity"><a href="<c:url value='/board/boardListAll/${1}'/>">커뮤니티</a></li>
            <li class="subMenu" id="subMenuRental"><a href="<c:url value='/furniture/furnitureRentalView'/>">가구대여</a></li>
          </ul>
        </div>

        <div class="mainNavItem navSign">
          <div class="signBtnBox" id="loginBtn">
            <a href="<c:url value='/member/login'/>" id="mainLogin">로그인</a>
          </div>
          <div id="mainLS">|</div>
          <div class="signBtnBox" id="signUpBtn">
            <a href="<c:url value='/member/signUp'/>" id="mainSignUp"
              >회원가입</a
            >
          </div>
        </div>
      </nav>
      <!-- nav 끝 -->