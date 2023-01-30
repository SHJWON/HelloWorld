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
<nav id="nav">
        <c:import url="/WEB-INF/views/top.jsp"/>
      </nav>
		<div id="wrap">
			<h2>글 등록</h2>${memId }
			<hr>
			<form method="post"action="/board/insertBoard/${ctgNo}" enctype="multipart/form-data">
			 <div class="form-group">
              <label for="exampleFormControlInput1">제목</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" name="brdTitle" placeholder="제목을 작성해주세요.">
          </div>
      
          <div class="form-group">
            <label for="exampleFormControlTextarea1">내용</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" name="brdContent" rows="10">
		</textarea>
          </div>
          <div class="input-group mb-3">
  			 <label class="input-group-text" for="inputGroupFile01">Upload</label>
 			 <input type="file" class="form-control" id="uploadFileMulti" name="uploadFileMulti" multiple="multiple" accept=".png, .jpg, .jpeg">
		 </div>			
		
        <button type="submit" class="btn btn-outline-danger">등록하기</button>
       <a href="<c:url value='/board/boardCtgList/${ctgNo }'/>"> <button type="button" class="btn btn-outline-danger">취소</button></a>
			
			</form>
			<br><br>
			
		</div>
	</body>
</html>

