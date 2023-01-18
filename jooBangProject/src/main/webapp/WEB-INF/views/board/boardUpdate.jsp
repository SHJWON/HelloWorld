<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<c:import url="/WEB-INF/views/head.jsp"/>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
		<title>Insert title here</title>
	</head>
	<body>
		<nav id="nav">
        <c:import url="/WEB-INF/views/top.jsp"/>
      </nav>
		<div id="wrap">
			<h2>글 수정</h2>
			<hr>
			<form action="/board/updateBoard/${brdNo}">
		
			 <div class="form-group">
              <label for="exampleFormControlInput1">제목</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" name="brdTitle" value="${brd.brdTitle}">
          </div>
        <div class="form-group">
            <label for="exampleFormControlInput1">작성자</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" name="brdWriter" value="${brd.brdWriter}">
          </div>
          <div class="form-group">
            <label for="exampleFormControlTextarea1">내용</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" name="brdContent" rows="10" value="${brd.brdContent}"></textarea>
          </div>
        <button type="submit" class="btn btn-outline-danger">수정하기</button>
        <button type="button" class="btn btn-secondary">목록으로</button>
			
			</form>
			<br><br>
			
		</div>
	</body>
</html>
