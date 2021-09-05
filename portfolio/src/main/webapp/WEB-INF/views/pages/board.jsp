<%@page import="com.pjh.domain.MemberDTO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="ko">
<head>
    <link rel="stylesheet" href="./resources/css/style.css">
    <link rel="stylesheet" href="./resources/css/base.css">
	<title>portfolio</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
</head>
<body>
<div id="topBar">
	<jsp:include page="../module/topBar.jsp"></jsp:include>
</div>

<div id="wrap">
	<div class="wrap_in">
		<div id="wrap_left">
			<header>
				<jsp:include page="../module/header.jsp"></jsp:include>
			</header>
			<div id="container">
				<div class="ctn_left_side">
					<jsp:include page="../module/leftSide.jsp"></jsp:include>
				</div>
				<div class="ctn_content">
					<!-- 자유 게시판 -->
					<% if(request.getParameter("category").equals("freeBoard")) {%>
					<jsp:include page="../module/freeBoard.jsp"></jsp:include>
					
					<!-- 이슈/토론/버그 게시판 -->
					<% }else if(request.getParameter("category").equals("issueBoard")) {%>
					<jsp:include page="../module/issueBoard.jsp"></jsp:include>
					
					<% } %>
				</div>
			</div>
		</div>
		
		<aside id="wrap_right">
		</aside>
	</div>
	<footer>
		<jsp:include page="../module/footer.jsp"></jsp:include>
	</footer>

</div> <!-- #wrap -->

</body>
</html>
