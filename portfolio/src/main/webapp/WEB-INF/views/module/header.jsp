<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		header{
		}
		
		.hd_logo{
			width: 280px;
			height: 100px;
		}
		
		.hd_logo a{
			display: block;
			width: 100%;
			height: 100%;
			
			background-image: url("/portfolio/resources/images/lostark-logo.png");
			background-position: 0 10px;
			background-size:  100%;
			background-repeat: no-repeat;
			
			text-indent: -99999px;
		}
		
		.hd_gnb ul{
			display: flex;
		}
		
		.hd_gnb ul li{
			width: 10%;
			text-align: center;
			font-size: 13px;
			line-height: 35px;
			background-color: #000e1a;
			color: #ccc;
			border-top: 3px solid #5b9af2;
			border-bottom: 3px solid #000e1a;
    		border-right: 1px solid #1d0200;
		}
		
		.hd_gnb ul li:hover{
			background-color: #145072;
			border-top: 3px solid #f29a5b;
			color: #f29a5b;
		}
		
		.hd_gnb a{
			display: block;
			width: 100%;
			height: 100%;
		}
	</style>
</head>
<body>
	<div style="display: flex; justify-content: space-between;">
		<div class="hd_logo">
			<h1><a href="/portfolio">logo</a></h1>
		</div>
		<div style="background-color: red; width: 740px; height: 90px;">
			AD
		</div>
	</div>
	<nav class="hd_gnb">
		<ul>
			<li><a href="/portfolio">홈</a></li>
			<li><a href="#">아이템</a></li>
			<li><a href="#">제작</a></li>
			<li><a href="#">스킬</a></li>
			<li><a href="#">퀘스트</a></li>
			<li><a href="#">아바타</a></li>
			<li><a href="#">선원</a></li>
			<li><a href="#">호감도</a></li>
			<li><a href="#">카드</a></li>
			<li><a href="#">지도</a></li>
			<li><a href="#">던전/공략</a></li>
		</ul>
	</nav>
</body>
</html>