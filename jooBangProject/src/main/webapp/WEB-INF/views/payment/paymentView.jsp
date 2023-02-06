<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<script>    
	   var IMP = window.IMP; 
        IMP.init("imp02360371"); 
        function requestPay() {
            IMP.request_pay({
                pg : 'kakaopay',
                pay_method :'card',
                merchant_uid: "57008833-3123322", 
                name : '${roomVo.roomName }',
                amount : ${roomVo.roomRent+roomVo.roomDeposit },
                buyer_email : 'Iamport@chai.finance',
                buyer_name : '포트원 기술지원팀',
                buyer_tel : '010-1234-5678',
                buyer_addr : '서울특별시 강남구 삼성동',
                buyer_postcode : '123-456'
            }, function (rsp) { // callback
                if (rsp.success) {
                    console.log(rsp);
                } else {
                    console.log(rsp);
                }
            });
        }
    </script>
		<c:import url="/WEB-INF/views/head.jsp"/>
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
		 <link rel="stylesheet" href="<c:url value='/css/pay.css ' />">		 
		<title>Insert title here</title>
	</head>
	<body>
	<div id="wrap">
	
        <c:import url="/WEB-INF/views/top.jsp"/>
      <h1>확인 및 결제</h1>
      <div class="reserveInfo">
      <h2>예약 정보</h2>
      <div class="reserveInfo2">
       <div class="infoName"><span id="bold">이름</span> <input type="text" value="${memVo.memName }"></div>
      <div class="infoTel"><span id="bold">전화번호</span><input type="tel" value="${memVo.memHP }"></div>
      <div class="infoEmail"><span id="bold">이메일</span><input type="email" value="${memVo.memEmail }"></div>     
  
      
      </div> 	 
      </div>
      <div class="payInfo">
 
      <div class="roomInfo">
     <img src="/image/registImg/${fn:split(roomVo.roomImage, ',')[0]}">  
     <div class="roomName">
        ${roomVo.roomAddress1}<br>
      <b>${roomVo.roomName }</b>
      </div>
      </div>
      <div class="roomPrice">
      <h4><b>요금 세부정보</b></h4>
      주세 &nbsp;<fmt:formatNumber value="${roomVo.roomRent }" pattern="#,###" />원 *<br> 
      보증금 &nbsp;<fmt:formatNumber value="${roomVo.roomDeposit }" pattern="#,###" />원  
      <b><span id="roomPrice"><fmt:formatNumber value="${roomVo.roomRent+roomVo.roomDeposit }" pattern="#,###" />원</span></b>
      </div>
      <div class="roomPrice2">
      <b>총 금액    	<span id="roomPrice"><fmt:formatNumber value="${roomVo.roomRent+roomVo.roomDeposit }" pattern="#,###" />원</span></b>
 
      </div>
      </div>
      
      <div class="paysudan">
      <h2>결제 방법</h2>
      <hr>
     <input type="radio" id="Pay"name="Pay" value="kakaopay">카카오페이
	 <input type="radio" id="Pay"name="Pay" value="naverpay">네이버페이
      
      </div>
     <div class="paybutton"><button id="payBtn" onclick="requestPay()">결제하기</button></div>
      </div>
   
	</body>
</html>
