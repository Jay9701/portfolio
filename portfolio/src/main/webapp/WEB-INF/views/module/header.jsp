<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		header{
			background-color: #ddd;
		}
		
		.hd_logo{
			width: 280px;
			height: 100px;
			background-color: red;
		}
		
		.hd_logo a{
			display: block;
			width: 100%;
			height: 100%;
		}
		
		.hd_gnb ul{
			display: flex;
		}
		
		.hd_gnb ul li{
			width: 10%;
			text-align: center;
			line-height: 35px;
			background-color: #c9dae6;
		}
		
		.hd_gnb ul li:hover{
			background-color: #b6cae6;
		}
		
		.hd_gnb a{
			display: block;
			width: 100%;
			height: 100%;
		}
	</style>
</head>
<body>
	<div class="hd_logo">
		<a href="/portfolio"><h1>logo</h1></a>
	</div>
	<nav class="hd_gnb">
		<ul>
			<li><a href="#">홈</a></li>
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