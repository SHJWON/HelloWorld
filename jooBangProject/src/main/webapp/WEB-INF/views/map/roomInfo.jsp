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
<c:import url="/WEB-INF/views/chatbot_head.jsp" />
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
		<input type="hidden" id="result" name="result" value="${result}">
		<script type="text/javascript">console.log($('#result'))</script>
		<section>
			<div class="secrtion_wrapper">
				<div class="section_slideContainer">
					<div class="slideWrap">
						<div class="slideImgContainer">
							<c:forTokens items="${room.roomImage}" delims="," var="item">
								<div class="slideImgWrapper">
									<img class="slideImg" src="/image/registImg/${item}"><br />
								</div>
							</c:forTokens>
						</div>
						<div class="slidebuttonWrapper">
							<div class="slide_button left">
								<svg xmlns="http://www.w3.org/2000/svg" width="33" height="33"
									viewBox="0 0 33 33" style="flex: 0 0 auto;">
								<path fill="#FFF" fill-rule="nonzero"
										d="M11.646 7.646c.174-.173.443-.192.638-.057l.07.057 8.838 8.84-8.838 8.838c-.196.195-.512.195-.708 0-.173-.173-.192-.443-.057-.638l.057-.069 8.132-8.132-8.132-8.131c-.173-.174-.192-.443-.057-.638l.057-.07z"
										transform="translate(-1472.000000, -524.000000) translate(1456.000000, 508.000000) translate(16.346194, 16.485281)"></path>
							</svg>
							</div>
							<div class="slide_button right">
								<svg xmlns="http://www.w3.org/2000/svg" width="33" height="33"
									viewBox="0 0 33 33" style="flex: 0 0 auto;">
								<path fill="#FFF" fill-rule="nonzero"
										d="M11.646 7.646c.174-.173.443-.192.638-.057l.07.057 8.838 8.84-8.838 8.838c-.196.195-.512.195-.708 0-.173-.173-.192-.443-.057-.638l.057-.069 8.132-8.132-8.132-8.131c-.173-.174-.192-.443-.057-.638l.057-.07z"
										transform="translate(-1472.000000, -524.000000) translate(1456.000000, 508.000000) translate(16.346194, 16.485281)"></path>
							</svg>
							</div>					
						</div>
					</div>
				</div>
				<div class="section_contentsContainer">
					<div class="section_contentsWrapper">
						<div class="roomInfo1Container">
							<div class="roomInfo1Wrapper">
								<h1>${room.roomName}</h1>
								<div style="white-space: pre-line;" class="roomInfoDesciption">${room.roomDecription }</div>
								<!-- ?????? ?????? -->
								<div class="InfoBoxCountainer" id="payInfo">
									<div class="InfoBoxWrapper">
										<div class="InfoTitle">
											<h2>?????? ??????</h2>
										</div>
										<div class="InfoBox">
											<div class="Info_least">?????? ???????????? : ${room.roomLeastPay }???
											</div>
										</div>
										<div class="InfoBox">
											<div class="InfoTitle">??????</div>
											<div class="InfoContents">
												<fmt:formatNumber value="${room.roomRent}" pattern="#,###" />
											</div>
										</div>
										<div class="InfoBox">
											<div class="InfoTitle">?????????</div>
											<div class="InfoContents">
												<fmt:formatNumber value="${room.roomDeposit}"
													pattern="#,###" />
											</div>
										</div>
										<div class="InfoBox">
											<div class="InfoTitle">?????????</div>
											<div class="InfoContents">
												<fmt:formatNumber value="${room.roomAdministrationFee}"
													pattern="#,###" />
												<div id="depositInfoBox">
													<p>???????????? ??????</p>
													<c:forEach items="${fn:split(room.roomPayOption,',')}"
														var="item">
														<c:if test="${item=='electric' }">
														?????????
													</c:if>
														<c:if test="${item=='internetFee' }">
														?????????
													</c:if>
														<c:if test="${item=='gas' }">
														?????????
													</c:if>
														<c:if test="${item=='water' }">
														?????????
													</c:if>
													</c:forEach>
												</div>
											</div>
										</div>
										<div class="InfoBox">
											<div class="InfoTitle">???????????? ??????</div>
											<div class="InfoContents">${room.roomDiscount}??????
												${room.roomDiscountFee }%</div>
										</div>
									</div>
								</div>
								<!-- ?????? ?????? -->
								<div class="InfoBoxCountainer" id="detailInfo">
									<div class="InfoBoxWrapper">
										<div class="InfoTitle">
											<h2>?????? ??????</h2>
										</div>
										<div class="InfoBox">
											<div class="InfoTitle">?????????</div>
											<div class="InfoContents">
												<c:if test="${room.roomBuilding=='single' }">
												????????????
											</c:if>
												<c:if test="${room.roomBuilding=='Multi-unit' }">
												????????? ??????
											</c:if>
												<c:if test="${room.roomBuilding=='Multi-Household' }">
												??????/??????/?????????
											</c:if>
												<c:if test="${room.roomBuilding=='commercial' }">
												????????????
											</c:if>
											</div>
										</div>
										<div class="InfoBox">
											<div class="InfoTitle">??????</div>
											<div class="InfoContents">
												<span class="InfoTitle Sub">?????? ${room.roomRCount }</span> <span
													class="InfoTitle Sub">????????? ${room.roomBCount } </span> <span
													class="InfoTitle Sub">?????? ${room.roomLCount } </span> <span
													class="InfoTitle Sub">?????? ${room.roomKCount }</span>
											</div>
										</div>
										<div class="InfoBox">
											<div class="InfoTitle">???????????????</div>
											<div class="InfoContents">
												<c:choose>
													<c:when test="${room.infoElevator=='yes'}">??????</c:when>
													<c:otherwise>
													??????
												</c:otherwise>
												</c:choose>
											</div>
										</div>
										<div class="InfoBox">
											<div class="InfoTitle">??????</div>
											<div class="InfoContents">
												<c:choose>
													<c:when test="${room.infoParking=='free_parking'}">????????????</c:when>
													<c:when test="${room.infoParking=='pay_parking'}">????????????</c:when>
													<c:otherwise>
													??????
												</c:otherwise>
												</c:choose>
											</div>
										</div>
									</div>
								</div>
								<!-- ?????? ?????? -->
								<div class="InfoBoxCountainer" id="basicOptionBox">
									<div class="InfoBoxWrapper">
										<div class="InfoTitle">
											<h2>?????? ??????</h2>
										</div>
										<div class="InfoBox OptionBox" id="basicOptionBox">
											<input type="hidden" id="basicOption"
												value="${room.basicOption }">
											<div class="optionWrapper bed">
												<div class="optionImg">
													<img src="<c:url value='/image/optionImg/bed.png' />">
												</div>
												<div class="optionTitle">??????</div>
											</div>
											<div class="optionWrapper refrigerator">
												<div class="optionImg">
													<img
														src="<c:url value='/image/optionImg/refrigerator.png' />">
												</div>
												<div class="optionTitle">?????????</div>
											</div>
											<div class="optionWrapper microwave">
												<div class="optionImg">
													<img src="<c:url value='/image/optionImg/microwave.png' />">
												</div>
												<div class="optionTitle">????????????</div>
											</div>
											<div class="optionWrapper air-conditiner">
												<div class="optionImg">
													<img
														src="<c:url value='/image/optionImg/air-conditioner.png' />">
												</div>
												<div class="optionTitle">?????????</div>
											</div>
											<div class="optionWrapper washing-machine">
												<div class="optionImg">
													<img
														src="<c:url value='/image/optionImg/washing-machine.png' />">
												</div>
												<div class="optionTitle">?????????</div>
											</div>
										</div>
									</div>
								</div>
								<div class="InfoBoxCountainer" id="addtionalOptionBox">
									<div class="InfoBoxWrapper">
										<div class="InfoTitle">
											<h2>?????? ??????</h2>
										</div>
										<div class="InfoBox OptionBox" id="addtionalOptionBox">
											<input type="hidden" id="addtionalOption"
												value="${room.addtionalOption }">
											<c:forTokens var="option" items="${room.addtionalOption }"
												delims=",">
												<div class="optionWrapper">
													<div class="optionImg">
														<img
															src="<c:url value='/image/optionImg/${ option}.png'/>">
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
											<h2>?????? ??????</h2>
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
													value="${room.roomRent+room.roomDeposit }" pattern="#,###" /></span>???/1???
										</div>
										<div class="roomInfo2_address">
											<img src="/image/location.png"> ${room.roomAddress1}
										</div>
										<div class="roomInfo2_room">
											<img src="/image/room.png"> <span class="InfoTitle Sub">??????
												${room.roomRCount } |</span> <span class="InfoTitle Sub">?????????
												${room.roomBCount } |</span> <span class="InfoTitle Sub">??????
												${room.roomLCount } |</span> <span class="InfoTitle Sub">??????
												${room.roomKCount }</span>
										</div>
										<div>
											<form method="post"
												action="<c:url value='/payment/pay/${roomNo}' />">
												<div class="reservation_Btn start_date">
													<p class="reservation_title">?????????</p>
													<input type="date" name="reservation_date">
												</div>
												<div class="reservation_Btn period">
													<p class="reservation_title">????????????</p>
													<select id="reservation_period" name="reservation_period">
														<option value="1">1???</option>
														<option value="2">2???</option>
														<option value="3">3???</option>
														<option value="4">4???</option>
														<option value="5">5???</option>
														<option value="6">6???</option>
														<option value="7">7???</option>
														<option value="8">8???</option>
														<option value="direct">?????? ??????</option>
													</select>
												</div>

												<div id="selboxDirect">
													<div id="selboxWarning">??????????????? ????????? ???????????????.</div>
													<input type="text" name="selboxDirect" /> ???
												</div>

												<c:if test="${empty sessionScope.sid }">
													<button class="reservation_SubmitBtn" type="button">????????????</button>

													<script>
													$(".reservation_SubmitBtn").click(function(){
														alert("???????????? ????????? ???????????????.");
													});
												</script>
												</c:if>
												<c:if test="${not empty sessionScope.sid }">
													<button class="reservation_SubmitBtn" type="submit">????????????</button>
												</c:if>
											</form>
										</div>
									</div>
									<div class="host_info">
										<div class="hostName">????????? ??????</div>
										<div class="host_infoBtnWrapper">
											<div class="host_contectBtn">????????????</div>
											<input type="checkbox" id="wishList_CheckBtn"> <label
												id="wishList_CheckBtnLabel" for="wishList_CheckBtn">
												<div class="host_wishBtn">
													<img class="host_wishBtnImg" src="/image/star.svg"> <span
														id="wish_count">${wish_count}</span>
												</div>
											</label>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<c:import url="/WEB-INF/views/chatbot_test.jsp" />
		</section>
		<footer>
			<c:import url="/WEB-INF/views/footer.jsp" />
		</footer>
	</div>
</body>
</html>