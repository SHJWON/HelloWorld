<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <c:import url="/WEB-INF/views/head.jsp"/>
	<c:import url="/WEB-INF/views/chatbot_head.jsp" />
	<script src="/js/mainSearch.js"></script>
	<script src="/js/mainCommunity.js"></script>
 <title>메인 커뮤니티 카드 리절트</title>
</head>
 <body>
  		 <c:forEach var="mainCommuniny" items="${bRecentView}">
           <li id="list1"><img src="/image/default_profile.png" width="64" height="64"> <!-- userImg 등록 예정 -->
           <a href="/board/boardDetailView/${mainCommuniny.brdNo}">
           <span class="listText">${mainCommuniny.brdTitle}</span>
           </a>
           </li>
          </c:forEach>
 </body>
</html>