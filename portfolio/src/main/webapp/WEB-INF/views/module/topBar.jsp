<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
			<% if(session.getAttribute("memberInfo")==null){ %>
			<li><a href="/portfolio/member/register" target="_blank">회원가입</a></li>
			<li><a href="/portfolio/member/login" target="_blank">로그인</a></li>
			<%}else{ %>
			<li><a href="/portfolio/member/logout">로그아웃</a></li>
			<%} %>
		</ul>
	</div>
</body>
</html>