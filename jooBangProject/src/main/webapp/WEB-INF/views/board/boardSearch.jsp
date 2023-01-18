<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<c:import url="/WEB-INF/views/head.jsp"/>
		   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
			<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
			   <script src="<c:url value='/js/search.js'/>"></script>		   
		    <link rel="stylesheet" href="<c:url value='/css/board.css' />">
	</head>
	<body>
		<nav id="nav">
        <c:import url="/WEB-INF/views/top.jsp"/>
      </nav>
    <ul id="ul">
 		 <li class="side-menu"><a href="<c:url value='/board/boardListAll'/>">전체글보기</a></li><hr>
 		 <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${2}'/>">공지사항</a></li><hr>
 		  <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${3}'/>">자유게시판</a></li><hr>
 		  <li class="side-menu"><a href="<c:url value='/board/bestBoard'/>">베스트게시판</a></li><hr>
 		  <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${5}'/>">살림나눔장터</a></li><hr>
 		  <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${6}'/>">장터</a></li><hr>  	  
	</ul>
	    <form id="boardSearchForm">
    	<div id="searchbar">       
			<input type="text" name="keyword" id="address">
            <button type="submit" id="boardsubmit"> <i class="fa fa-search"></i></button></div>    
            <a href="<c:url value='/board/boardCtgList/${brd.ctgNo }'/>"><button id="listBtn">목록</button></a>         	
</form> 
<div id="searchResultBox"></div>
	</body>
</html>
