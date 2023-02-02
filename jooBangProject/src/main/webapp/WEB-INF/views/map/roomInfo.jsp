<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1.0, user-scalable=no">
<c:import url="/WEB-INF/views/head.jsp" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/roomInfo.css' />">
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=yaysmxugs9"></script>
<script src="<c:url value='/js/wishList.js' />"></script>
<script src='//unpkg.com/emojionearea/dist/emojionearea.min.js'></script>
<title>${room.roomName}</title>
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/views/top.jsp" />
		<input type="hidden" id="sid" name="memId" value="${sessionScope.sid}">
		<input type="hidden" id="roomNo" name="roomNo" value="${room.roomNo}">
		<section>
			<div class="section_slideContainer">
				<div class="slideWrap">
					<c:forTokens items="${room.roomImage}" delims="," var="item">
						<div class="slideImgWrapper">
							<img class="slideImg" src="/image/registImg/${item}"><br />
						</div>
					</c:forTokens>
				</div>
			</div>
			<div class="section_contentsContainer">
				<div class="section_contentsWrapper">
					<div class="roomInfo1Container">
						<div class="roomInfo1Wrapper">
							<h1>${room.roomName}</h1>
							<div style="white-space: pre-line;" class="roomInfoDesciption">${room.roomDecription }</div>
							<!-- 가격 정보 -->
							<div class="InfoBoxCountainer" id="payInfo">
								<div class="InfoBoxWrapper">
									<div class="InfoTitle">
										<h2>가격 정보</h2>

									</div>
									<div class="InfoBox">
										<div class="Info_least">최소 예약기간 : ${room.roomLeastPay }주
										</div>
									</div>
									<div class="InfoBox">
										<div class="InfoTitle">주세</div>
										<div class="InfoContents">
											<fmt:formatNumber value="${room.roomRent}" pattern="#,###" />
										</div>
									</div>
									<div class="InfoBox">
										<div class="InfoTitle">보증금</div>
										<div class="InfoContents">
											<fmt:formatNumber value="${room.roomDeposit}" pattern="#,###" />
										</div>
									</div>
									<div class="InfoBox">
										<div class="InfoTitle">관리비</div>
										<div class="InfoContents">
											<fmt:formatNumber value="${room.roomAdministrationFee}"
												pattern="#,###" />
											<div id="depositInfoBox">
												<p>포함되는 항목</p>
												<c:forEach items="${fn:split(room.roomPayOption,',')}"
													var="item">
													<c:if test="${item=='electric' }">
														전기료
													</c:if>
													<c:if test="${item=='internetFee' }">
														인터넷
													</c:if>
													<c:if test="${item=='gas' }">
														가스비
													</c:if>
													<c:if test="${item=='water' }">
														수도세
													</c:if>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="InfoBox">
										<div class="InfoTitle">장기예약 할인</div>
										<div class="InfoContents">${room.roomDiscount}주 ▶
											${room.roomDiscountFee }%</div>
									</div>
								</div>
							</div>
							<!-- 상세 정보 -->
							<div class="InfoBoxCountainer" id="detailInfo">
								<div class="InfoBoxWrapper">
									<div class="InfoTitle">
										<h2>상세 정보</h2>
									</div>
									<div class="InfoBox">
										<div class="InfoTitle">방종류</div>
										<div class="InfoContents">
											<c:if test="${room.roomBuilding=='single' }">
												단독주택
											</c:if>
											<c:if test="${room.roomBuilding=='Multi-unit' }">
												다가구 주택
											</c:if>
											<c:if test="${room.roomBuilding=='Multi-Household' }">
												빌라/연립/다세대
											</c:if>
											<c:if test="${room.roomBuilding=='commercial' }">
												상가주택
											</c:if>
										</div>
									</div>
									<div class="InfoBox">
										<div class="InfoTitle">구조</div>
										<div class="InfoContents">
											<span class="InfoTitle Sub">침실 ${room.roomRCount }</span> 
											<span class="InfoTitle Sub">화장실 ${room.roomBCount } </span>
											<span class="InfoTitle Sub">거실 ${room.roomLCount } </span>
											<span class="InfoTitle Sub">부엌 ${room.roomKCount }</span>
										</div>
									</div>
									<div class="InfoBox">
										<div class="InfoTitle">엘레베이터</div>
										<div class="InfoContents">
											<c:choose>
												<c:when test="${room.infoElevator=='yes'}">있음</c:when>
												<c:otherwise>
													없음
												</c:otherwise>
											</c:choose>
										</div>
									</div>
									<div class="InfoBox">
										<div class="InfoTitle">주차</div>
										<div class="InfoContents">
											<c:choose>
												<c:when test="${room.infoParking=='free_parking'}">무료주차</c:when>
												<c:when test="${room.infoParking=='pay_parking'}">유료주차</c:when>
												<c:otherwise>
													없음
												</c:otherwise>
											</c:choose>
										</div>
									</div>
								</div>
							</div>
							<!-- 옵션 정보 -->
							<div class="InfoBoxCountainer" id="basicOptionBox">
								<div class="InfoBoxWrapper">
									<div class="InfoTitle">
										<h2>기본 옵션</h2>
									</div>
									<div class="InfoBox OptionBox" id="basicOptionBox">
										<input type="hidden" id="basicOption"
											value="${room.basicOption }">
										<div class="optionWrapper bed">
											<div class="optionImg">
												<img src="<c:url value='/image/optionImg/bed.png' />">
											</div>
											<div class="optionTitle">침대</div>
										</div>
										<div class="optionWrapper refrigerator">
											<div class="optionImg">
												<img
													src="<c:url value='/image/optionImg/refrigerator.png' />">
											</div>
											<div class="optionTitle">냉장고</div>
										</div>
										<div class="optionWrapper microwave">
											<div class="optionImg">
												<img src="<c:url value='/image/optionImg/microwave.png' />">
											</div>
											<div class="optionTitle">전자렌지</div>
										</div>
										<div class="optionWrapper air-conditiner">
											<div class="optionImg">
												<img
													src="<c:url value='/image/optionImg/air-conditioner.png' />">
											</div>
											<div class="optionTitle">에어컨</div>
										</div>
										<div class="optionWrapper washing-machine">
											<div class="optionImg">
												<img
													src="<c:url value='/image/optionImg/washing-machine.png' />">
											</div>
											<div class="optionTitle">세탁기</div>
										</div>
									</div>
								</div>
							</div>
							<div class="InfoBoxCountainer" id="addtionalOptionBox">
								<div class="InfoBoxWrapper">
									<div class="InfoTitle">
										<h2>추가 옵션</h2>
									</div>
									<div class="InfoBox OptionBox" id="addtionalOptionBox">
										<input type="hidden" id="addtionalOption"
											value="${room.addtionalOption }">
										<c:forTokens var="option" items="${room.addtionalOption }"
											delims=",">
											<div class="optionWrapper">
												<div class="optionImg">
													<img src="<c:url value='/image/optionImg/${ option}.png'/>">
												</div>
												<div class="optionTitle">${option }</div>
											</div>
										</c:forTokens>
									</div>
								</div>
							</div>
							<div class="InfoBoxCountainer" id="address">
								<div class="InfoBoxWrapper">
									<div class="InfoTitle">
										<h2>주소 정보</h2>
									</div>
									<div class="InfoBox">
										<div id="roomAddress">
											<img style="width: 32px;" src="/image/mark.png">${room.roomAddress1}</div>
										<div id="roomAddressImgWrapper"
											style="width: 100%; height: 400px;"></div>

										<script>
											var position = new naver.maps.LatLng(${room.lat}, ${room.lng});
	
											var map = new naver.maps.Map('roomAddressImgWrapper', {
											    center: position,
											    zoom: 20
											});
	
											var markerOptions = {
											    position: position.destinationPoint(0, 0),
										        title:"markImg",
											    map: map,
											    icon: {
											        url: '/image/mark.png',
											        size: new naver.maps.Size(50, 52),
											        scaledSize: new naver.maps.Size(55, 32),
											        origin: new naver.maps.Point(3, -10),
											        anchor: new naver.maps.Point(25, 26)
											    }
											};
	
											var marker = new naver.maps.Marker(markerOptions);
										</script>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="roomInfo2Container">
						<div class="roomInfo2Wrapper">
							<div class="wishWrapper">
								<div class="room_info">
									<div class="rentfee">
										<span><fmt:formatNumber
												value="${room.roomRent+room.roomDeposit }" pattern="#,###" /></span>원/1주
									</div>
									<div class="roomInfo2_address">
										<img src="/image/location.png">
										${room.roomAddress1}
									</div>
									<div class="roomInfo2_room">
										<img src="/image/room.png">
										<span class="InfoTitle Sub">침실 ${room.roomRCount } |</span> 
										<span class="InfoTitle Sub">화장실 ${room.roomBCount } |</span>
										<span class="InfoTitle Sub">거실 ${room.roomLCount } |</span>
										<span class="InfoTitle Sub">부엌 ${room.roomKCount }</span>
									</div>
									<div class="reservation_Btn start_date">
									<p class="reservation_title">체크인</p>
										<input type="date"
										         id="date"
										         value="2023-02-01">
									</div>
									<div class="reservation_Btn finish_date">
										<p class="reservation_title">체크아웃</p>
										<input type="date"
										         id="date"
										         value="2023-02-01">
									</div>
									<button class="reservation_SubmitBtn" type="button">예약하기</button>
								</div>
								<div class="host_info">
									<div class="hostName">호스트 이름</div>
									<div class="host_infoBtnWrapper">
										<div class="host_contectBtn">
											연락하기
										</div>
										<input type="checkbox" id="wishList_CheckBtn">
										<label id="wishList_CheckBtnLabel" for="wishList_CheckBtn">
											<div class="host_wishBtn">
												<img class="host_wishBtnImg" src="/image/star.svg">
												<span id="wish_count">${wish_count}</span> 
											</div>
										</label>
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<footer>
			<c:import url="/WEB-INF/views/footer.jsp" />
		</footer>
	</div>
</body>
</html>