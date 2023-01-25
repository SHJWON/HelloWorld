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
      <div class="reserveInfo">
      <div class="infoName">이름<input type="text"></div>
      <div class="infoTel">전화번호<input type="text"></div>
      <div class="infoDate">예약날짜<input type="text"></div>      	 
      </div>
      </div>
	</body>
</html>
