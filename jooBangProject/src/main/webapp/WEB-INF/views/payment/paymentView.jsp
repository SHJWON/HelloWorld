<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<c:import url="/WEB-INF/views/head.jsp"/>
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
		 <link rel="stylesheet" href="<c:url value='/css/pay.css ' />">		 
		<title>Insert title here</title>
	</head>
	<body>
	<div id="wrap">
	  <nav id="nav">
        <c:import url="/WEB-INF/views/top.jsp"/>
      </nav>
      <h1>확인 및 결제</h1>
      <div class="reserveInfo">
      <h2>예약 정보</h2>
      <div class="reserveInfo2">
        <div class="infoName"><span id="bold">이름</span> <input type="text" value="${memVo.memName }"></div>
      <div class="infoTel"><span id="bold">전화번호</span><input type="tel" value="${memVo.memHP }"></div>
      <div class="infoEmail"><span id="bold">이메일</span><input type="email" value="${memVo.memEmail }"></div>     
  
      
      </div> 	 
      </div>
      <div class="payInfo">
      <h2>결제 정보</h2> 
      <div class="roomInfo">aaa</div>
     
      <div class="roomPrice">aaaa</div>
      <div class="roomPrice2">aaaa</div>
      
      </div>
      
      <div class="paysudan">
      <h2>결제 방법</h2>
      <hr>
      asdasd
      
      </div>
     <div class="paybutton"><button id="payBtn">결제하기</button></div>
      </div>
      
	</body>
</html>
