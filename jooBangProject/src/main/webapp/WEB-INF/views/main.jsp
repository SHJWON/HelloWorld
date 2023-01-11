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
      <nav id="nav">
        <c:import url="/WEB-INF/views/top.jsp"/>
      </nav>

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
        <div id="communityText">최적의 주거공간을 찾아보세요!</div>
        <div id="communityBox">
          <div id="communityList">
            <div>
              <div>지금의 Hot Click!</div>
              <ul>
                <li>1 제목</li>
                <li>2 제목</li>
                <li>3 제목</li>
                <li>4 제목</li>
                <li>5 제목</li>
                <li>6 제목</li>
                <li>7 제목</li>
                <li>8 제목</li>
                <li>9 제목</li>
                <li>10 제목</li>
              </ul>
            </div>
          </div>

          <div id="communityMentBox">
            <div id="communityMent">멘트</div>
          </div>
        </div>

        <br /><br /><br />
        <br /><br /><br />
        <br /><br /><br />

        <div id="reasonText">방주세요를 이용해야하는 이유</div>
        <br /><br /><br />
        <div id="reasonBox">
          <div id="introduceSite">
            <span><img src="/image/logo.png" width="400" height="400" /></span>
            <span><img src="/image/logo.png" width="400" height="400" /></span>
            <span><img src="/image/logo.png" width="400" height="400" /></span>
          </div>
        </div>
      </section>

      <footer>
        <c:import url="/WEB-INF/views/footer.jsp"/>
      </footer>
    </div>
  </body>
</html>
