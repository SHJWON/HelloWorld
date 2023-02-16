<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		
			
		<div class="searchTitle"><span id="title">검색결과</span> </div>
	
	
	
	<table class="table table-striped table-hover">	
			<thead>
					<tr>
						<th>번호</th>
						<th class="title1">제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
			</thead>			
			<tbody>		
					<c:forEach var="brd" items="${brdList }">    
			            <tr>         
			            <td>${brd.brdNo }</td>
			               <td class="title1" ><a href="<c:url value='/board/boardDetailView/${brd.brdNo}'/>">${brd.brdTitle }</a></td>
			               <td>${brd.brdWriter }</td>			                    		               
			               <td><fmt:formatDate value="${brd.brdDate }" pattern="yyyy-MM-dd"/></td>
			               <td>${brd.brdViewCnt }</td>	          		                    		               	               
			            </tr>
			         </c:forEach>
			        
			           </tbody>
				</table><br><br>
		
				

	</body>
</html>
