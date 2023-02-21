<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유해게시물</title>
<script src="https://kit.fontawesome.com/1d26a052eb.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/warning.css' />">
</head>
<body>
	<div class="warning_Container">
		<div class="warning_Wrapper">
			<div id="warning_Title">유해게시물로 의심됩니다!</div>
			<img id="warningImg" src="/image/쭈배트.png">
			<div id="warning_Content">
				불편을 드려서 죄송합니다.<br> 쭈가 현재 보시고 있는 게시물이<br> 유해 게시물인지 확인하고 있어요.<br>
				이전 페이지로 이동해주시길 바랍니다.<br> 
				<a href="/"><button type="button" id="warning_Button">이전 페이지로 이동</button></a>
			</div>
		</div>
	</div>
</body>
</html>