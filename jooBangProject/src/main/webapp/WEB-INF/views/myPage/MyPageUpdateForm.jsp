<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원 정보 수정</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/mypage2.css'/>">
		<style>
			#wrap{
				margin:0 auto;
				width: 100%;
				height: 100%;
				text-align: center;
			}
			
			table{
				margin:0 auto;
				width: 400px;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<div class="mypagebox">
				<div id="mypage">
					<form id="myPageForm" class="myPageForm" method="post" action="<c:url value='/myPage/updateMyPage'/>">
						<h1>회원 정보 수정</h1>
						<hr>
							<table>
                                <tr><td>회원아이디</td>
                                        <td colspan="2"><input type="text" name="memId" value="${mem.memId }" readonly></td></tr>
                                <tr><td>회원명</td>
                                        <td colspan="2"><input type="text" name="memName" value="${mem.memName }" readonly></td></tr>
                                <tr><td>전화번호 *</td>
                                        <td colspan="2"><input type="text" name="memHP" value="${mem.memHP }"></td></tr>
                                <tr><td>이메일 *</td>
                                        <td colspan="2"><input type="text" name="memEmail" value="${mem.memEmail}" ></td></tr>
                                <tr><td id="zipcode">우편번호 </td>
                                        <td><input type="text" name="memZipcode" class="postcodify_postcode" id="memZipcode" value="${mem.memZipcode}" readonly></td>
                                    <td><button type="button" id="postcodify_search_button">검색</button></td></tr>
                                <tr><td>도로명주소</td>
                                    <td colspan="2"><input type="text" name="memAddress1" class="postcodify_address" id="memAddress1" value="${mem.memAddress1}" readonly></td></tr>
                                <tr><td>상세주소 *</td>
                                    <td colspan="2"><input type="text" name="memAddress2" class="postcodify_details" id="memAddress2" value="${mem.memAddress2}"></td></tr>
                                <tr><td colspan="3">
                                <input id="button" type="submit" value="수정">
                                <input id="button" type="reset" value="취소"></td></tr>
                            </table>
					</form>
				</div>
			</div>
		</div>
			<!-- 주소 API 스크립트 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	
	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
	</body>
	<footer>
        <!-- bottom -->
        <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
    </footer>
</html>