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
			<h3>글 등록</h3>
			<hr>
			<form action="/board/insertBoard/${ctgNo}">
			 <div class="form-group">
              <label for="exampleFormControlInput1">제목</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" name="brdTitle" placeholder="제목을 작성해주세요.">
          </div>
        <div class="form-group">
            <label for="exampleFormControlInput1">작성자</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" name="brdWriter" placeholder="이름을 적어주세요.">
          </div>
          <div class="form-group">
            <label for="exampleFormControlTextarea1">내용</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" name="brdContent" rows="10"></textarea>
          </div>
        <button type="submit" class="btn btn-info">등록하기</button>
        <button type="button" class="btn btn-secondary"><a href="<c:url value='/board/boardCtgList/${ctgNo }'/>">취소</button>
			
			</form>
			<br><br>
			
		</div>
	</body>
</html>

