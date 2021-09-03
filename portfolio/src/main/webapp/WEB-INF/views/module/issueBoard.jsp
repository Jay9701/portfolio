<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% %>
</head>
<body>
	<div style="background-color: #e87800; color: #fff; padding: 9px 18px; font-size: 13px; border-radius: 10px;">
		<h2>이슈/토론/버그 제보 게시판</h2>
	</div>
	<div></div>
	<div>
		<table border="1">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>등록일</th>
				<th>조회</th>
				<th>추천</th>
			</tr>
			<c:forEach items="${list}" var="board">
			<tr>
				<td>${board.bno}</td>
				<td>${board.title}</td>
				<td>${board.writer}</td>
				<td>${board.regdate}</td>
				<td>${board.view}</td>
				<td>${board.recomend}</td>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>