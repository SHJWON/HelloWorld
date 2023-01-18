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
        <div class="quickmenu"> <!--가구-->
            <ul class="furnitrueSubMenu">
                 <li class="side-menu"><a href="<c:url value='/board/boardListAll'/>">전체보기</a></li><hr>
                 <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${2}'/>">가구</a></li><hr>
                 <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${3}'/>">생활가전</a></li><hr>
                 <li class="side-menu"><a href="<c:url value='/board/bestBoard'/>">주방가전</a></li><hr>
                 <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${5}'/>">환경가전</a></li><hr>
                 <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${6}'/>">헬스/뷰티</a></li><hr>  	  
            </ul>
         </div>
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