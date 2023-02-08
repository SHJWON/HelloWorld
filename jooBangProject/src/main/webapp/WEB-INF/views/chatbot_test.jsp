<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="chatbot_btn">
	<img src="<c:url value='/image/chatbot.png'/>">
</div>


<div class="modal-container">
	<div class="chatbot_modal">
		<div class="chatbotContainer">
			<div class="chatHeader">
				<span>빵챗</span>
				<button id="btnClose">X</button>
			</div>

			<!-- 채팅 답변 출력 -->
			<div id="chatBox"></div>

			<form id="chatbotForm">
				<input type="text" id="message" name="message" size="30"
					placeholder="메시지를 입력하세요"> <input type="submit" value="전송">
			</form>
		</div>
	</div>
</div>