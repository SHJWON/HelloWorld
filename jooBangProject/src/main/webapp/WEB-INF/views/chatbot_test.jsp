<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<c:import url="/WEB-INF/views/head.jsp"/>
		<title>Insert title here</title>
		<script src="<c:url value='/js/chatbot.js'/>"></script>
		<link rel="stylesheet"  type="text/css" href="/css/chatbot.css">
	</head>
	<body>
		<div class="chatbotContainer">
			<div class="chatHeader">
				<span>빵챗</span>
				<button id="btnClose">X</button>
			</div>
			
			<!-- 채팅 답변 출력 -->
			<div id="chatBox"></div>
			
			<form id="chatbotForm">
				<input type="text" id="message" name="message" size="30" placeholder="메시지를 입력하세요">
				<input type="submit" value="전송">	
			</form>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
		</div>
	</body>
</html>