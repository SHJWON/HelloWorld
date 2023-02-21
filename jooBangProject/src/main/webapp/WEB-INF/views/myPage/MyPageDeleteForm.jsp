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
		<c:import url="/WEB-INF/views/head.jsp"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/mypage.css'/>">
		
	</head>
	<body>
		 <div id="wrap">
  <nav id="nav">
  <c:import url="/WEB-INF/views/top.jsp"/>
  </nav>
  
				<div class="category">
				<form id="myPageForm" class="myPageForm" method="post" action="<c:url value='/myPage/updateMyPage'/>">
					<h1>마이 페이지</h1>
					<hr>
					  <div class="profileBox" id="profileBox">
					  <div class="PhotoBox" id="PhotoBox">
					  <img class="profile" src="/image/default_profile.png">
					  </div>
				  <ul id="ul">
					 		 <li class="side-menu"><a href="<c:url value='/myPage/updateMyPageForm'/>">내 정보 수정</a></li><hr>
					 		 <li class="side-menu"><a href="<c:url value='/myPage/myBoardList'/>">내 글목록</a></li><hr>
					 		 <li class="side-menu"><a href="<c:url value='/myPage/myReservation'/>">내 예약</a></li><hr>
					 		 <li class="side-menu"><a href="<c:url value='/myPage/myRoom'/>">내 방 목록</a></li><hr>
					 		 <li class="side-menu"><a href="<c:url value='/myPage/deleteMyPageForm'/>">회원탈퇴</a></li><hr>
					     </ul>
					 </form>
					  </div>
	
				   </div>
				
				<div id="mypage">
					<form id="myPageForm" class="myPageForm" method="post" action="<c:url value='/myPage/deleteMyPage'/>">
						
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
		
	
	</body>
	<footer>
        <!-- bottom -->
        <c:import url="/WEB-INF/views/footer.jsp"/>
    </footer>
</html>