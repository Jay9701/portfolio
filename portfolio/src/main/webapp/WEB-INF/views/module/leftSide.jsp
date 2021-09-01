<%@page import="com.pjh.domain.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<% MemberDTO member = (MemberDTO)session.getAttribute("memberInfo"); %>
</head>
<body>
	<div class="accountBox">
		<% if(session.getAttribute("memberInfo")==null){ %>
		<a href="member/login"><p style="background-color: yellow; width: 50px; margin: 0 auto;">로그인</p></a>
		<ul>
			<li><a>회원가입</a></li>
			<li><a>ID/PW 찾기</a></li>
		</ul>
		<%}else{ %>
		<%= member.getName() %> 님 환영합니다.
		<%} %>
	</div>
	<div>
		<dl>
			<dt>커뮤니티 게시판</dt>
			<dd><a href="freeB" >자유게시판</a></dd>
			<dd><a href="issueB">사건사고 게시판</a></dd>
			<dt>정보 게시판</dt>
			<dd>팁과 노하우 게시판</dd>
		</dl>
	</div>
</body>
</html>