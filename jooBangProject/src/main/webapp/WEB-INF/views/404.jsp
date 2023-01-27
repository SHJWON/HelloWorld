<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isErrorPage="true" %>
<% response.setStatus(200); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="/css/404.css">
		<title>404ErrorPage</title>
	</head>
	<body>
		<section id="errorPage">
		<div id="iconBox">
		<img src="/image/빵이 오른쪽.png" width="100" height="85">
    	<img src="/image/404.png" width="150" height="150">
    	<img src="/image/쭈.png" width="100" height="100" id="ZooIcon">
    	</div>
		<h1 data-test-id="text-404">새로운 페이지를 건설 중 입니다^^</h1>
		<p>더 좋은 서비스로 찾아뵙겠니다.</p>
		<p><a href="<c:url value='/'/>" id="404Btn">주세요 방으로 돌아가기</a></p>
    	</section>
    </body>
</html>
