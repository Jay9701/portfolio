<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html lang="ko">
<head>
    <link rel="stylesheet" href="./resources/css/style.css">
    <link rel="stylesheet" href="./resources/css/base.css">
	<title>portfolio</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
</head>
<body>
<div id="topBar">
	<div class="tb_app tb_list">
		<ul>
			<li><a href="#">공식 앱</a></li>
			<li><a href="#">공식 앱</a></li>
		</ul>
	</div>
	<nav class="tb_nav tb_list">
		<ul>
			<li><a href="#">menu</a></li>
			<li><a href="#">menu</a></li>
			<li><a href="#">menu</a></li>
			<li><a href="#">menu</a></li>
			<li><a href="#">menu</a></li>
			<li><a href="#">menu</a></li>
			<li><a href="#">menu</a></li>
			<li><a href="#">menu</a></li>
			<li><a href="#">menu</a></li>
			<li><a href="#">menu</a></li>
		</ul>
	</nav>
	<div class="tb_util tb_list">
		<ul>
			<li><a href="member/register" target="_blank">회원가입</a></li>
			<li><a href="member/login" target="_blank">로그인</a></li>
		</ul>
	</div>
</div>
<div id="wrap">
	<div class="wrap_in">
		<div id="wrap_left">
			<header>
				<jsp:include page="header.jsp"></jsp:include>
			</header>
			<div id="container">
				<div class="ctn_left_side">
					<div class="accountBox">
						로그인박스 입니다.
					</div>
				</div>
				<div class="ctn_content">
				</div>
			</div>
		</div>
		<aside id="wrap_right">
		</aside>
	</div>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</div>
</body>
</html>
