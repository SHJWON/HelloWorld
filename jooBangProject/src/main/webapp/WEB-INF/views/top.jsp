<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

       <div id="logoBox">
          <img
            src="/image/회색 로고.png"
            id="logoImg"
            width="100"
            height="70"
          />
        </div>

        <div id="subMenuBox">
          <ul class="subMenu">
            <li class="subMenu" id="subMenuMap">지도</li>
            <li class="subMenu" id="subMenuWish">찜목록</li>
            <li class="subMenu" id="subMenuRoom">방올리기</li>
            <li class="subMenu" id="subMenuCommunity">커뮤니티</li>
            <li class="subMenu" id="subMenuRental">가구대여</li>
          </ul>
        </div>

        <div class="signBtnBox">
          <button class="signBtnBox" id="loginBtn"><span>로그인</span></button>
          <button class="signBtnBox" id="signUpBtn"><span>회원가입</span></button>
        </div>