<%@page import="com.pjh.domain.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<% MemberDTO member = (MemberDTO)session.getAttribute("memberInfo"); %>
<style type="text/css">

	.accountBox{
		height: 220px;
		background-color: #19253d;
	}
	
	nav.board_nav dt{
		border-top : 2px solid #337bd0;
		background-color: #145082;
		font-weight : bold; 
		color : white;
		
		padding : 8px 12px;
	}
	
	nav.board_nav dd{
		background-color: #19253d;
		color : #ccc;
		
		padding: 8px 16px;
	}
	
	nav.board_nav dd a:hover{
		text-decoration: underline;
	}
</style>
</head>
<body>
	<div class="accountBox">
		<div><a href="/portfolio" style="display: block; width: 100%; line-height: 50px; background-color: #27557c; color: white; text-align: center; font-weight: bold; margin-bottom: 10px;">로스트아크 인벤</a></div>
		<% if(session.getAttribute("memberInfo")==null){ %>
		<p style="color: rgba(200,200,200,0.8); font-size: 12px; text-align: center; margin-bottom: 10px">
			로그인하고<br>
			<span style="color: yellow; font-size: 13px;">출석보상</span>받으세요!
		</p>
		<a href="member/login"><p style="background-color: #4a4a4a; width: 100px; line-height:30px; margin: 0 auto 20px; text-align: center; color: white;">로그인</p></a>
		<ul style="display: flex; justify-content: space-evenly; width: 100%; font-size: 11px; color: #ccc; opacity: 0.8;">
			<li><a href="member/register">회원가입</a></li>
			<li><a>ID/PW 찾기</a></li>
		</ul>
		<%}else{ %>
		<%= member.getNickName() %> 님 환영합니다.
		<%} %>
	</div>
	<nav class="board_nav">
		<dl>
			<dt>커뮤니티 게시판</dt>
			<dd><a href="/portfolio/board?category=freeBoard" >자유게시판</a></dd>
			<dd><a href="/portfolio/board?category=issueBoard">이슈/토론/버그 제보</a></dd>
			<dt>정보 게시판</dt>
			<dd><a href="/portfolio/board?category=tipBoard">팁과 노하우 게시판</a></dd>
		</dl>
	</nav>
</body>
</html>