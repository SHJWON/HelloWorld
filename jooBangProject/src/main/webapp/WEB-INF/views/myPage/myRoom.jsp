<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>myPage</title>
		<c:import url="/WEB-INF/views/head.jsp"/>
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/MypageForm.js'/>"></script>
		<link rel="stylesheet" href="<c:url value='/css/myPage.css' />">
	
</head>
	
	<body>
	
      <c:import url="/WEB-INF/views/top.jsp"/>
   
                   
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
					   
			 <div class="myRoom">
		    <h2 class="myRoomTitle">내 방 목록   <input type="button" id="deleteRoomBtn" value="삭제"></h2>
		     <c:forEach var="room" items="${roomList}">
         <li>    
            <div class="mainATeg">
            <label class="check_btn">
           <input type="checkbox" class="chkDelete" data-roomNo="${room.roomNo }">
           <span class="icon"></span>
           </label>
              <a href="/roominfo/${room.roomNo}">
                  <img class="roomImg" src="/images/registImg/${fn:split(room.roomImage, ',')[0]}" width="260" height="200" />
              
                <h5>${fn:split(room.roomAddress1, ' ')[0]} ${fn:split(room.roomAddress1, ' ')[1]}</h5>
                <h4><span id="line_limit">${room.roomName}</span></h4>
                <h5>방 개수: ${room.roomBCount} |  화장실 개수: ${room.roomRCount}</h5>
                <h5><fmt:formatNumber value="${room.roomRent}" pattern="#,###"/>￦ / 주</h5>
              </a> 		
            </div>
          </li>
          </c:forEach>
		</div>
	<footer>
        <c:import url="/WEB-INF/views/footer.jsp"/>
     </footer>
		</body>
	</html>
	