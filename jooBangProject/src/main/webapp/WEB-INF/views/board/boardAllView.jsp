<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		   <c:import url="/WEB-INF/views/head.jsp"/>
		    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
		    <link rel="stylesheet" href="<c:url value='/css/board.css' />">
		<title>전체</title>
	</head>
	<body>
		<nav id="nav">
        <c:import url="/WEB-INF/views/top.jsp"/>
      </nav>
     <ul id="ul">
 		 <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${1}'/>">홈</a></li><hr>
 		 <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${2}'/>">홈</a></li><hr>
 		  <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${3}'/>">홈</a></li><hr>
 		  <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${4}'/>">홈</a></li><hr>
	</ul>
        <div id="wrap">
			<h1>${ctgName }</h1>
			<button><a href="<c:url value='/board/boardInsert'/>">글쓰기</button>
			<table class="table table-bordered table-striped table-hover">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
					<c:forEach var="brd" items="${brdList }">
			            <tr>
			            <td>${brd.brdNo }</td>
			               <td><a href="<c:url value='/board/boardDetailView/${brd.brdNo}'/>" >${brd.brdTitle }</a></td>
			               <td>${brd.brdWriter }</td>			                    		               
			               <td><fmt:formatDate value="${brd.brdDate }" pattern="yyyy-MM-dd"/></td>
			                <td>${brd.brdNoticeYn }</td>			                    		               	               
			            </tr>
			         </c:forEach>
				</table><br><br>
				
			</div>
	</body>
</html>
