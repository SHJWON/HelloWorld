<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>

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

       <ul id="ul">
 		 <li class="side-menu"><a href="<c:url value='/board/boardListAll/${1}'/>">전체글보기</a></li><hr>
 		 <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${1}'/>">공지사항</a></li><hr>
 		  <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${2}'/>">자유게시판</a></li><hr>
 		  <li class="side-menu"><a href="<c:url value='/board/bestBoard'/>">베스트게시판</a></li><hr>
 		  <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${3}'/>">살림 나눔</a></li><hr>
 		  <li class="side-menu"><a href="<c:url value='/board/boardCtgList/${4}'/>">장터</a></li><hr>  	  
	</ul>

 <span id="ctgName">${brd.ctgName }</span>	
 <div id="search">
           <a href="<c:url value='/board/boardSearchForm/'/>"> <button type="submit" id="boardsubmit"> <i class="fa fa-search"></i></button></a></div>     
			<a href="<c:url value='/board/boardCtgList/${brd.ctgNo }'/>"><button id="listBtn">목록</button></a>
      <div class="detailWrap">	
			<hr>
		<div class="detailTitle"><span id="title">${brd.brdTitle }</span> </div><hr>
		<div class="detailInfo">${brd.brdWriter } 
		<span id="Date"><i class="fa fa-clock-o" aria-hidden="true"></i>&nbsp;<fmt:formatDate value="${brd.brdDate }" pattern="yyyy-MM-dd"/></span>
	    <span id="ViewCnt"><i class="fa fa-eye" aria-hidden="true"></i>${brd.brdViewCnt }</span> 
      </div>
	   <hr>
	   <div class="detailImg">
	   <c:forTokens items="${brd.brdImage}" delims=","  var="item">
	      <c:if test = "${fn:contains(item, '.jpg')}">
		<img src="<c:url value='/image/boardImg/${item } '/>">		
	  </c:if>
	  </c:forTokens>
		</div>
       <div class="detailContent">${brd.brdContent }</div>		
       	<hr>
       		<div class="commnetTitle">
       		 <h4>댓글</h4>
       		</div>
       		 		 <hr>
       		<div class="comment">
       		<c:forEach var="com" items="${comList }">
       				<p>${com.comContent }  / <span id="comDate"><fmt:formatDate value="${brd.brdDate }" pattern="yyyy-MM-dd"/></span></p>    	
       				<hr>			
       		</c:forEach>
         </div>
       	 <form id="boardCommnetForm" action="/board/boardComment/${brdNo }">
		<div class="insertComment">
		<textarea class="insertCommnetText" name="comContent"></textarea>
		<button type="submit" class="commnetBtn">등록</button>
		<input type="hidden" name="brdNo" value="${brd.brdNo }">
		</div>
		</form>
		<div class="detailfoot">
		<c:if test="${sessionScope.sid==brd.brdWriter }">
         <a href="<c:url value ='/board/boardUpdate/${brdNo}'/>"><button class="detailBtn">수정</button></a>
         <a href="javascript:deleteCheck();"><button class="detailBtn"> 삭제 </button></a><br><br>
         </c:if>
         </div>
		<script>
		function deleteCheck(){
			var answer=confirm("삭제하시겠습니까?");
			if(answer){
				location.href="/board/deleteBoard/${brdNo}";
			}
		}
		</script>
</div>
	</body>
</html>
