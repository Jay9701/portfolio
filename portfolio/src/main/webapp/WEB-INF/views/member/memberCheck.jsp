<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
		<tr>
			<td>멤버넘버</td>
			<td>${memberDTO.mno}</td>
		</tr>
		<tr>
			<td>아이디</td>
			<td>${memberDTO.id}</td>
		</tr>
		<tr>
			<td>비번</td>
			<td>${memberDTO.pw}</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${memberDTO.name}</td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td>${memberDTO.birth}</td>
		</tr>
	</table>
</body>
</html>