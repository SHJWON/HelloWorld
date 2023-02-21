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
  <c:import url="/WEB-INF/views/top.jsp"/>
     <div id="wrap">
 
      <ul id="ul">
 	 <li class="liside-menu"><a href="<c:url value='/board/boardListAll/${1}'/>">전체글보기</a></li><hr>
 		 <li class="liside-menu"><a href="<c:url value='/board/boardCtgList/${1}/${1}'/>">공지사항</a></li><hr>
 		  <li class="liside-menu"><a href="<c:url value='/board/boardCtgList/${2}/${1}'/>">자유게시판</a></li><hr>
 		  <li class="liside-menu"><a href="<c:url value='/board/bestBoard/${1}'/>">베스트게시판</a></li><hr>
 		  <li class="liside-menu"><a href="<c:url value='/board/boardCtgList/${3}/${1}'/>">살림 나눔</a></li><hr>
 		  <li class="liside-menu"><a href="<c:url value='/board/boardCtgList/${4}/${1}'/>">장터</a></li><hr>  	  
	</ul>

			<div class="insertView">
			<h1>글 등록</h1>
		
			<hr>
		
			<form method="post"action="/board/insertBoard/${ctgNo}" enctype="multipart/form-data">
			 <div class="form-group">
              <label for="brdTitle">제목</label><br>
            <input type="text" class="insertTitle" id="brdTitle" name="brdTitle" placeholder="제목을 작성해주세요.">
          </div>
      
          <div class="form-group">
            <label for="brdContent">내용</label><br>
            <textarea class="insertContent" id="brdContent" name="brdContent" rows="10">
		</textarea>
          </div>
          <div class="input-group mb-3">
  			 <label class="input-group-text" for="uploadFileMulti">Upload</label>
 			 <input type="file" class="insertFile" id="uploadFileMulti" name="uploadFileMulti" multiple="multiple" accept=".png, .jpg, .jpeg">
		 </div>			
		<div class="insertFoot">
        <button type="submit" class="detailBtn">등록하기</button>
       <a href="<c:url value='/board/boardCtgList/${ctgNo }'/>"> <button type="button" class="detailBtn">취소</button></a>
			</div>
			</form>
			<br><br>
			</div>
		</div>
	</body>
</html>

