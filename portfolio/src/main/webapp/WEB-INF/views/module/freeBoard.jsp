<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.sub_category_select{
	display: flex;
}
.sub_category_select li{
	width: 40px;
}
.sub_category_select li:hover{
	cursor: pointer;
}
.boardList tr:hover {
	background-color: #f2f2f2;
}
</style>
</head>
<body>
	<div style="background-color: #e87800; color: #fff; padding: 9px 18px; font-size: 13px; border-radius: 10px;">
		<h2>자유게시판</h2>
	</div>
	<div></div>
	<div>
		<table cellspacing="0" width="100%" style="font-size: 14px;">
			<tr></tr>
			<tr height="30px">
				<td>
					<ul class="sub_category_select">
						<li>전체</li>
						<li>잡담</li>
						<li>정보</li>
						<li>질문</li>
						<li>기타</li>
					</ul>
				</td>
			</tr>
			<tr style="height: 1px; background-color: #cecece;"><td colspan="100%"></td></tr>
			<tr>
				<td>
					<table class="boardList" cellspacing="0" width="100%" style="font-size: 14px">
						<tr height="30px">
							<th width="50px">번호</th>
							<th width="30px">
							<th width="420px">제목</th>
							<th width="80px">글쓴이</th>
							<th width="140px">등록일</th>
							<th>조회</th>
							<th>추천</th>
						</tr>
						<tr style="height: 1px; background-color: #cecece;"><td colspan="100%"></td></tr>
						<c:forEach items="${list}" var="board">
						<tr height="30px">
							<td style="text-align: center">${board.bno}</td>
							<td>
							<td><span style="color: #aaa">[${board.sub_category}]</span>${board.title}</td>
							<td>${board.writer}</td>
							<td style="text-align: center">${board.regdate}</td>
							<td style="text-align: center">${board.view}</td>
							<td style="text-align: center">${board.recomend}</td>
						</tr>
						<tr style="height: 1px; background-color: #cecece;"><td colspan="100%"></td></tr>
						</c:forEach>
					</table>
				</td>
			</tr>
		</table>
	
	
	
	
	</div>
</body>
</html>