<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
		<c:import url="/WEB-INF/views/head.jsp"/>
		 <link rel="stylesheet" href="<c:url value='/css/board.css' />">
		<title>Insert title here</title>
	</head>
	<body>
		<div id="wrap">
        <c:import url="/WEB-INF/views/top.jsp"/>
    
		      <ul id="ul">
 		 <li class="liside-menu"><a href="<c:url value='/board/boardListAll/${1}'/>">전체글보기</a></li><hr>
 		 <li class="liside-menu"><a href="<c:url value='/board/boardCtgList/${1}/${1}'/>">공지사항</a></li><hr>
 		  <li class="liside-menu"><a href="<c:url value='/board/boardCtgList/${2}/${1}'/>">자유게시판</a></li><hr>
 		  <li class="liside-menu"><a href="<c:url value='/board/bestBoard/${1}'/>">베스트게시판</a></li><hr>
 		  <li class="liside-menu"><a href="<c:url value='/board/boardCtgList/${3}/${1}'/>">살림 나눔</a></li><hr>
 		  <li class="liside-menu"><a href="<c:url value='/board/boardCtgList/${4}/${1}'/>">장터</a></li><hr>  	  
 		  </ul>
			<div class="insertView">
			<h2>글 수정</h2>
			<hr>
			<form action="/board/updateBoard/${brdNo}">
		
			 <div class="form-group">
              <label for="brdTitle">제목</label>
            <input type="text" class="insertTitle" id="brdTitle" name="brdTitle" value="${brd.brdTitle}">
          </div>
 
          <div class="form-group">
            <label for="brdContent">내용</label>
            <textarea class="insertContent" id="brdContent" name="brdContent" rows="10" >${brd.brdContent}</textarea>
          </div>
          	<div class="insertFoot">
        <button type="submit" class="detailBtn">수정하기</button>
        <button type="button" class="detailBtn">목록으로</button>
			</div>
			</form>
			<br><br>
			</div>
		</div>
	</body>
</html>
