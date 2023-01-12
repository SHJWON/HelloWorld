<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="UTF-8">
        <title>로그인</title>
        <link rel="stylesheet" type="text/css" href="<c:url value='/css/login.css'/>">
		 <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <script src="<c:url value='/js/js.js'/>"></script>
    </head>
    <body>
    <img src="/image/logo.png"/>
     <div class="container">
      <div class="box"></div>
       <div class="container-forms">
        <div class="container-info">
         <div class="info-item">
          <div class="table">
           <div class="table-cell">
            <p>
              계정이 있으신가요?
            </p>
            <div class="btn">
              로그인
            </div>
          </div>
        </div>
      </div>
      <div class="info-item">
        <div class="table">
          <div class="table-cell">
            <p>
              계정이 기억나시지 <br>않으신가요?
            </p>
            <div class="btn">
              아이디 찾기
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container-form">
      <div class="form-item log-in">
        <div class="table">
          <div class="table-cell">
            <input name="ID" placeholder="ID" type="text" /><input name="Password" placeholder="Password" type="Password" />
            <div class="btn">
              로그인 
            </div>
          </div>
        </div>
      </div>
      <div class="form-item sign-up">
        <div class="table">
          <div class="table-cell">
            <input name="FullName" placeholder="가입하실때 이름을 입력해주세요" type="text" />
            <input name="email" placeholder="가입하실때 Email을 기입해주세요" type="text" />
            <div class="btn">
              아이디 찾기
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
  
    </body>
</html>
