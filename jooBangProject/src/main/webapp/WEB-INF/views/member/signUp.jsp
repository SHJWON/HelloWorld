<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>한국 대표팀 우승해조</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/signup.css'/>">
		<script src="<c:url value='/js/signup.js'/>"></script>
		<script src="<c:url value='/js/idCheck.js'/>"></script>
	</head>
	<style>
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>
</head>

<body>
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">회원가입</h4>
        <form class="validation-form" novalidate="">
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">이름</label>
              <input type="text" class="form-control" id="name" placeholder="" value="" required="">
              <div class="invalid-feedback">
                이름을 입력해주세요.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="nickname">별명</label>
              <input type="text" class="form-control" id="nickname" placeholder="" value="" required="">
              <div class="invalid-feedback">
                별명을 입력해주세요.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="email">이메일</label>
            <input type="email" class="form-control" id="email" placeholder="you@example.com" required="">
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>

          <div class="mb-3">
            <label for="address">주소</label>
            <input type="text" class="form-control" id="address" placeholder="서울특별시 강남구" required="">
            <div class="invalid-feedback">
              주소를 입력해주세요.
            </div>
          </div>

          <div class="mb-3">
            <label for="address2">상세주소<span class="text-muted">&nbsp;(필수 아님)</span></label>
            <input type="text" class="form-control" id="address2" placeholder="상세주소를 입력해주세요.">
          </div>

          <div class="row">
            <div class="col-md-8 mb-3">
              <label for="root">가입 경로</label>
              <select class="custom-select d-block w-100" id="root">
                <option value=""></option>
                <option>검색</option>
                <option>카페</option>
              </select>
              <div class="invalid-feedback">
                가입 경로를 선택해주세요.
              </div>
            </div>
            <div class="col-md-4 mb-3">
              <label for="code">추천인 코드</label>
              <input type="text" class="form-control" id="code" placeholder="" required="">
              <div class="invalid-feedback">
                추천인 코드를 입력해주세요.
              </div>
            </div>
          </div>
          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required="">
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="submit">가입 완료</button>
        </form>
      </div>
    </div>
    <footer class="my-3 text-center text-small">
      <p class="mb-1">© 2021 YD</p>
    </footer>
  </div>
  <script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>


</body></html>
	<body>
		<div id="wrap">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<div class="wrap">
				<div id="signUp">
					<form name="signUpForm" id="signUpForm" method="post"  action="<c:url value='/member/insert'/>">
						<h1>회원 가입</h1>
						<br>
						<h4>* 아이디</h4>
						<span class="input_area"><input type="text" maxlength="13" name="memId" id="memId"></span>
						<input type="hidden" name="checked_id" value="">
						<button type="button" id="idCheck">중복확인</button>
						<br><br>
						<h4>* 비밀번호</h4>
						<span class="input_area"><input type="password" maxlength="25" name="memPwd" id="memPwd" 
						placeholder="영문자+숫자+특수문자 조합"></span>
						<br><br>
						
						<h4>* 비밀번호 확인</h4>
						<span class="input_area"><input type="password" maxlength="25" name="memPwd2" id="memPwd2"></span>
						<label id="pwdResult"></label>
						<br><br>
						
						<h4>* 이름</h4>
						<span class="input_area"><input type="text" maxlength="5" name="memName" id="memName"></span>
						<br><br>
						
						<h4>연락처</h4>
						<span class="input_area"><input type="tel" maxlength="11" name="memHP" id="memHP"
						placeholder="ex) 01012345678"></span>
						<br><br>
											
						<h4>이메일</h4>
						<span class="input_area"><input type="email" name="memEmail" id="memEmail"></span>
						<br><br>
						
						<h4>* 우편번호</h4>
						<span class="input_area"><input type="text" name="memZipcode" class="postcodify_postcode" id="memZipcode"
						readonly></span>
						<button type="button" id="postcodify_search_button">검색</button>
						<br><br>
						
						<h4>도로명주소</h4>
						<span class="input_area"><input type="text" name="memAddress1" class="postcodify_address" id="memAddress1" readonly></span>
						<br><br>
						
						<h4>상세주소</h4>
						<span class="input_area"><input type="text" name="memAddress2" class="postcodify_details" id="memAddress2"></span>
						
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
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
	</body>
	<footer>
        <!-- bottom -->
        <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
    </footer>
</html>