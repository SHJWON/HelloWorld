<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원 탈퇴</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/mypage.css'/>">
		<style>
			#wrap{
				margin:0 auto;
				width: 100%;
				text-align: center;
			}
			
			table{
				margin:0 auto;
				width: 400px;
			}			
		</style>
	</head>
	<body>
		<div id="wrap">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<div class="mypagebox">
				<div id="mypage">
					<form id="myPageForm" class="myPageForm" method="post" action="<c:url value='/myPage/deleteMyPage'/>">
						<h1>회원 탈퇴</h1>
						<hr>
						
						<table>
							<tr><td>회원명</td>
									<td><input type="text" name="memName" value="${mem.memName}" readonly></td></tr>	
							<tr><td>회원아이디</td>
									<td><input type="text" name="memId" value="${mem.memId}" readonly></td></tr>
							<tr><td>비밀번호</td>
									<td><input type="password" name="memPwd" required></td></tr>								
							<tr><td colspan="2">
								<input id="button" type="submit" value="탈퇴 확인">
							    <input id="button" type="reset" value="취소"></td></tr>
						</table>
					</form>
				</div>
			</div>
			<br><br>
			<a href="<c:url value='/'/>">메인 화면으로 이동</a>
		</div>
	</body>
	<footer>
        <!-- bottom -->
        <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
    </footer>
</html>