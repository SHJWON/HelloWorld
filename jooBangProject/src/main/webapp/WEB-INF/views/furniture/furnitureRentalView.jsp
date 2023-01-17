<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <c:import url="/WEB-INF/views/head.jsp"/>
 <title>가구 렌탈 페이지</title>
</head>
 <body>
   <c:import url="/WEB-INF/views/top.jsp"/>
   
   <section class="furnitureContainer">
      <div id="furnitureFilterView">
        <div>
            <ul>
                <li>전체</li>
                <li>가구</li>
                <li>생활가전</li>
                <li>주방가전</li>
            </ul>
        </div>
        <br>
        <div> <!--가구-->
            <ul>
                목록
                <li>홈 LED 등</li>
                <li>침대</li>
                <li>소파</li>
                <li>수납장</li>
                <li>책상/의자</li>
                <li>옷장</li>
                <li>주방(식탁/테이블)</li>
                <li>화장대</li>
            </ul>
        </div>

        <!--생활가전-->
                <li>에어컨</li> 
                <li>냉난방기</li>
                <li>TV</li>
                <li>세탁기</li>
                <li>건조기</li>
                <li>청소기</li>
                <li>스타일러</li>
                <li>안마의자</li>
                <li>노트북</li>
                <li>컴퓨터</li>
                <li>다리미</li>
                <li>프린터</li>

        <!--주방가전--> 
                <li>정수기</li> 
                <li>냉장고</li>
                <li>김치냉장고</li>
                <li>전기레인지</li>
                <li>전자렌지/오븐</li>
                <li>음식물처리기</li>
                <li>식기세척기</li>
                <li>전기밥솥</li>
                <li>커피머신</li>
                <li>냉동고</li>
                <li>와인셀러</li>
                <li>에어프라이기</li>

        </div>

      <!-- 추천 라인 -->
      <div class="FRLine">
        <div id="furnitureRecommendTitle">
            <div class="center-outer">
                <div class="center-inner">
                  <div class="bubbles">
                    <h1>Today's !</h1>
                  </div>
                </div>
              </div>
        </div>
        <ul id="furnitureRecommendView">
            <li class="furnitureGridBox">
                <div>
                  <img src="/image/logo.png" width="200" id="furniturImg1" />
                <p>지역</p>
                <h4>업체명</h4>
                <p>렌탈비용 / 월</p>
                <h4>문의번호</h4>
              </div>
              </li>
              <li class="furnitureGridBox">
                <div>
                  <img src="/image/logo.png" width="200" id="furniturImg1" />
                <p>지역</p>
                <h4>업체명</h4>
                <p>렌탈비용 / 월</p>
                <h4>문의번호</h4>
              </div>
              </li>
              <li class="furnitureGridBox">
                <div>
                  <img src="/image/logo.png" width="200" id="furniturImg1" />
                <p>지역</p>
                <h4>업체명</h4>
                <p>렌탈비용 / 월</p>
                <h4>문의번호</h4>
              </div>
              </li>
              <li class="furnitureGridBox">
                <div>
                  <img src="/image/logo.png" width="200" id="furniturImg1" />
                <p>지역</p>
                <h4>업체명</h4>
                <p>렌탈비용 / 월</p>
                <h4>문의번호</h4>
              </div>
              </li>
              <li class="furnitureGridBox">
                <div>
                  <img src="/image/logo.png" width="200" id="furniturImg1" />
                <p>지역</p>
                <h4>업체명</h4>
                <p>렌탈비용 / 월</p>
                <h4>문의번호</h4>
              </div>
              </li>

            </ul>
      </div>

      <!-- 일반 라인 -->
      <div class="FPLine">
        <div id="furniturePrdTitle">
            <div class="center-outer">
                <div class="center-inner">
                  <div class="bubbles">
                    <h1>Product !</h1>
                  </div>
                </div>
              </div>
        </div>
        

        <ul id="furniturePrdView">
            <li class="furnitureGridBox">
                <div>
                  <img src="/image/logo.png" width="200" id="furniturImg1" />
                <p>지역</p>
                <h4>업체명</h4>
                <p>렌탈비용 / 월</p>
                <h4>문의번호</h4>
              </div>
              </li>
              <li class="furnitureGridBox">
                <div>
                  <img src="/image/logo.png" width="200" id="furniturImg1" />
                <p>지역</p>
                <h4>업체명</h4>
                <p>렌탈비용 / 월</p>
                <h4>문의번호</h4>
              </div>
              </li>
              <li class="furnitureGridBox">
                <div>
                  <img src="/image/logo.png" width="200" id="furniturImg1" />
                <p>지역</p>
                <h4>업체명</h4>
                <p>렌탈비용 / 월</p>
                <h4>문의번호</h4>
              </div>
              </li>
              <li class="furnitureGridBox">
                <div>
                  <img src="/image/logo.png" width="200" id="furniturImg1" />
                <p>지역</p>
                <h4>업체명</h4>
                <p>렌탈비용 / 월</p>
                <h4>문의번호</h4>
              </div>
              </li>
              <li class="furnitureGridBox">
                <div>
                  <img src="/image/logo.png" width="200" id="furniturImg1" />
                <p>지역</p>
                <h4>업체명</h4>
                <p>렌탈비용 / 월</p>
                <h4>문의번호</h4>
              </div>
              </li> 
              <li class="furnitureGridBox">
                <div>
                  <img src="/image/logo.png" width="200" id="furniturImg1" />
                <p>지역</p>
                <h4>업체명</h4>
                <p>렌탈비용 / 월</p>
                <h4>문의번호</h4>
              </div>
              </li>
              <li class="furnitureGridBox">
                <div>
                  <img src="/image/logo.png" width="200" id="furniturImg1" />
                <p>지역</p>
                <h4>업체명</h4>
                <p>렌탈비용 / 월</p>
                <h4>문의번호</h4>
              </div>
              </li>
              <li class="furnitureGridBox">
                <div>
                  <img src="/image/logo.png" width="200" id="furniturImg1" />
                <p>지역</p>
                <h4>업체명</h4>
                <p>렌탈비용 / 월</p>
                <h4>문의번호</h4>
              </div>
              </li>
              <li class="furnitureGridBox">
                <div>
                  <img src="/image/logo.png" width="200" id="furniturImg1" />
                <p>지역</p>
                <h4>업체명</h4>
                <p>렌탈비용 / 월</p>
                <h4>문의번호</h4>
              </div>
              </li>
              <li class="furnitureGridBox">
                <div>
                  <img src="/image/logo.png" width="200" id="furniturImg1" />
                <p>지역</p>
                <h4>업체명</h4>
                <p>렌탈비용 / 월</p>
                <h4>문의번호</h4>
              </div>
              </li>
              
        </ul>
    </div>
    </section>
   
   
   
   <footer>
        <c:import url="/WEB-INF/views/footer.jsp"/>
      </footer>
 </body>
</html>