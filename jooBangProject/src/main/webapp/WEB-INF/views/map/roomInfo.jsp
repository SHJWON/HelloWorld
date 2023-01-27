<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<c:import url="/WEB-INF/views/head.jsp"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/roomInfo.css' />">
<script src="<c:url value='/js/wishList.js' />"></script>	
<title>방 등록하기</title>
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/views/top.jsp"/>
		<input type="hidden" id="sid" name="memId" value="${sessionScope.sid}">
		<input type="hidden" id="roomNo" name="roomNo" value="${room.roomNo}">
		<section>
			<div class="section_slideContainer">
				<div class="slideWrap">
					<c:forTokens items="${room.roomImage}" delims=","  var="item">
						<div class="slideImgWrapper">
						    <img class="slideImg" src="/image/registImg/${item}"><br/>
						</div>
					</c:forTokens>
				</div>
			</div>
			<div class="section_contentsContainer">
				<div class="section_contentsWrapper">
					<div class="roomInfo1Container">
						<div class="roomInfo1Wrapper">
							<h1>${room.roomName}</h1>
							<div id="roomAddress">${room.roomAddress1}</div>
							
							<div class="roomInfoBox" id="payInfo">
								<div class="payInfoBoxWrapper">
									<div class="payTitel"><h2>가격 정보</h2></div>
									<div class="payInfoBox">
										<div class="payTitle">주세</div>
										<div class="payContents">
											<fmt:formatNumber value="${room.roomRent}" pattern="#,###"/>
										</div>
									</div>
									<div class="payInfoBox">
										<div class="payTitle">보증금</div>
										<div class="payContents">
											<fmt:formatNumber value="${room.roomDeposit}" pattern="#,###"/>
										</div>
									</div>
									<div class="payInfoBox">
										<div class="payTitle">관리비</div>
										<div class="payContents">
											<fmt:formatNumber value="${room.roomAdministrationFee}" pattern="#,###"/>
										<div id="depositInfoBox">
											<p>포함되는 항목</p>
											<c:forEach items="${fn:split(room.roomPayOption,',')}" var="item">
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
								</div>
							</div>
						</div>
					</div>
					<div class="roomInfo2Container">
						<div class="roomInfo2Wrapper">
							<div class="wishWrapper">
								좋아요 : <span id="wish_count">${wish_count}</span>
								<input type="checkbox" id="wishList_CheckBtn">
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<footer>
        <c:import url="/WEB-INF/views/footer.jsp"/>
      </footer>
	</div>
	</body>
</html>