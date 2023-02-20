<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>STT 결과</title>
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/stt.js'/>"></script>
	</head>
	<body>
		<h3>STT : 음성파일에서 텍스트 추출</h3>
		<form id="sttForm">
			음성파일 업로드 : <input type="file" id="uploadFile" name="uploadFile">
			<input type="submit" value="결과 확인">
		</form>
		<hr>
		<h3>STT : 음성파일에서 텍스트 추출 결과</h3>
		<div id="resultDiv">
		</div><br><br>
		<div id="voiceDiv">
		</div><br><br>
		<a href="<c:url value='/'/>">index 페이지로 이동</a><br><br>
	</body>
</html>