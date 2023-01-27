<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <c:import url="/WEB-INF/views/head.jsp"/>
 <script src="js/furniture.js"></script>
 <link rel="stylesheet" type="text/css" href="<c:url value='/css/furnitureRentalView.css' />">
 <title>가구 렌탈 페이지</title>
</head>
 <body>
   <c:import url="/WEB-INF/views/top.jsp"/>
   
   <section class="furnitureContainer">
      <div id="furnitureFilterView">
        <div class="quickmenu"> <!--가구-->
            <ul class="furnitrueSubMenu">
                 <li class="side-menu"><a href="<c:url value='/furniture/furnitureRentalView/${1}'/>">전체보기</a></li><hr>
                 <li class="side-menu"><a href="<c:url value='/furniture/rentalWoodView'/>">가구</a></li><hr>
                 <li class="side-menu"><a href="<c:url value='/furniture/rentalLifeView'/>">생활가전</a></li><hr>
                 <li class="side-menu"><a href="<c:url value='/furniture/rentalKitchenView'/>">주방가전</a></li><hr>
                 <li class="side-menu"><a href="<c:url value='/furniture/rentalEnvironmentView'/>">환경가전</a></li><hr>
                 <li class="side-menu"><a href="<c:url value='/furniture/rentalHealthView'/>">헬스/뷰티</a></li><hr>  	  
            </ul>
         </div>
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
             <c:forEach var="furniture" items="${prdList}">
   	         <li class="furnitureGridBox" value="${furniture.furnitureNo}" onclick="location.href='${furniture.furnitureMoveURL}'" >
                <div id="FListBox">
                  <img src="/image/furniture/${furniture.furnitureImg}" width="260" height="200" id="furniturImg1" name="furniturImg1" />
	              <h5>${furniture.furnitureCity}</h5>
	              <h4 id="FTitleWidth">${furniture.furnitureTitle}</h4>
	              <h4>${furniture.furnitureCompany}</h4>
	              <h5>${furniture.furniturePrice} / 월</h5>
	              <h5>${furniture.furnitureTell}</h5>
	             </div>
              </li>
          </c:forEach>
        </ul>
    </div>
    
    	<div class="pagePrd">
			 <c:forEach begin="1" end="${pageNum}" var="num">
    <span>
     <a href="/furniture/furnitureRentalView/${num}"><button class="pageBtn">${num}</button></a>
  </span>
 </c:forEach>
			</div>
    </section>
   
   
   
   <footer>
        <c:import url="/WEB-INF/views/footer.jsp"/>
      </footer>
 </body>
</html>