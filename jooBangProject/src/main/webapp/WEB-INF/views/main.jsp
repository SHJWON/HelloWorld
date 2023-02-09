<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<c:import url="/WEB-INF/views/head.jsp"/>
		<script src="/js/mainSearch.js"></script>
		<title>주세요 방 Main</title>
	</head>
	  <body>
    <div id="wrap">
      
        <c:import url="/WEB-INF/views/top.jsp"/>
		
		<a href="#" class="topScroll" style="display: inline;"><img src="/image/top.png"></a>
		<a href="#" class="mainChat" style="display: inline;"><img src="/image/chatbot.png"></a>

      <section class="mainContainer">
        <!-- img배경 및 카피문구 -->
        <div class="mainItem copyBoxMain">
          <div id="copyBox"></div>
          <div id="copyText">
            새로운 부동산 트렌드
            <div id="flip">
              <div><div>무·저보증</div></div>
              <div><div>안전한 매물</div></div>
              <div><div>솔직한 리뷰</div></div>
            </div>
            우리가 도와줄게!
          </div>
        </div>

        <!-- 검색 박스 -->
        <div class="mainItem searchBox">
          <form class="container" method="post" action="/map/mapView">
            <br />
            <input
              id="searchBar"
              name="searchBar"
              class="searchbar"
              type="text"
              placeholder="지역·단지명을 검색해보세요.."
            />
            <a id="btnSearch" class="btn-search"
              ><i class="fa fa-search"id="magnifier" name="magnifier"></i
            ></a>
          </form>
        </div>

        <!-- 추천 매물 멘트 -->
        <div class="mainItem recommend">
          <div class="center-outer">
            <div class="center-inner">
              <div class="bubbles">
                <h1>Today's !</h1>
              </div>
            </div>
          </div>
        </div>

        <!-- 추천 매물 목록 -->
        <ul class="recommendRoom">
        <c:forEach var="mainRoom" items="${rRecentView}">
          <li>
            <div class="mainATeg">
              <a href="/roominfo/${mainRoom.roomNo}">
                <div>	
                  <img class="roomImg" src="/image/registImg/${fn:split(mainRoom.roomImage, ',')[0]}" width="260" height="200" />
                </div>
                <h5>${fn:split(mainRoom.roomAddress1, ' ')[0]} ${fn:split(mainRoom.roomAddress1, ' ')[1]}</h5>
                <h4><span id="line_limit">${mainRoom.roomName}</span></h4>
                <h5>방 개수: ${mainRoom.roomBCount} |  화장실 개수: ${mainRoom.roomRCount}</h5>
                <h5><fmt:formatNumber value="${mainRoom.roomRent}" pattern="#,###"/>￦ / 주</h5>
              </a> 
            </div>
          </li>
          </c:forEach>
        </ul>

        <!-- 핫클릭 텍스트 멘트 -->
        <div class="mainItem hotClickText">
          <div class="center-outer">
            <div class="center-inner">
              <div class="bubbles">
                <h1>Hot Click !</h1>
              </div>
            </div>
          </div>
        </div>

        <!-- 핫클릭 이미지멘트 -->
        <div class="mainItem hotClickBox">
          <div class="card">
            <div class="card__image-container">
              <img class="card__image" src="/image/hot click.png" alt="" />
            </div>

            <svg class="card__svg" viewBox="0 0 800 500">
              <path
                d="M 0 100 Q 50 200 100 250 Q 250 400 350 300 C 400 250 550 150 650 300 Q 750 450 800 400 L 800 500 L 0 500"
                stroke="transparent"
                fill="#333"
              />
              <path
                class="card__line"
                d="M 0 100 Q 50 200 100 250 Q 250 400 350 300 C 400 250 550 150 650 300 Q 750 450 800 400"
                stroke="pink"
                stroke-width="3"
                fill="transparent"
              />
            </svg>

            <div class="card__content">
              <h1 class="card__title">가장 인기있는 방을 확인해보세요!</h1>
            </div>
          </div>
        </div>

        <!-- 핫클릭 목록 -->
        <ul class="hotClickRoom">
         <c:forEach var="mainHotClick" items="${hotView}">
          <li>
            <div class="mainATeg">
              <a href="/roominfo/${mainHotClick.roomNo}">
                <div>	
                  <img class="roomImg" src="/image/registImg/${fn:split(mainHotClick.roomImage, ',')[0]}" width="260" height="200" />
                </div>
                <h5>${fn:split(mainHotClick.roomAddress1, ' ')[0]} ${fn:split(mainHotClick.roomAddress1, ' ')[1]}</h5>
                <h4><span id="line_limit">${mainHotClick.roomName}</span></h4>
                <h5>방 개수: ${mainHotClick.roomBCount} |  화장실 개수: ${mainHotClick.roomRCount}</h5>
                <h5><fmt:formatNumber value="${mainHotClick.roomRent}" pattern="#,###"/>￦ / 주</h5>
                <h5>조회 수: ${mainHotClick.roomViewCnt}</h5>
              </a> 
            </div>
          </li>
         </c:forEach>
        </ul>

        <!-- 최신 방 텍스트 멘트 -->
        <div class="mainItem newRoomText">
          <div class="center-outer">
            <div class="center-inner">
              <div class="bubbles">
                <h1>Recommend !</h1>
              </div>
            </div>
          </div>
        </div>

        <!-- 추천 방 목록  -->
        <ul class="newRoomList">
          <c:forEach var="mainRecommend" items="${recommendView}">
          <li>
            <div class="mainATeg">
              <a href="/roominfo/${mainRecommend.roomNo}">
                <div>	
                  <img class="roomImg" src="/image/registImg/${fn:split(mainRecommend.roomImage, ',')[0]}" width="260" height="200" />
                </div>
                <h5>${fn:split(mainRecommend.roomAddress1, ' ')[0]} ${fn:split(mainRecommend.roomAddress1, ' ')[1]}</h5>
                <h4><span id="line_limit">${mainRecommend.roomName}</span></h4>
                <h5>방 개수: ${mainRecommend.roomBCount} |  화장실 개수: ${mainRecommend.roomRCount}</h5>
                <h5><fmt:formatNumber value="${mainRecommend.roomRent}" pattern="#,###"/>￦ / 주</h5>
              </a> 
            </div>
          </li>
         </c:forEach>
        </ul>

        <!-- 최신 방 이미지 목록 -->
        <div class="mainItem newRoomMent">
          <div class="card">
            <div class="card__image-container">
              <img
                class="card__image"
                id="newRoomImg"
                src="/image/recommendRoom.jpg"
                alt=""
              />
            </div>

            <svg class="card__svg" viewBox="0 0 800 500">
              <path
                d="M 0 100 Q 50 200 100 250 Q 250 400 350 300 C 400 250 550 150 650 300 Q 750 450 800 400 L 800 500 L 0 500"
                stroke="transparent"
                fill="#333"
              />
              <path
                class="card__line"
                d="M 0 100 Q 50 200 100 250 Q 250 400 350 300 C 400 250 550 150 650 300 Q 750 450 800 400"
                stroke="pink"
                stroke-width="3"
                fill="transparent"
              />
            </svg>

            <div class="card__content">
              <h1 class="card__title">다른 분들이 많이 찜한 방이에요!</h1>
            </div>
          </div>
        </div>

        <!-- 커뮤니티 카드 -->
        <div class="main_commmunityList">
            <div class="Cbox">
              <div class="waveC -oneC"></div>
              <div class="waveC -twoC"></div>
              <div class="waveC -threeC"></div>
              <div class="title">
                Community<br /><span id="subTitle">커뮤니티</span>
              </div>
            </div>
          
            <div class="main_commumityMenu">
              <ul class="main_commuityFilter">
                <li class="main_commuityFilterList">전체</li>
                <li class="main_commuityFilterList">공지사항</li>
                <li class="main_commuityFilterList">베스트</li>
              </ul>
            </div>
      
            <ul id="main_communityUl">
            <c:forEach var="mainCommuniny" items="${bRecentView}">
              <li id="list1"><img src="/image/default_profile.png" width="64" height="64"> <!-- userImg 등록 예정 -->
               <a href="/board/boardDetailView/${mainCommuniny.brdNo}">
               <span class="listText">${mainCommuniny.brdTitle}</span>
               </a>
               </li>
              </c:forEach>
            </ul>
          </div>


        <!-- 가구대여 카드 -->
        <div class="furnitureRental">
            <div class='Fbox'>	
                <div class='wave -one'></div>
                <div class='wave -two'></div>
                <div class='wave -three'></div>
                <div class='title'>furniture rental<br><span id="subTitle">가구대여</span></div>
              </div>
      
              <div class="main_furnitureMenu">
                <ul class="main_commuityFilter">
                  <li class="main_furnitureFilterList">전체</li>
                  <li class="main_furnitureFilterList">가구</li>
                  <li class="main_furnitureFilterList">가전</li>
                </ul>
              </div>
      
              <ul id="furnitureRentalist">
               <c:forEach var="mainFurniture" items="${fRecentView}">
                <li class="furnitureCompany" >
                <div>
                  <a href="${mainFurniture.furnitureMoveURL}" class="furnitureGridBox" >
                    <div>
                      <img src="/image/furniture/${mainFurniture.furnitureImg}" width="260" height="200" id="furniturImg1" class="mainCardImg" />
                    <h4>${mainFurniture.furnitureCity}</h4>
                    <h4>${mainFurniture.furnitureTitle}</h4>
                    <h5>${mainFurniture.furnitureCompany}</h5>
                    <h5>${mainFurniture.furnitureTell}</h5>
                  </div>
                  </a>
                </div>
              </li>
              </c:forEach>
              </ul>
        </div>

        <!-- 사용해야하는 이유 텍스트 멘트 -->
        <div class="reasonText">
            <div class="center-outer">
                <div class="center-inner">
                  <div class="bubbles">
                    <h1 id="reasonMent">주세요 방을 왜 이용할까요?</h1>
                  </div>
                </div>
              </div>
        </div>

        <!-- 이유 이미지 1 -->
        <div class="introduce1">
            <img src="/image/saving.png">
            <h4 class="introText">무·저보증으로 목돈이 없어도!</h4>
        </div>

        <!-- 이유 이미지 2 -->
        <div class="introduce2">
            <img src="/image/lightning-bolt-.png">
            <h4 class="introText">당장 집이 필요하다면 빠르게!</h4>
        </div>

        <!-- 이유 이미지 3 -->
        <div class="introduce3">
            <img src="/image/group-chat.png">
            <h4 class="introText">커뮤니티로 솔직한 정보 공유!</h4>
        </div>
      </section>

      <footer>
        <c:import url="/WEB-INF/views/footer.jsp"/>
      </footer>
    </div>
  </body>
</html>
