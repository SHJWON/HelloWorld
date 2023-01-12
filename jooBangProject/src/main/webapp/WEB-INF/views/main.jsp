<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


      <section>
        <!-- <div id="copyText">
          <h1>부동산의 새로운 트렌드</h1>
        </div> -->
        <div id="copyBoxMain">
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

        <!-- <div id="searchBox">
          <input
            id="searchBar"
            type="search"
            placeholder="지역·단지명을 검색해보세요."
          />
        </div> -->
        <div>
          <p id="searchText">지역·단지명을 검색해보세요.</p>
        </div>

        <div class="container">
          <br />
          <input
            id="searchBar"
            class="searchbar"
            type="text"
            placeholder="Search..."
          />
          <a id="btnSearch" class="btn-search"><i class="fa fa-search"></i></a>
        </div>

        <br />
        <br />
        <br />

        <div id="recommend">
          <div id="recommendText">이곳을 추천합니다</div>
          <br /><br />
          <ul class="recommendRoom">
            <li>
              <div>
                <a href="#">
                  <div>
                    <img src="/image/logo.png" width="250" />
                  </div>
                  <p>지역</p>
                  <h1>방이름</h1>
                  <p>기본옵션</p>
                  <h3>방가격/주</h3>
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
                  <h1>방이름</h1>
                  <p>기본옵션</p>
                  <h3>방가격/주</h3>
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
                  <h1>방이름</h1>
                  <p>기본옵션</p>
                  <h3>방가격/주</h3>
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
                  <h1>방이름</h1>
                  <p>기본옵션</p>
                  <h3>방가격/주</h3>
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
                  <h1>방이름</h1>
                  <p>기본옵션</p>
                  <h3>방가격/주</h3>
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
                  <h1>방이름</h1>
                  <p>기본옵션</p>
                  <h3>방가격/주</h3>
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
                  <h1>방이름</h1>
                  <p>기본옵션</p>
                  <h3>방가격/주</h3>
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
                  <h1>방이름</h1>
                  <p>기본옵션</p>
                  <h3>방가격/주</h3>
                </a>
              </div>
            </li>
          </ul>
        </div>

        <br /><br /><br />
        <br /><br /><br />
        <br /><br /><br />
        <div id="hotClickText">지금의 Hot Click!</div>
        <br /><br />

        <div id="hotClickBox">
          <div id="hotClick">
            <div id="hotClickMentBox">
              <div id="hotClickMent">멘트</div>
            </div>
            <ul id="hotClickRoom">
              <li>
                <div>
                  <a href="#">
                    <div>
                      <img src="/image/logo.png" width="250" />
                    </div>
                    <p>지역</p>
                    <h1>방이름</h1>
                    <p>기본옵션</p>
                    <h3>방가격/주</h3>
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
                    <h1>방이름</h1>
                    <p>기본옵션</p>
                    <h3>방가격/주</h3>
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
                    <h1>방이름</h1>
                    <p>기본옵션</p>
                    <h3>방가격/주</h3>
                  </a>
                </div>
              </li>
            </ul>
          </div>
        </div>

        <br /><br /><br />
        <br /><br /><br />
        <br /><br /><br />

        <div id="newRoomText">따끈따끈한 방을 확인하세요!</div>
        <div id="newRoomBox">
            <div id="newRoomListBox">
              <ul id="newRoomList"><li>
                <div>
                  <a href="#">
                    <div>
                      <img src="/image/logo.png" width="250" />
                    </div>
                    <p>지역</p>
                    <h1>방이름</h1>
                    <p>기본옵션</p>
                    <h3>방가격/주</h3>
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
                    <h1>방이름</h1>
                    <p>기본옵션</p>
                    <h3>방가격/주</h3>
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
                    <h1>방이름</h1>
                    <p>기본옵션</p>
                    <h3>방가격/주</h3>
                  </a>
                </div>
              </li>
              </ul>
            </div>

          <div id="newRoomMentBox">
            <div id="newRoomMent">멘트</div>
          </div>
        </div>

        <br /><br /><br />
        <br /><br /><br />
        <br /><br /><br />

        
        <div id="main_communityBox">
          <div id="main_commmunityList">
             <!-- 가구 카드 -->
             <div class='Cbox'>
              <div class='waveC -oneC'></div>
              <div class='waveC -twoC'></div>
              <div class='waveC -threeC'></div>
              <div class='title'>Community<br><span id="subTitle">커뮤니티</span></div>
            </div>
            <!--카드연습 끝-->
            <div class="main_commumityMenu">
              <ul class="main_commuityFilter">
                <li class="main_commuityFilterList")">전체</li>
                <li class="main_commuityFilterList">조회순</li>
                <li class="main_commuityFilterList">댓글순</li>
              </ul>
            </div>

            <ul id="main_communityUl">
              <li id="list1"><img src="/image/protest.png"><span class="listText">보라돌이 뚜비 나나 뽀~~ 텔레토비 텔레토비!<hr></span></li>
              <li id="list2"><img src="/image/protest.png"><span class="listText">보라돌이 뚜비 나나 뽀~~ 텔레토비 텔레토비!<hr></span></li>
              <li id="list3"><img src="/image/protest.png"><span class="listText">보라돌이 뚜비 나나 뽀~~ 텔레토비 텔레토비!<hr></span></li>
              <li id="list4"><img src="/image/protest.png"><span class="listText">보라돌이 뚜비 나나 뽀~~ 텔레토비 텔레토비!<hr></span></li>
              <li id="list5"><img src="/image/protest.png"><span class="listText">보라돌이 뚜비 나나 뽀~~ 텔레토비 텔레토비!<hr></span></li>
            </ul>
          </div>

          <div id="furnitureRental">
            <!-- 가구 카드 -->
            <div class='Fbox'>
              <div class='wave -one'></div>
              <div class='wave -two'></div>
              <div class='wave -three'></div>
              <div class='title'>furniture rental<br><span id="subTitle">가구 대여</span></div>
            </div>
            <!--카드연습 끝-->
            <!-- <div id="furnitureRemtalText">
              <img src="/image/furniture.png" id="sofa">
              <span id="jooBangFTitle">가구대여<i class="fa-sharp fa-solid fa-ellipsis"></i></span>
            </div> -->
            <div id="furnitureRentalBox">

              <div class="main_furnitureMenu">
                <ul class="main_commuityFilter">
                  <li class="main_furnitureFilterList")">전체</li>
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
                    </div>
                    <div id="furniturText1">
                    <p>지역 :</p>
                    <h1>업체명 :</h1>
                    <p>문의번호 :</p>
                    <h3>전문가구 :</h3>
                  </div>
                  </a>
                </div>
              </li>
              <li class="furnitureCompany">
                <div>
                  <a href="#" class="furnitureGridBox">
                    <div>
                      <img src="/image/logo.png" width="200" id="furniturImg2"/>
                    </div>
                    <div id="furniturText2">
                      <p>지역 :</p>
                      <h1>업체명 :</h1>
                      <p>문의번호 :</p>
                      <h3>전문가구 :</h3>
                    </div>
                  </a>
                </div>
              </li>
              </ul>
            </div>
          </div>

        </div>

        <div id="reasonTotal">
        <div id="reasonText">방주세요를 이용해야하는 이유</div>
        <div id="reasonBox">
          <div id="introduceSite">
            <span><img src="/image/logo.png" width="300" height="300" /></span>
            <span><img src="/image/logo.png" width="300" height="300" /></span>
            <span><img src="/image/logo.png" width="300" height="300" /></span>
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
