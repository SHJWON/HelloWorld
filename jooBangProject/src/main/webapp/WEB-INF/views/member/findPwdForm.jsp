<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		 <c:import url="/WEB-INF/views/head.jsp"/>
		<title>비밀번호 변경</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/findidpwd.css'/>">
		<script src="<c:url value='/js/changePwd.js'/>"></script>
	</head>
	<body>
	<div id="wrap">
	<c:import url="/WEB-INF/views/top.jsp"/>
		<div class="findbox">
			<div id="findId">
				<form id="findIdForm" name="findIdForm" method="post" action="/member/findPwd">
					<h1>비밀번호 찾기</h1>
						
					<h4>이름</h4>

					<input type="text" maxlength="15" id="memName" name="memName"
						placeholder="이름을 입력해 주세요." required>


					<h4>이메일</h4>

					<input type="text" maxlength="30" id="memEmail" name="memEmail"
						placeholder="이메일을 입력해 주세요." required>
					<button type="button" id="authBtn" class="btn" value="인증번호받기">인증번호받기</button>
					
					
					<h4>인증번호 입력</h4>
					<input type="text" id="emailCheck" name="emailCheck" class="textBox" placeholder="인증번호를 적어주세요.">
					<button type="button" id="checkBtn" class="btn" value="확인">확인</button>
					<button type="submit" value="찾기" class="btn" id="findBtn">찾기</button>


					<!-- <button type="submit">찾기</button>
					<button type="button" onClick="history.back()">취소</button> -->
				</form>
			</div>
		</div>
	</div>
	<footer>
        <c:import url="/WEB-INF/views/footer.jsp"/>
      </footer>
	</body>
</html>