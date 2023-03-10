<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>주세요 방 회원가입</title>
<c:import url="/WEB-INF/views/head.jsp" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/signup.css'/>">
<script src="<c:url value='/js/idCheck.js'/>"></script>
<script src="<c:url value='/js/signUp.js'/>"></script>

</head>

<body>
	<div id="wrap">
		<!-- top -->
		<c:import url="/WEB-INF/views/top.jsp" />
		<div class="wrap">
			<div id="signUp">
				<form name="signUpForm" id="signUpForm" method="post" action="<c:url value='/member/insert'/>">
					<h1>회원 가입</h1>
					<br>
					<h4>아이디</h4>
					<span class="input_area"><input type="text" maxlength="13" name="memId" id="memId" placeholder="아이디를 입력해 주세요"></span> 
					<input type="hidden" name="checked_id" value="">
					<button type="button" id="idCheck">중복확인</button>
					<br>
					<br>

					<h4>비밀번호</h4>
					<span class="input_area"><input type="password"
						maxlength="25" name="memPwd" id="memPwd"
						placeholder="영문자+숫자+특수문자 조합"></span> <br>
						<div id=pwdcheck1></div>
					<br>

					<h4>비밀번호 확인</h4>
					<span class="input_area"><input type="password"
						maxlength="25" name="memPwd2" id="memPwd2"></span> <label
						id="pwdResult"></label> <br>
						<div id=pwdcheck2></div>
					<br>

					<h4>이름</h4>
					<span class="input_area"><input type="text" maxlength="10"
						name="memName" id="memName"></span> <br>
					<br>


					<h4>닉네임</h4>
					<span class="input_area"><input type="text" maxlength="20"
						name="memNickName" id="memNickName"></span> <br>
					<br>

					<h4>생년월일</h4>
					<span class="input_area"><input type="text" maxlength="9"
						name="memBirth" id="memBirth"></span> <br>
					<br>

					<h4>연락처</h4>
		            	<span class="input_area"><input type="text" maxlength="11"
						name="memHP" id="memHP" placeholder="ex)01012345678"></span><br>
					<br>

					<h4>이메일</h4>
					<span class="input_area"><input type="email" name="memEmail"
						id="memEmail"></span> <br>
					<br>

					<h4>우편번호</h4>
					<span class="input_area"><input type="text"
						name="memZipcode" class="postcodify_postcode" id="memZipcode"
						readonly></span>
					<button type="button" id="postcodify_search_button">검색</button>
					<br>
					<br>

					<h4>도로명주소</h4>
					<span class="input_area"><input type="text"
						name="memAddress1" class="postcodify_address" id="memAddress1"
						readonly></span> <br>
					<br>

					<h4>상세주소</h4>
					<span class="input_area"><input type="text"
						name="memAddress2" class="postcodify_details" id="memAddress2"></span>

					<div class="btnArea">
						<button type="button" id="joinBtn" onclick="signupCheck();">가입하기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- 주소 API 스크립트 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script>
		$(function() {
			$("#postcodify_search_button").postcodifyPopUp();
		});
	</script>
</body>
<footer>
	<!-- bottom -->
	<c:import url="/WEB-INF/views/footer.jsp" />
</footer>
</html>
