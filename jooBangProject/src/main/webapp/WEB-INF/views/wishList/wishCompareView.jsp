<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <c:import url="/WEB-INF/views/head.jsp"/>
 <link rel="stylesheet" type="text/css" href="<c:url value='/css/wishList.css' />">
 <title>찜목록 및 비교하기</title>
</head>
 <body>
   <c:import url="/WEB-INF/views/top.jsp"/>
   
   <!-- wish section 시작  -->
    <section class="wishContainer">
    
     <div class="wFilter"> <!--찜목록 서브 메뉴-->
        <div class="quickmenu"> 
            <ul class="wishSubMenu">
                 <li class="side-menu"><a href="<c:url value='/wishList/wishListVeiw'/>">내가 본 방</a></li><hr>
                 <li class="side-menu"><a href="<c:url value='/wishList/wishLikeVeiw'/>">찜한 방</a></li><hr>
                 <li class="side-menu"><a href="<c:url value='/wishList/wishCompareVeiw'/>">방 비교하기</a></li><hr>
            </ul>
         </div>
      </div>


      <div class="wTitle"> <!--찜목록 목록 제목-->
        <div class="center-outer">
            <div class="center-inner">
              <div class="bubbles">
                <h2 class="wishTitle">내가 본 방</h2>
              </div>
            </div>
          </div>
    </div>
      <ul class="wCard"> <!--찜목록-->

        <li class="wishGridBox">
            <table border="2">
            	
            </table>
          </li>

          <li class="wishGridBox">
            <div>
              <img src="/image/logo.png" width="200" id="furniturImg1" />
            <h5>지역</h5>
            <h4>방이름</h4>
            <h5>기본옵션</h5>
            <h5>방가격 / 주</h5>
          </div>
          </li>
          
    </ul>
      <div class="wPage"> <!--찜목록 페이징 -->
        <div class="pagePrd">
            <c:forEach begin="1" end="${pageNum}" var="num">
   <span>
    <a href="/wishList/wishListView/${num}"><button class="pageBtn">${num}</button></a>
 </span>
</c:forEach>
           </div>
    </div>

    </section>
    <!-- wish section 끝 -->
    
    <footer>
        <c:import url="/WEB-INF/views/footer.jsp"/>
      </footer>
 </body>
</html>