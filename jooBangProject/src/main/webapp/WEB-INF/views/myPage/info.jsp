<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>마이페이지</title>
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
						<h1>마이 페이지</h1>
						<hr>
							<table>
                                <tr><td>회원아이디</td>
                                        <td colspan="2"><input type="text" name="memId" value="${mem.memId }" readonly></td></tr>
                                <tr><td>회원명</td>
                                        <td colspan="2"><input type="text" name="memName" value="${mem.memName }" readonly></td></tr>
                                <tr><td>전화번호</td>
                                        <td colspan="2"><input type="text" name="memHP" value="${mem.memHP }" readonly></td></tr>
                                <tr><td>이메일</td>
                                        <td colspan="2"><input type="text" name="memEmail" value="${mem.memEmail}" readonly></td></tr>
                                <tr><td id="zipcode">우편번호 </td>
                                        <td colspan="2"><input type="text" name="memZipcode" class="postcodify_postcode" id="memZipcode" value="${mem.memZipcode}" readonly></td></tr>
                                <tr><td>도로명주소</td>
                                    <td colspan="2"><input type="text" name="memAddress1" class="postcodify_address" id="memAddress1" value="${mem.memAddress1}" readonly></td></tr>
                                <tr><td>상세주소</td>
                                    <td colspan="2"><input type="text" name="memAddress2" class="postcodify_details" id="memAddress2" value="${mem.memAddress2}" readonly></td></tr>
                                <tr><td>포인트</td>
                                	<td><input type="text" name="pointTotal" id="pointTotal" value="${pointTotal }" readonly></td>
                                	<td><button type="button" id="ptchangeBtn">포인트 내역</button></td></tr>
                                	
                                <tr><td colspan="3">
                                
								<a href="<c:url value='/myPage/updateMyPageForm/${mem.memId}'/>"><input id="button" type="button" value="회원정보수정" class="btn"></a>
								<a href="<c:url value='/myPage/deleteMyPageForm/${mem.memId}'/>"><input id="button" type="button" value="회원탈퇴" class="btn"></a>
								</td></tr>
                            </table>
						
					</form>
				</div>
			</div>
		</div>
	</body>
	<footer>
        <!-- bottom -->
        <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
    </footer>
</html>

