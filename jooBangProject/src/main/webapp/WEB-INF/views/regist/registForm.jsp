<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방 등록하기</title>
<link rel="stylesheet" href="css/nav.css">
<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>	
<script src="js/registMove.js"></script>
</head>
<body>
	<div id="wrap">
		<top>
		<div class="inner">
			<div class="logo">
				<img class="logo_img" src="image/logo.png" alt="로고">
			</div>
			<div class="nav_list">
				<a class="nav_item" href="#">메뉴1</a> <a class="nav_item" href="#">메뉴2</a>
				<a class="nav_item" href="#">메뉴3</a> <a class="nav_item" href="#">메뉴4</a>
			</div>

		</div>
		</top>
		<section>
			<div class="room__Box show">
				<div class="intro">
					<div>
						<h1>방정보를 등록</h1>
						<h2>기본적인 방 정보를 입력합시다.</h2>
					</div>
					<div>
						<img src="image/logo.png">
					</div>
				</div>
			</div>
			<div class="room__Box hidden">
				<div class="room_info_1">
					<div>
						<h1>건물 유형</h1>
						<h2>건물 유형을 입력해주세요.</h2>
					</div>
					<div class="buttonContainer">
						<div class="buttonWrapper">
							<button>단독주택</button>
						</div>
						<div class="buttonWrapper">
							<button>다가구주택</button>
						</div>
						<div class="buttonWrapper">
							<button>빌라/연립/다세대</button>
						</div>
						<div class="buttonWrapper">
							<button>상가주택</button>
						</div>
					</div>
				</div>
			</div>
			<div class="room__Box hidden">
				<h1>방소개</h1>
			</div>
			<div class="room__Box hidden">
				<h1>요금설정</h1>
			</div>
			<div class="footnav_Container">
				<div class="footnav_Wrapper">
					<button id="prevBtn">이전</button>
					<button id="nextBtn">다음</button>
				</div>
			</div>
		</section>
		<footer> </footer>
	</div>
</body>
</html>