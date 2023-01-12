<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		   <c:import url="/WEB-INF/views/head.jsp"/>
		<title>Insert title here</title>
	</head>
	<body>
<nav id="nav">
        <c:import url="/WEB-INF/views/top.jsp"/>
      </nav>
		<div id="wrap">
			<h3>글 등록</h3>
			<hr>
			<form action="/board/insertBoard">
				<table>									
					<tr><td>제목  </td><td><input type="text"name="brdTitle"></td></tr>
					<tr><td>작성자  </td><td><input type="text"name="brdWriter"></td></tr>
					<tr><td>내용 </td><td> <input type="text"name="brdContent"></td></tr>
					<tr><td colspan="2"><input type="submit" value="등록"> 
													      <input type="reset" value="취소"></td></tr>
				</table>
			</form>
			<br><br>
			<a href="<c:url value='/'/>">메인 화면으로 이동</a>
		</div>
	</body>
</html>
