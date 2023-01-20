<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<c:import url="/WEB-INF/views/head.jsp"/>
<title>방 등록하기</title>
<link rel="stylesheet" href="css/nav.css">
<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
<script src="js/registMove.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
			var qty = [1,1,1,1];
		
			// 주문수량 변경 함수
			function qtyChange(index, num){
				qty[index] = qty[index] + num;
				if(qty[index] < 0) qty[index] = 0;
				// 주문액 계산하는 함수 호출
				var roomQty = $('.roomQty')[index];
				roomQty.value = qty[index];
			}
		
		</script>
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/views/top.jsp"/>
		<section>
			<div class="room__Box show">
				<div class="intro">
					<div>
						<h1>방정보를 등록</h1>
						<h2>기본적인 방 정보를 입력합시다.</h2>
					</div>
					<div>
						<img src="image/logo.png">
					</div>
				</div>
			</div>
			<div class="room__Box hidden">
				<div class="room_info building">
					<div>
						<h1>건물 유형</h1>
						<h2>건물 유형을 입력해주세요.</h2>
					</div>
					<div class="questionContainer">
						<form>
							<div class="buttonWrapper">
								<input type="radio" id="single" name="building" value="single">
								<label for="single"> 단독주택 </label>
							</div>
							<div class="buttonWrapper">
								<input type="radio" id="Multi-unit" name="building"
									value="Multi-unit"> <label for="Multi-unit">
									다가구 주택 </label>
							</div>
							<div class="buttonWrapper">
								<input type="radio" id="Multi-Household" name="building"
									value="Multi-Household"> <label for="Multi-Household">
									빌라/연립/다세대 </label>
							</div>
							<div class="buttonWrapper">
								<input type="radio" id="commercial" name="building"
									value="commercial"> <label for="commercial">
									상가주택 </label>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="room__Box hidden">
				<div class="room_info address">
					<div>
						<h1>방 주소</h1>
						<h2>방 주소를 입력합시다.</h2>
					</div>
					<div class="questionContainer">
						<div class="Address_SearchBox">
							<span class="Address_AddressInputWrapper">						
								<input class="Address_AddressInput" id="zipcode" type="text" placeholder="우편 번호" readonly>
							</span>
							<button type="button" class="Button_AddressSearchBtn">주소
								검색</button>
						</div>
						<p>(지번, 도로명, 아파트명) <br> 예: 청담동 40-17, 학동로 55길 17, 청담 래미안</p>
						<span class="Address_AddressInputWrapper">
							<input class="Address_AddressInput" id="address1" type="text" placeholder="주소지" readonly>
						</span>
						<span class="Address_AddressInputWrapper input_available">
							<input class="Address_AddressInput" id="address2" type="text" placeholder="상세 주소">
						</span>
						<p class="warning_info">상세 주소는 계약 완료 후 공개됩니다.</p>
					</div>
				</div>
			</div>
			<div class="room__Box hidden">
				<div class="room_info count">
					<div>
						<h1>구조</h1>
						<h2>침대 유형과 같은 세부 사항은 나중에 추가하실 수 있습니다.</h2>
					</div>
					<div class="questionContainer">
						<div class="countBoxWrap">
							<div class="count_countBox">
								<div class="room_title">침실</div>
								<div class="room_btn"> 
									<button class="up_btn" value="+" onClick="qtyChange(0,1)"><img src='<c:url value="image/expand_circle_down.svg"/>'></button>
									<div class="count_num"><input type="text" class="roomQty" name="roomQty" size="1" value="1" readonly></div>
									<button class="down_btn" value="-" onClick="qtyChange(0,-1)"><img src='<c:url value="image/expand_circle_down.svg"/>'></button>
								</div>
							</div>
						</div>
						<div class="countBoxWrap">
							<div class="count_countBox">
								<div class="room_title">화장실</div>
								<div class="room_btn"> 
									<button class="up_btn" value="+" onClick="qtyChange(1,1)"><img src='<c:url value="image/expand_circle_down.svg"/>'></button>
									<div class="count_num"><input type="text" class="roomQty" name="roomQty" size="1" value="1" readonly></div>
									<button class="down_btn" value="-" onClick="qtyChange(1,-1)"><img src='<c:url value="image/expand_circle_down.svg"/>'></button>
								</div>
							</div>
						</div>
						<div class="countBoxWrap">
							<div class="count_countBox">
								<div class="room_title">거실</div>
								<div class="room_btn"> 
									<button class="up_btn" value="+" onClick="qtyChange(2,1)"><img src='<c:url value="image/expand_circle_down.svg"/>'></button>
									<div class="count_num"><input type="text" class="roomQty" name="roomQty" size="1" value="1" readonly></div>
									<button class="down_btn" value="-" onClick="qtyChange(2,-1)"><img src='<c:url value="image/expand_circle_down.svg"/>'></button>
								</div>
							</div>
						</div>
						<div class="countBoxWrap">
							<div class="count_countBox">
								<div class="room_title">부엌</div>
								<div class="room_btn"> 
									<button class="up_btn" value="+" onClick="qtyChange(3,1)"><img src='<c:url value="image/expand_circle_down.svg"/>'></button>
									<div class="count_num"><input type="text" class="roomQty" name="roomQty" size="1" value="1" readonly></div>
									<button class="down_btn" value="-" onClick="qtyChange(3,-1)"><img src='<c:url value="image/expand_circle_down.svg"/>'></button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="room__Box hidden">
				<div class="room_info plus">
					<div>
						<h1>추가 정보</h1>
						<h2>엘레베이터와 주차 정보를 입력합니다.</h2>
					</div>
					<div class="questionContainer">
						<form>
							<span class="plustitle">엘레베이터</span>
							<div class="buttonWrapper">
								<input type="radio" id="no_elevator" name="elevator" value="no">
								<label for="no_elevator"> 없음 </label>
							</div>
							<div class="buttonWrapper">
								<input type="radio" id="yes_elevator" name="elevator"
									value="yes"> <label for="yes_elevator">
									있음 </label>
							</div>
							<span class="plustitle">주차</span>
							<div class="buttonWrapper">
								<input type="radio" id="no_parking" name="parking" value="no">
								<label for="no_parking"> 없음 </label>
							</div>
							<div class="buttonWrapper">
								<input type="radio" id="free_parking" name="parking"
									value="free_parking"> <label for="free_parking">
									무료주차 </label>
							</div>
							<div class="buttonWrapper">
								<input type="radio" id="pay_parking" name="parking"
									value="pay_parking"> <label for="pay_parking">
									유료주차 </label>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="room__Box hidden">
				<div class="intro">
					<div>
						<h1>방소개</h1>
						<h2>방을 매력적이게 소개해봅시다.</h2>
						
					</div>
					<div>
						<img src="image/logo.png">
					</div>
				</div>
			</div>
			<div class="room__Box hidden">
				<div class="room_introduce option">
					<h1>기본 옵션</h1>
					<h2>방에서 제공하는 기본적인 옵션을 표기해주세요.</h2>
					<div class="questionContainer">
						<form>
							<div class="buttonWrapper">
								<input type="checkbox" id="bed" name="basic_option" value="bed">
								<label for="bed"> 침대 </label>
							</div>
							<div class="buttonWrapper">
								<input type="checkbox" id="refrigerator" name="basic_option" value="refrigerator">
								<label for="refrigerator"> 냉장고 </label>
							</div>
							<div class="buttonWrapper">
								<input type="checkbox" id="microwave" name="basic_option"                                                        
									value="microwave"> 
								<label for="microwave"> 전자레인지 </label>
							</div>
							<div class="buttonWrapper">
								<input type="checkbox" id="air-conditioner" name="basic_option"
									value="air-conditioner"> 
									<label for="air-conditioner"> 에어컨 </label>
							</div>
							<div class="buttonWrapper">
								<input type="checkbox" id="washing-machine" name="basic_option"
									value="washing-machine"> 
									<label for="washing-machine"> 세탁기 </label>
							</div>
							
							
							<span class="additionalOption_title">추가할 옵션이 있나요?</span>
							<div class="buttonWrapper">
								<input type="checkbox" id="internet" name="additional_option" value="internet">
								<label for="internet"> 인터넷(Wi-Fi) </label>
							</div>
							<div class="buttonWrapper">
								<input type="checkbox" id="TV" name="additional_option" value="TV">
								<label for="TV"> 케이블TV </label>
							</div>
							<div class="buttonWrapper">
								<input type="checkbox" id="gas-range" name="additional_option"                                                        
									value="gas-range"> 
								<label for="gas-range"> 가스레인지 </label>
							</div>
							<div class="buttonWrapper">
								<input type="checkbox" id="induction" name="additional_option"
									value="induction"> 
									<label for="induction"> 인덕션 </label>
							</div>
							<div class="buttonWrapper">
								<input type="checkbox" id="desk" name="additional_option"
									value="desk"> 
									<label for="desk"> 책상 </label>
							</div>
							<div class="buttonWrapper">
								<input type="checkbox" id="shoe-closet" name="additional_option"
									value="shoe-closet"> 
									<label for="shoe-closet"> 신발장 </label>
							</div>
							<div class="buttonWrapper">
								<input type="checkbox" id="closet" name="additional_option"
									value="closet"> 
									<label for="closet"> 옷장 </label>
							</div>
							<div class="buttonWrapper">
								<input type="checkbox" id="dress-room" name="additional_option"
									value="dress-room"> 
									<label for="dress-room"> 드레스룸 </label>
							</div>
							<div class="buttonWrapper">
								<input type="checkbox" id="balcony" name="additional_option"
									value="balcony"> 
									<label for="balcony"> 발코니/베란다 </label>
							</div>
							<div class="buttonWrapper">
								<input type="checkbox" id="management-office" name="additional_option"
									value="management-office"> 
									<label for="management-office"> 관리실 </label>
							</div>
							<div class="buttonWrapper">
								<input type="checkbox" id="table" name="additional_option"
									value="table"> 
									<label for="table"> 식탁 </label>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="room__Box hidden">
				<div class="room_introduce room_title">
					<h1>방제목</h1>
					<h2>방을 표현하는 제목을 붙여봅시다. 짧을수록 효과적입니다!</h2>
					<div class="questionContainer">
						<form>
							<div class="title_boxWrap">
								<input class="title_box" type="text" placeholder="예시)역까지 5분거리, 혼자 살기 좋은 집">
								<div>
									<span class="textCount">0자</span>/30자
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="room__Box hidden">
				<div class="room_introduce room_description">
					<h1>방설명</h1>
					<h2>방의 특징과 장점을 소개해주세요.</h2>
					<div class="questionContainer">
						<form>
							<div class="description_box">
								<textarea placeholder="방의 상세적인 정보를 입력할 수 있습니다.&#10;&#10;예시)&#10;- 입주는 비대면으로 진행됩니다.&#13;&#10;- 계약이 확정되시면 입주 및 이용 안내 메시지를 보내드립니다.&#10;- 10월 3일부터 12월 31일까지 이용 가능합니다."></textarea>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="room__Box hidden">
				<div class="intro">
					<div>
						<h1>요금안내</h1>
						<h2>마지막으로 요금 안내를 작성해봅시다.</h2>
						
					</div>
					<div>
						<img src="image/logo.png">
					</div>
				</div>
			</div>
			<div class="room__Box hidden">
				<div class="room_pay least_pay">
					<h1>최소계약기간</h1>
					<h2>설정하신 기간 미만으로는 계약을 받지 않습니다.</h2>
					<div class="questionContainer">
						<form>
							<div class="select_box">
								<button type="button" class="label">최소 예약 기간</button>
								<ul class="optionList">
									<li class="optionItem">1주</li>
									<li class="optionItem">2주</li>
									<li class="optionItem">3주</li>
									<li class="optionItem">4주</li>
									<li class="optionItem">5주</li>
									<li class="optionItem">6주</li>
									<li class="optionItem">7주</li>
									<li class="optionItem">8주</li>
								</ul>			
								<img class="arrow_dropdown" src="<c:url value='/image/arrow_drop_down.svg'/>">					
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="room__Box hidden">
				<div class="room_pay pay_Guidance">
					<h1>요금 안내</h1>
					<h2></h2>
					<div class="questionContainer">
						<form>
							<div class="textBoxWrapper">
								<span class="payTitle">보증금</span>
								<input type="text"> 원
							</div>
							<div class="textBoxWrapper">
								<span class="payTitle">1주 임대료</span>
								<input type="text"> 원 / 1주
							</div>
							<div class="textBoxWrapper">
								<span class="payTitle">1주 관리비</span>
								<input type="text"> 원 / 1주
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="room__Box hidden">
				<div class="room_pay pay_option">
					<h1>해당 사항이 포함되나요?</h1>
					<h2></h2>
					<div class="questionContainer">
						<form>
							<div class="buttonWrapper">
								<input type="checkbox" id="electric" name="pay_optioncheckBox" value="electric">
								<label for="electric"> 전기 </label>
							</div>
							<div class="buttonWrapper">
								<input type="checkbox" id="gas" name="pay_optioncheckBox"
									value="gas"> <label for="gas">
									가스 </label>
							</div>
							<div class="buttonWrapper">
								<input type="checkbox" id="water" name="pay_optioncheckBox" value="water">
								<label for="water"> 수도 </label>
							</div>
							<div class="buttonWrapper">
								<input type="checkbox" id="internetFee" name="pay_optioncheckBox"
									value="internetFee"> <label for="internetFee">
									인터넷 </label>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="room__Box hidden">
				<div class="room_pay longterm_discount">
					<h1>장기 예약 할인</h1>
					<h2></h2>
					<div class="questionContainer">
						<form>
							<span class="discountTitle">할인 기준</span>
							<div class="select_box">
								<button type="button" class="label">할인 기준</button>
								<ul class="optionList">
									<li class="optionItem">없음</li>
									<li class="optionItem">2주</li>
									<li class="optionItem">3주</li>
									<li class="optionItem">4주</li>
									<li class="optionItem">5주</li>
									<li class="optionItem">6주</li>
									<li class="optionItem">7주</li>
									<li class="optionItem">8주</li>
								</ul>			
								<img class="arrow_dropdown" src="<c:url value='/image/arrow_drop_down.svg'/>">					
							</div>
							
							<span class="discountTitle">할인 금액</span>
							<div class="select_box">
								<button type="button" class="label">할인 금액</button>
								<ul class="optionList">
									<li class="optionItem">5%</li>
									<li class="optionItem">6%</li>
									<li class="optionItem">7%</li>
									<li class="optionItem">8%</li>
									<li class="optionItem">9%</li>
									<li class="optionItem">10%</li>
									<li class="optionItem">15%</li>
									<li class="optionItem">20%</li>
								</ul>			
								<img class="arrow_dropdown" src="<c:url value='/image/arrow_drop_down.svg'/>">					
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="room__Box hidden">
				<div class="intro">
					<div>
						<h1>작성 완료</h1>
						<h2>확인 버튼을 눌러 등록합시다!</h2>
						
					</div>
					<div>
						<img src="image/logo.png">
					</div>
				</div>
			</div>
			<div class="footnav_Container">
				<div class="footnav_Wrapper">
					<button id="prevBtn">이전</button>
					<button id="nextBtn">다음</button>
				</div>
			</div>
		</section>
		<footer> </footer>
	</div>

	<!-- Modal -->

	<div id="modal-container">
		<div class="modal">
			<!-- Modal info -->
			<div class="modal-info">필수 입력 정보입니다.</div>

			<!-- Modal button -->
			<div class="modal-button">
				<button type="button" class="btn btn-danger" data-dismiss="modal">확인</button>
			</div>
		</div>
	</div>
</body>
</html>