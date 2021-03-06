<%@page import="com.pjh.domain.MemberDTO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="ko">
<head>
    <link rel="stylesheet" href="../resources/css/style.css">
    <link rel="stylesheet" href="../resources/css/base.css">
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
					<jsp:include page="../module/md_detail.jsp"></jsp:include>
				</div>
			</div>
		</div>
		
		<aside id="wrap_right">
			<jsp:include page="../module/rightSide.jsp"></jsp:include>
		</aside>
	</div>
	<footer>
		<jsp:include page="../module/footer.jsp"></jsp:include>
	</footer>

</div> <!-- #wrap -->

</body>
</html>
