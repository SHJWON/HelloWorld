<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전체</title>
		<c:import url="/WEB-INF/views/head.jsp"/>
			<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
			<script src="<c:url value='/js/board.js'/>"></script>
		    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
		    <link rel="stylesheet" href="<c:url value='/css/board.css' />">
		    <link rel="stylesheet" href="<c:url value='/css/myPage.css' />">

	
</head>
	
	 <div id="wrap">
	  <nav id="nav">
      <c:import url="/WEB-INF/views/top.jsp"/>
      </nav>
      
                    <div class="category">
						<hr>
					      <div class="profileBox" id="profileBox">
					      <div class="PhotoBox" id="PhotoBox">
					      <img class="profile" src="/image/default_profile.png">
					      </div>
					      </div>
   <ul id="ul">
				 		 <li class="side-menu"><a href="<c:url value='/myPage/updateMyPageForm/${mem.memId }'/>">내 정보 수정</a></li><hr>
				 		 <li class="side-menu"><a href="<c:url value='/myPage/myBoardList'/>">내 글목록</a></li><hr>
				 		 <li class="side-menu"><a href="<c:url value='/myPage/myReservationList'/>">내 예약</a></li><hr>
				 		 <li class="side-menu"><a href="<c:url value='/myPage/EnrollRoom/${mem.memId }'/>">내 방 목록</a></li><hr>
				 		 <li class="side-menu"><a href="<c:url value='/myPage/deleteMyPageForm/${mem.memId}'/>">회원탈퇴</a></li><hr>
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
		<a href="<c:url value='/board/boardInsert/${ctgNo}'/>"><button id="insertBtn">글작성</button></a>
		</c:if>
		<c:if test="${brdTitle ne ''}">               	
		<a href="<c:url value='/board/boardInsert/${ctgNo}'/>"><button id="hiddenBtn">글작성</button></a>
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
			               <td class="title1" ><a href="<c:url value='/board/boardDetailView/${brd.brdNo}'/>" >${brd.brdTitle }</a></td>
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
			</div>
						<footer>
        <c:import url="/WEB-INF/views/footer.jsp"/>
      </footer>
	</body>
</html>