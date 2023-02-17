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
					 		 <li class="side-menu"><a href="<c:url value='/myPage/myReservationList'/>">내 예약</a></li><hr>
					 		 <li class="side-menu"><a href="<c:url value='/myPage/myRoom'/>">내 방 목록</a></li><hr>
					 		 <li class="side-menu"><a href="<c:url value='/myPage/deleteMyPageForm/${mem.memId}'/>">회원탈퇴</a></li><hr>
					     </ul>
			</div>
					  
			 <div class="myReservation">
			 <h1>예약 내역</h1>		 		
		     <c:forEach var="rsv" items="${reservationList}">	    
		      <div class="reservation">
		     <div class="rsvDate"> ${fn:split(rsv.rsvDate,' ')[0] }</div>
		    
		     <div class="rsvDetail"><a href="<c:url value='/myPage/myReservationDetail/${rsv.roomNo}'/>"> 상세보기</a></div>
             <div class="roomImg"><img src="/image/registImg/${fn:split(rsv.roomImage, ',')[0]}" width="180" height="140" /></div>
              <div class="rsvAddress">${fn:split(rsv.roomAddress1, ' ')[0]} ${fn:split(rsv.roomAddress1, ' ')[1]}</div>
              <div class="roomName">${rsv.roomName }</div>
              <div class="rsvPeriod">${rsv.rsvPeriod } 주 
               <span id="rsvPay"><fmt:formatNumber value="${rsv.rsvPay}" pattern="#,###"/>원</span>
               </div>
           </div>
            </c:forEach>
          </div>
	
	<footer>
        <c:import url="/WEB-INF/views/footer.jsp"/>
     </footer>
		</body>
	</html>
	