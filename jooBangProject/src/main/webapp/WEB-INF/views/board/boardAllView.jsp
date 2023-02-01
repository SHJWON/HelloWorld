<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전체</title>		
	  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">		
		<c:import url="/WEB-INF/views/head.jsp"/>
			<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
			<script src="<c:url value='/js/board.js'/>"></script>
		    <link rel="stylesheet" href="<c:url value='/css/board.css' />">	
	
</head>
	
	<body>
     <c:import url="/WEB-INF/views/top.jsp"/>
     <div id="wrap">
      <input type="hidden" id="menuNumber" value="${menuNumber }">
      <input type="hidden" id="sid" name="memId" value="${sessionScope.sid}">   
      <input type="hidden" id="url" value="/board/boardInsert/${ctgNo}">   
    <ul id="ul">
 		 <li class="liside-menu"><a href="<c:url value='/board/boardListAll/${1}'/>">전체글보기</a></li><hr>
 		 <li class="liside-menu"><a href="<c:url value='/board/boardCtgList/${1}'/>">공지사항</a></li><hr>
 		  <li class="liside-menu"><a href="<c:url value='/board/boardCtgList/${2}'/>">자유게시판</a></li><hr>
 		  <li class="liside-menu"><a href="<c:url value='/board/bestBoard'/>">베스트게시판</a></li><hr>
 		  <li class="liside-menu"><a href="<c:url value='/board/boardCtgList/${3}'/>">살림 나눔</a></li><hr>
 		  <li class="liside-menu"><a href="<c:url value='/board/boardCtgList/${4}'/>">장터</a></li><hr>  	  
	</ul>

    
        <c:if test="${brdTitle eq ''}">
        <span id="ctgName">${brdList[0].ctgName } </span>      
        </c:if>
        <c:if test="${brdTitle ne ''}">
         <span id="ctgName">${brdTitle }</span>
        </c:if>
             
    	<div id="search">
           <a href="<c:url value='/board/boardSearchForm/'/>"> <button type="submit" id="boardsubmit"> <i class="fa fa-search"></i></button></a>
        </div>   
        <c:if test="${brdTitle eq ''}">               	
	<button id="insertBtn" >글작성</button>
		</c:if>
		<c:if test="${brdTitle ne ''}">            	
		<button id="hiddenBtn" >글작성</button>
	
		</c:if>
		
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
			               <td class="title1" ><a href="<c:url value='/board/boardDetailView/${brd.brdNo}'/>" >${brd.brdTitle }</a>
			                <c:if test="${brd.comCnt ne 0}">
						 	      <b><span style="color:#bb2649;">(${brd.comCnt})</span></b>
						</c:if> </td>
			               <td>${brd.brdWriter }</td>			                    		               
			               <td><fmt:formatDate value="${brd.brdDate }" pattern="yyyy-MM-dd"/></td>
			               <td>${brd.brdViewCnt }</td>	          		                    		               	               
			            </tr>
			         </c:forEach>
			           </tbody>
				</table><br><br>
		
			<div class="page">
			 <c:forEach begin="1" end="${pageNum}" var="num">
    <span>
     <a href="/board/boardListAll/${num}"><button id="pageBtn">${num }</button></a>
  </span>
 </c:forEach>
			</div>
			</div>
			
						<footer>
        <c:import url="/WEB-INF/views/footer.jsp"/>
      </footer>
	</body>
</html>
