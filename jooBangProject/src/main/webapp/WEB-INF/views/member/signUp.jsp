<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>주세요 방 회원가입</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/signup.css'/>">
</head>

<body>
	<img src="/image/logo.png" />
	<div class="container">
		<div class="wrapper">
			<div class="form-container">
				<form>
					<b>회 원 가 입</b>
					<p>양식에 맞추어 회원 정보를 입력해주세요.</p>
					<div class="form__group field">
						<input type="text" class="form__field" placeholder="아이디" name="ID" id='id' required />
						<button type="submit">중복확인</button> 
						<label for="id"class="form__label">아이디</label>
					</div>
					
					<div class="form__group field">
						<input type="password" class="form__field" placeholder="비밃번호" name="password" id='password' required /> 
							<label for="password" class="form__label">비밀번호</label>
					</div>

					<div class="form__group field">
						<input type="text" class="form__field" placeholder="성명" name="name" id='name' required /> 
							<label for="name" class="form__label">성명</label>
					</div>

					<div class="form__group field">
						<input type="text" class="form__field" placeholder="생년월일" name="birth" id='birth' required /> 
							<label for="birth" class="form__label">생년월일</label>
					</div>

					<div class="form__group field">
						<input type="text" class="form__field" placeholder="휴대폰 번호" name="PhoneNumber" id='PhoneNumber' required /> 
							<label for="PhoneNumber" class="form__label">휴대폰 번호</label>
					</div>
					
					<div class="form__group field">
						<input type="text" class="form__field" placeholder="닉네임" name="NickName" id='NickName' required /> 
							<label for="NickName" class="form__label">닉네임</label>
					</div>
					
					<div class="form__group field">
						<input type="text" class="form__field" placeholder="Email" name="email" id='Email' required /> 
							<label for="Email" class="form__label">Email</label>
					</div>
					
					<div class="form__group field">
						<input type="text" class="form__field" placeholder="Zipcode" name="Zipcode" id='Zipcode' required /> 
							<label for="Zipcode" class="form__label">우편번호</label>
					</div>
					
					<div class="form__group field">
						<input type="text" class="form__field" placeholder="상세주소" name="Address1" id='Address1' required /> 
							<label for="Address1" class="form__label">상세주소</label>
					</div>
					<div class="form__group field">
						<input type="text" class="form__field" placeholder="상세주소" name="Address2" id='Address2' required /> 
							<label for="Address1" class="form__label">상세주소</label>
					</div>
					
					
					
					
					
                  <button class="button">회원가입</button>
				</form>
			</div>
		</div>
	</div>
</body>

</html>