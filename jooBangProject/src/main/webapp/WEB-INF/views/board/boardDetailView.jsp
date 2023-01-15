<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<table border="1" width="800">
				<tr><td>상품번호 </td><td>${brd.brdNo }</td></tr>
				<tr><td>상품명  </td><td>${prd.prdName }</td></tr>
				<tr><td>가격  </td><td>${prd.prdPrice }</td></tr>
				<tr><td>제조회사 </td><td> ${prd.prdCompany }</td></tr>
				<tr><td>재고 </td><td>${prd.prdStock }</td></tr>
				<tr><td>제조일 </td><td><fmt:formatDate value="${prd.prdDate }" pattern="yyyy-MM-dd"/></td>
			</table><br><br>
					<a href="<c:url value='/'/>">메인 화면으로 이동</a><br>

         <a href="<c:url value ='/product/updateProductForm/${prd.prdNo}'/>"> 상품 정보 수정</a><br>
         <a href="javascript:deleteCheck();">상품 정보 삭제 </a><br><br>
		<script>
		function deleteCheck(){
			var answer=confirm("삭제하시겠습니까?");
			if(answer){
				location.href="/mybatis/product/deleteProduct/${prd.prdNo}";
			}
		}
		</script>
	</body>
</html>
