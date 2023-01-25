<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아이디 찾기</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/findidpwd.css'/>">
		<script src="<c:url value='/js/findIdForm.js'/>"></script>
	</head>
	<body>
	<div id="wrap">
		<div class="findbox">
			<div id="findId">
				<form id="findIdForm" name="findIdForm">
					<h1>아이디 찾기</h1>
						
					<h4>이름</h4>
					<span class="input_area"><input type="text" maxlength="15" id="findIdName" name="findIdName" 
					placeholder="이름을 입력해 주세요." required></span>
						
					<h4>이메일</h4>
					<span class="input_area"><input type="text" maxlength="30" id="findIdEmail" name="findIdEmail" 
					placeholder="이메일을 입력해 주세요." required></span>
					
					<button type="submit">찾기</button>
					<button type="button" onClick="history.back()">취소</button>
				</form>
			</div>
		</div>
	</div>
	</body>
	<footer>
    </footer>
</html>