<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<c:import url="/WEB-INF/views/head.jsp"/>
		<title>주세요 방 Main</title>
	</head>
	  <body>
    <div id="wrap">
      
        <c:import url="/WEB-INF/views/top.jsp"/>


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
          <div class="container">
            <br />
            <input
              id="searchBar"
              class="searchbar"
              type="text"
              placeholder="지역·단지명을 검색해보세요.."
            />
            <a id="btnSearch" class="btn-search"
              ><i class="fa fa-search"></i
            ></a>
          </div>
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
          <li>
            <div>
              <a href="#">
                <div>
                  <img src="/image/logo.png" width="250" />
                </div>
                <p>지역</p>
                <h4>방이름</h4>
                <p>기본옵션</p>
                <h4>방가격/주</h4>
              </a>
            </div>
          </li>
          <li>
            <div>
              <a href="#">
                <div>
                  <img src="/image/logo.png" width="250" />
                </div>
                <p>지역</p>
                <h4>방이름</h4>
                <p>기본옵션</p>
                <h4>방가격/주</h4>
              </a>
            </div>
          </li>
          <li>
            <div>
              <a href="#">
                <div>
                  <img src="/image/logo.png" width="250" />
                </div>
                <p>지역</p>
                <h4>방이름</h4>
                <p>기본옵션</p>
                <h4>방가격/주</h4>
              </a>
            </div>
          </li>
          <li>
            <div>
              <a href="#">
                <div>
                  <img src="/image/logo.png" width="250" />
                </div>
                <p>지역</p>
                <h4>방이름</h4>
                <p>기본옵션</p>
                <h4>방가격/주</h4>
              </a>
            </div>
          </li>
          <li>
            <div>
              <a href="#">
                <div>
                  <img src="/image/logo.png" width="250" />
                </div>
                <p>지역</p>
                <h4>방이름</h4>
                <p>기본옵션</p>
                <h4>방가격/주</h4>
              </a>
            </div>
          </li>
          <li>
            <div>
              <a href="#">
                <div>
                  <img src="/image/logo.png" width="250" />
                </div>
                <p>지역</p>
                <h4>방이름</h4>
                <p>기본옵션</p>
                <h4>방가격/주</h4>
              </a>
            </div>
          </li>
          <li>
            <div>
              <a href="#">
                <div>
                  <img src="/image/logo.png" width="250" />
                </div>
                <p>지역</p>
                <h4>방이름</h4>
                <p>기본옵션</p>
                <h4>방가격/주</h4>
              </a>
            </div>
          </li>
          <li>
            <div>
              <a href="#">
                <div>
                  <img src="/image/logo.png" width="250" />
                </div>
                <p>지역</p>
                <h4>방이름</h4>
                <p>기본옵션</p>
                <h4>방가격/주</h4>
              </a>
            </div>
          </li>
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
          <li>
            <div>
              <a href="#">
                <div>
                  <img src="/image/logo.png" width="250" />
                </div>
                <p>지역</p>
                <h4>방이름</h4>
                <p>기본옵션</p>
                <h4>방가격/주</h4>
              </a>
            </div>
          </li>
          <li>
            <div>
              <a href="#">
                <div>
                  <img src="/image/logo.png" width="250" />
                </div>
                <p>지역</p>
                <h4>방이름</h4>
                <p>기본옵션</p>
                <h4>방가격/주</h4>
              </a>
            </div>
          </li>
          <li>
            <div>
              <a href="#">
                <div>
                  <img src="/image/logo.png" width="250" />
                </div>
                <p>지역</p>
                <h4>방이름</h4>
                <p>기본옵션</p>
                <h4>방가격/주</h4>
              </a>
            </div>
          </li>
        </ul>

        <!-- 최신 방 텍스트 멘트 -->
        <div class="mainItem newRoomText">
          <div class="center-outer">
            <div class="center-inner">
              <div class="bubbles">
                <h1>New Room !</h1>
              </div>
            </div>
          </div>
        </div>

        <!-- 최신 방 목록  -->
        <ul class="newRoomList">
          <li>
            <div>
              <a href="#">
                <div>
                  <img src="/image/logo.png" width="250" />
                </div>
                <p>지역</p>
                <h4>방이름</h4>
                <p>기본옵션</p>
                <h4>방가격/주</h4>
              </a>
            </div>
          </li>
          <li>
            <div>
              <a href="#">
                <div>
                  <img src="/image/logo.png" width="250" />
                </div>
                <p>지역</p>
                <h4>방이름</h4>
                <p>기본옵션</p>
                <h4>방가격/주</h4>
              </a>
            </div>
          </li>
          <li>
            <div>
              <a href="#">
                <div>
                  <img src="/image/logo.png" width="250" />
                </div>
                <p>지역</p>
                <h4>방이름</h4>
                <p>기본옵션</p>
                <h4>방가격/주</h4>
              </a>
            </div>
          </li>
        </ul>

        <!-- 최신 방 이미지 목록 -->
        <div class="mainItem newRoomMent">
          <div class="card">
            <div class="card__image-container">
              <img
                class="card__image"
                id="newRoomImg"
                src="/image/lightning-bolt-.png"
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
              <h1 class="card__title">따끈따끈 새로운 방을 확인해보세요!</h1>
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
                <li class="main_commuityFilterList")">전체</li>
                <li class="main_commuityFilterList">조회순</li>
                <li class="main_commuityFilterList">댓글순</li>
              </ul>
            </div>
      
            <ul id="main_communityUl">
              <li id="list1"><img src="/image/protest.png"><span class="listText">보라돌이 뚜비 나나 뽀~~ 텔레토비 텔레토비!</span></li>
              <li id="list2"><img src="/image/protest.png"><span class="listText">보라돌이 뚜비 나나 뽀~~ 텔레토비 텔레토비!</span></li>
              <li id="list3"><img src="/image/protest.png"><span class="listText">보라돌이 뚜비 나나 뽀~~ 텔레토비 텔레토비!</span></li>
              <li id="list4"><img src="/image/protest.png"><span class="listText">보라돌이 뚜비 나나 뽀~~ 텔레토비 텔레토비!</span></li>
              <li id="list5"><img src="/image/protest.png"><span class="listText">보라돌이 뚜비 나나 뽀~~ 텔레토비 텔레토비!</span></li>
            </ul>
          </div>


        <!-- 가구대여 카드 -->
        <div class="furnitureRental">
            <div class='Fbox'>
                <div class='wave -one'></div>
                <div class='wave -two'></div>
                <div class='wave -three'></div>
                <div class='title'>furniture rental<br><span id="subTitle">가구 대여</span></div>
              </div>
      
              <div class="main_furnitureMenu">
                <ul class="main_commuityFilter">
                  <li class="main_furnitureFilterList")" >전체</li>
                  <li class="main_furnitureFilterList">가구</li>
                  <li class="main_furnitureFilterList">가전</li>
                </ul>
              </div>
      
              <ul id="furnitureRentalist">
                <li class="furnitureCompany">
                <div>
                  <a href="#" class="furnitureGridBox">
                    <div>
                      <img src="/image/logo.png" width="200" id="furniturImg1" />
                    <p>지역</p>
                    <h4>업체명</h4>
                    <p>문의번호</p>
                    <h4>전문가구</h4>
                  </div>
                  </a>
                </div>
              </li>
              <li class="furnitureCompany">
                <div>
                  <a href="#" class="furnitureGridBox">
                    <div>
                      <img src="/image/logo.png" width="200" id="furniturImg2"/>
                    <div id="furniturText2">
                      <p>지역</p>
                      <h4>업체명</h4>
                      <p>문의번호</p>
                      <h4>전문가구</h4>
                    </div>
                    </div>
                  </a>
                </div>
              </li>
              <li class="furnitureCompany">
                <div>
                  <a href="#" class="furnitureGridBox">
                    <div>
                      <img src="/image/logo.png" width="200" id="furniturImg2"/>
                    <div id="furniturText2">
                      <p>지역</p>
                      <h4>업체명</h4>
                      <p>문의번호</p>
                      <h4>전문가구</h4>
                    </div>
                    </div>
                  </a>
                </div>
              </li>
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
