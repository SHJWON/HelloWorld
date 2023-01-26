<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<c:import url="/WEB-INF/views/head.jsp"/>
<title>방 등록하기</title>
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/views/top.jsp"/>
		<section>
			<c:forTokens items="${room.roomImage}" delims=","  var="item">
		    <img src="/image/registImg/${item}"><br/>
			</c:forTokens>
		</section>
		<footer>
        <c:import url="/WEB-INF/views/footer.jsp"/>
      </footer>
	</div>
	</body>
</html>