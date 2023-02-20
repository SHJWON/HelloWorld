<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>myPage</title>
	<c:import url="/WEB-INF/views/head.jsp"/>
	<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
	<link rel="stylesheet" href="<c:url value='/css/myPage.css' />">

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
				<form id="myPageForm" class="myPageForm" method="post" action="<c:url value='/myPage/updateMyPage'/>">
					<div class="myinfo">
						<table>
							<tr><td>아이디</td>
									<td colspan="2"><input type="text" name="memId" value="${mem.memId }" readonly></td></tr>
							<tr><td>성명</td>
									<td colspan="2"><input type="text" name="memName" value="${mem.memName }" readonly></td></tr>
							<tr><td>생년월일</td>
									<td colspan="2"><input type="text" name="memBirth" value="${mem.memBirth }" readonly></td></tr>
							<tr><td>별명 *</td>
									<td colspan="2"><input type="text" name="memNickName" value="${mem.memNickName }"></td></tr>
							<tr><td>전화번호 *</td>
									<td colspan="2"><input type="text" name="memHP" value="${mem.memHP }"></td></tr>
							<tr><td>이메일 *</td>
									<td colspan="2"><input type="text" name="memEmail" value="${mem.memEmail}" ></td></tr>
							<tr><td id="zipcode">우편번호 *</td>
									<td><input type="text" name="memZipcode" class="postcodify_postcode" id="memZipcode" value="${mem.memZipcode}" readonly></td>
								<td><button type="button" id="postcodify_search_button">검색</button></td></tr>
							<tr><td>도로명주소</td>
								<td colspan="2"><input type="text" name="memAddress1" class="postcodify_address" id="memAddress1" value="${mem.memAddress1}" readonly></td></tr>
							<tr><td>상세주소 *</td>
								<td colspan="2"><input type="text" name="memAddress2" class="postcodify_details" id="memAddress2" value="${mem.memAddress2}"></td></tr>
							<tr><td colspan="3">
							<input id="button" type="submit" value="수정">
							<input id="button" type="reset" value="취소"></td></tr>
						</table>
				      </div>
					</form>
			</div>
		
				  <!-- 주소 API 스크립트 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>

				  <footer>
				  <c:import url="/WEB-INF/views/footer.jsp"/>
				 </footer>
</body>
</html>
