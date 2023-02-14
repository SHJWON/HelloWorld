<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용약관</title>

<c:import url="/WEB-INF/views/head.jsp" />
</head>

<body>
	<div id="wrap">
			<table>
				<tr>
					<th><span>${memName }</span>님의 아이디는 <span>${memId }</span>입니다.</th>
				</tr>
				<tr>
					<td class="moreHelp"><a href="<c:url value='/member/findPwdForm'/>">비밀번호가 기억이 안나시나요?</a></td>
				</tr>
				<tr>
					<td class="moreHelp"><a href="<c:url value='/member/login'/>">로그인</a></td>
				</tr>
			</table>
		</div>

	<footer>
		<c:import url="/WEB-INF/views/footer.jsp" />
	</footer>
</body>
</html>



