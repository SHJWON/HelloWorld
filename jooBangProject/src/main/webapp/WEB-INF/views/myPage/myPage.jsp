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
      <c:import url="/WEB-INF/views/top.jsp"/>         
					<form id="myPageForm" class="myPageForm" method="post" action="<c:url value='/myPage/updateMyPage'/>">
						<h1>마이 페이지</h1>
						<hr>
					    <div class="myInfo">
					   <div class="PhotoBox" >
					      <img class="profile" src="/image/default_profile.png">
					      </div>	  
				         <ul id="ul">
					 		 <li class="side-menu"><a href="<c:url value='/myPage/updateMyPageForm'/>">내 정보 수정</a></li><hr>
					 		 <li class="side-menu"><a href="<c:url value='/myPage/myBoardList'/>">내 글목록</a></li><hr>
					 		 <li class="side-menu"><a href="<c:url value='/myPage/myReservation'/>">내 예약</a></li><hr>
					 		 <li class="side-menu"><a href="<c:url value='/myPage/myRoom'/>">내 방 목록</a></li><hr>
					 		 <li class="side-menu"><a href="<c:url value='/myPage/deleteMyPageForm'/>">회원탈퇴</a></li><hr>
					     </ul>
			</div>
						 </form>
        
                       </div>
                        <div class="myinfo">
							<table class="infoTable">
                                <tr><td>아이디</td>
                                        <td colspan="2"><input type="text" name="memId" value="${mem.memId }" readonly></td></tr>
                                <tr><td>성명</td>
                                        <td colspan="2"><input type="text" name="memName" value="${mem.memName }" readonly></td></tr>
                                <tr><td>생년월일</td>
                                        <td colspan="2"><input type="text" name="memEmail" value="${mem.memBirth}" readonly></td></tr>
                                <tr><td>별명</td>
                                        <td colspan="2"><input type="text" name="memNickName" value="${mem.memNickName}" readonly></td></tr> 
                                <tr><td>전화번호</td>
                                        <td colspan="2"><input type="text" name="memHP" value="${mem.memHP }" readonly></td></tr>
                                <tr><td>이메일</td>
                                        <td colspan="2"><input type="text" name="memEmail" value="${mem.memEmail}" readonly></td></tr>
                                <tr><td id="zipcode">우편번호 </td>
                                        <td colspan="2"><input type="text" name="memZipcode" class="postcodify_postcode" id="memZipcode" value="${mem.memZipcode}" readonly></td></tr>
                                <tr><td>도로명주소</td>
                                    <td colspan="2"><input type="text" name="memAddress1" class="postcodify_address" id="memAddress1" value="${mem.memAddress1}" readonly></td></tr>
                                <tr><td>상세주소</td>
                                    <td colspan="2"><input type="text" name="memAddress2" class="postcodify_details" id="memAddress2" value="${mem.memAddress2}" readonly></td></tr>

                               </table>
                               <div class="infoButton">
								<a href="<c:url value='/myPage/updateMyPageForm/${mem.memId}'/>"><input id="infoBtn" type="button" value="회원정보수정" class="btn"></a>
								</div>
                           
                       </div>
			     	 
				 	 
				 	 <footer>
				      <c:import url="/WEB-INF/views/footer.jsp"/>
				     </footer>
	</body>
</html>
