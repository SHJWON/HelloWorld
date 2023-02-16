<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <c:import url="/WEB-INF/views/head.jsp"/>
 <title>가구 환경가전 페이지</title>
</head>
 <body>
   <c:import url="/WEB-INF/views/top.jsp"/>
   
   <section class="furnitureContainer">
      <div id="furnitureFilterView">
        <div class="quickmenu"> <!--가구-->
            <ul class="furnitrueSubMenu">
                 <li class="side-menu"><a href="<c:url value='/furniture/furnitureRentalView'/>">전체보기</a></li><hr>
                 <li class="side-menu"><a href="<c:url value='/furniture/furnitureRenralWoodView'/>">가구</a></li><hr>
                 <li class="side-menu"><a href="<c:url value='/furniture/furnitureRenralLifeView'/>">생활가전</a></li><hr>
                 <li class="side-menu"><a href="<c:url value='/furniture/furnitureRenralkitchenView'/>">주방가전</a></li><hr>
                 <li class="side-menu"><a href="<c:url value='/furniture/furnitureRenralEnvironmentView'/>">환경가전</a></li><hr>
                 <li class="side-menu"><a href="<c:url value='/furniture/furnitureRenralhealthView'/>">헬스/뷰티</a></li><hr>  	  
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
                  <img src="/image/${furniture.furnitureImg}" width="200" height="200" id="furniturImg1" name="furniturImg1" />
	              <p>${furniture.furnitureCity}</p>
	              <h4>${furniture.furnitureCompany}</h4>
	              <p>${furniture.furniturePrice} / 월</p>
	              <h4>${furniture.furnitureTell}</h4>
	             </div>
              </li>
          </c:forEach>
              
        </ul>
    </div>
    </section>
   
   
   
   <footer>
        <c:import url="/WEB-INF/views/footer.jsp"/>
      </footer>
 </body>
</html>