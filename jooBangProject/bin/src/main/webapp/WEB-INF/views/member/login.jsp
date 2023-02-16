<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="UTF-8">
        <c:import url="/WEB-INF/views/head.jsp"/>
        <title>로그인</title>
        <link rel="stylesheet" type="text/css" href="<c:url value='/css/login.css'/>">
        <script src="<c:url value='/js/login.js'/>"></script>
        <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
        <script src="<c:url value='/js/nlogin.js'/>"></script>
        
    </head>
		<body>
			<div id="wrap">
			<c:import url="/WEB-INF/views/top.jsp"/>
			<div class="loginbox">
				<div id="login">
					<form id="loginForm" name="loginForm">
						<h1>로그인</h1>
		
						<h4>아이디</h4>
						<span class="input_area">
						<input type="text" maxlength="13" id="id" name="id" value="${memId}" placeholder="아이디를 입력해 주세요." required />
						</span>
		
						<h4>비밀번호</h4>
						<span class="input_area"><input type="password" maxlength="15" id="pwd" name="pwd" placeholder="비밀번호를 입력해 주세요." required>
						</span>
						<ul>
							<li><a href="<c:url value="/member/findIdForm"/>">아이디 찾기</a></li>
							<li><a href="<c:url value="/member/findPwdForm"/>">비밀번호 찾기</a></li>
							<li><a href="<c:url value="/member/TOS"/>">회원가입</a></li>
							</ul>
						    <%-- <div id="sociallogin">
				            <p id="social"> </p>
				            <a id="naverIdLogin_loginButton" href="javascript:void(0)"><img id="nlogin" src="<c:url value='/image/naver.png'/>" ></a>
				            <img id="klogin" src="<c:url value='/image/kakao.png'/>">
				            <img id="glogin" src="<c:url value='/image/google.png'/>">
				            </div> --%>
							<button type="submit">로그인</button>
						
						</form>
					</div>
				</div>
			</div>
			<footer>
        <c:import url="/WEB-INF/views/footer.jsp"/>
      </footer>
		</body>
		</html>
