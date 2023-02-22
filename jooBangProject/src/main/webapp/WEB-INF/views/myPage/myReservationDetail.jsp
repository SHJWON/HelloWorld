<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>


<c:import url="/WEB-INF/views/head.jsp" />
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/css/pay.css ' />">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/views/top.jsp" />
		<section>
			<form method="post" action="/payment/pay/payresult">
			<div class="InfoBoxContainer">
				<div class="InfoTitle">
					<a href="javascript:history.back();"><img src="<c:url value='/image/arrow_drop_down.svg'/>"></a>
					<h1>확인 및 결제</h1>
				</div>
				<div class="InfoBoxWrapper">
					<div class="InfoBox1">
						<div class="reserveInfo">
							<div class="reserveInfoWrapper">
								<h2>회원 정보</h2>
								<div class="reserveInfo2">
									<div class="infoDetail">
										<div class="infoDetialbold">이름</div>
										<div >${memVo.memName }</div>
									</div>
									<div class="infoDetail">
										<div class="infoDetialbold">전화번호</div>
										<div >${memVo.memHP }</div>
									</div>
									<div class="infoDetail">
										<div class="infoDetialbold">이메일</div>
										<div >${memVo.memEmail }</div>
									</div>
								</div>
							</div>
							<div class="reserveInfoWrapper editable">
								<h2>예약자 정보</h2>
								<p>호스트에게 표시되는 정보입니다.</p>
								<div class="reserveInfo2">
									<div class="infoDetail">
										<div class="infoDetialbold">이름</div>
										<input type="text" name="rsvName" value="${memVo.memName }">
									</div>
									<div class="infoDetail">
										<div class="infoDetialbold">전화번호</div>
										<input type="text" name="rsvHP" value="${memVo.memHP }">
									</div>
									<div class="infoDetail">
										<div class="infoDetialbold">이메일</div>
										<input type="text" name="rsvEmail" value="${memVo.memEmail }">
									</div>
								</div>
							</div>
							<div class="reserveInfoWrapper">
								<h2>예약 정보</h2>
								<div class="reserveInfo2">
									<div class="infoDetail">
										<div class="infoDetialbold">날짜</div>
										<input type="text" name="rsvCheckIn" value="${rsvVo.rsvCheckIn }" readonly> 
									</div>
									<div class="infoDetail">
										<div class="infoDetialbold">예약주간</div>
										<c:if test="${param.reservation_period ne 'direct' }">
											<c:set var="period" value="${param.reservation_period }"/>
											<input type="text" name="rsvPeriod" value="${rsvVo.rsvPeriod}"> 주
										</c:if>
										<c:if test="${param.reservation_period eq 'direct' }">
											<c:set var="period" value="${param.selboxDirect }"/> 
											<input type="text" name="rsvPeriod" value="${rsvVo.rsvPeriod}"> 주
										</c:if>
									</div>
								</div>
							</div>
						</div>
					
					</div>
					<div class="InfoBox2">
						<div class="payInfo">
			
							<div class="roomInfo">
								<input type="hidden" name="roomNo" value="${roomVo.roomNo }">
								<img src="/images/registImg/${fn:split(roomVo.roomImage, ',')[0]}">
								<div class="roomName">
									${roomVo.roomAddress1}<br> <b>${roomVo.roomName }</b>
								</div>
							</div>
							<div class="roomPrice">
								<h4>
									<b>요금 세부정보</b>
								</h4>
								
								주세 &nbsp;
								<fmt:formatNumber value="${roomVo.roomRent }" pattern="#,###" />
								원 * ${rsvVo.rsvPeriod}주<br>  

								할인금액 &nbsp;
								<c:if test="${rsvVo.rsvPeriod>=roomVo.roomDiscount}">
									${roomVo.roomDiscountFee }%
									<div style="font-weight: bold">
										할인 적용 금액 &nbsp;
										<c:set var="Reservationfee" value="${(roomVo.roomRent*rsvVo.rsvPeriod)*(1-(roomVo.roomDiscountFee/100))}"/>
										<fmt:formatNumber value="${(roomVo.roomRent*rsvVo.rsvPeriod)*(1-(roomVo.roomDiscountFee/100))}" pattern="#,###" /> 원
									</div>
								</c:if> 
								<c:if test="${rsvVo.rsvPeriod<roomVo.roomDiscount}">
									<c:set var="Reservationfee" value="${(roomVo.roomRent*rsvVo.rsvPeriod) }"/>
									없음
								</c:if> <br>
								
								보증금 &nbsp;
								<fmt:formatNumber value="${roomVo.roomDeposit }" pattern="#,###" />
								원 <br>
							</div>
							<div class="roomPrice2">
							<fmt:parseNumber value="${Reservationfee+roomVo.roomDeposit}" integerOnly="true"  type="number" var="rsvPay" />
								<b>총 금액 <span id="roomPrice"><input type="hidden" name="rsvPay" value='${rsvPay }'>
								<fmt:formatNumber
											value="${rsvPay }" pattern="#,###" />원</span></b>
							</div>
							
							</div>
						</div>
					</div>
				</div>
					</form>
		</section>
			</div>
		
	
</body>
</html>
