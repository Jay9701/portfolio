<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>Insert title here</title>
<style>
.sub_category_select{
	display: flex;
}
.sub_category_select li{
	margin-right: 9px;
	font-size: 13px;
	color: #ccc;
	position: relative;
}
.sub_category_select li::after{
    content: "";
    display: inline-block;
    position: absolute;
    width: 1px;
    height: 10px;
    top: 50%;
    right: 0;
    margin: -5px -5px 0 0;
    background-color: #ccc;
}
.sub_category_select li:last-child::after{
	display: none;
}
.sub_category_select li.active{
	color: white;
	background-color: #777;
	border-radius: 10px;
}
.sub_category_select li a{
	display: block;
	width: 100%;
	padding: 2px 13px;
}

.boardList tr:hover {
	background-color: #f2f2f2;
}
</style>
</head>
<body>
	<div style="background-color: #e87800; color: #fff; padding: 9px 18px; font-size: 13px; border-radius: 10px; margin-bottom: 20px;">
		<h2>자유게시판</h2>
	</div>
	<div></div>
	<div>
		<table cellspacing="0" width="100%" style="font-size: 14px;">
			<tr>
				<td style="display: flex; justify-content: flex-end; margin-bottom: 10px">
					<div class="btn_list" style="border: 1px solid #999; border-radius: 5px; padding: 5px 10px; margin-right: 5px; color: #999">
						<a href="board?category=<%= request.getParameter("category") %>" style="display:block; width:100%;">목록</a>
					</div>
					<div class="btn_write" style="border:1px solid; border-radius: 5px; padding: 5px 20px; margin-right: 5px; background-color: #333; color: white">
						<a href="board/write?category=<%= request.getParameter("category") %>" style="display:block; width:100%;">글쓰기</a>
					</div>
				</td>
			</tr>
			<tr style="background-color: #f2f2f2; height: 45px;">
				<td style="padding: 0 15px; font-size: 12px; border-top: 1px solid #666;">
					<div>
						<a href="#" style="border: 1px solid #999; border-radius: 3px; display: inline-block; padding: 4px 10px; background-color: white;">인증글</a>
						<a href="#" style="border: 1px solid #999; border-radius: 3px; display: inline-block; padding: 4px 10px; background-color: white;">10추글</a>
					</div>
					<div></div>
				</td>
			</tr>
			<tr height="35px">
				<td style="padding: 0 5px;">
					<ul class="sub_category_select">
						<li class="sub1"><a onclick="" href="/portfolio/board?category=<%= request.getParameter("category") %>">전체</a></li>
						<li class="sub2"><a href="/portfolio/board?category=<%= request.getParameter("category") %>&sub=이슈">이슈</a></li>
						<li class="sub3"><a href="/portfolio/board?category=<%= request.getParameter("category") %>&sub=토론">토론</a></li>
						<li class="sub4"><a href="/portfolio/board?category=<%= request.getParameter("category") %>&sub=버그">버그</a></li>
						<li class="sub5"><a href="/portfolio/board?category=<%= request.getParameter("category") %>&sub=기타">기타</a></li>
					</ul>
					<script type="text/javascript">
						var sub = getParameter("sub")
					
						function getParameter(name) {
						    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
						    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
						        results = regex.exec(location.search);
						    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
						}
					
						$(document).ready(function (){
							switch (sub) {
							case '':
								$(".sub1").addClass('active');
								break;
							case '이슈':
								$(".sub2").addClass('active');
								break;
							case '토론':
								$(".sub3").addClass('active');
								break;
							case '버그':
								$(".sub4").addClass('active');
								break;
							case '기타':
								$(".sub5").addClass('active');
								break;
							}
						});
					</script>
				</td>
			</tr>
			<tr style="height: 1px; background-color: #cecece;"><td colspan="100%"></td></tr>
			<tr>
				<td>
					<table class="boardList" cellspacing="0" width="100%" style="font-size: 14px;">
						<tr height="35px">
							<th width="60px">번호</th>
							<th width="420px">제목</th>
							<th width="80px">글쓴이</th>
							<th width="140px">등록일</th>
							<th>조회</th>
							<th>추천</th>
						</tr>
						<tr style="height: 1px; background-color: #cecece;"><td colspan="100%"></td></tr>
						<c:forEach items="${list}" var="board" begin="${page-30}" end="${page-1}">
						<tr height="35px">
							<td style="text-align: center;">${board.bno}</td>
							<td style="max-width:420px; padding: 0 20px 0 10px;">
								<a href="board/detail?bno=${board.bno}">
									<span style="color: #aaa; margin-right: 10px;">[${board.sub_category}]</span>
									<span style="display:inline-block; max-width: 250px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; line-height: 100%;">${board.title}</span>
								</a>
								<c:if test="${board.replycnt != 0}">
								<span style="color: red;">[${board.replycnt}]</span>
								</c:if>
							</td>
							<td>${board.writer}</td>
							<td style="text-align: center">${board.regdate}</td>
							<td style="text-align: center">${board.view}</td>
							<td style="text-align: center">${board.recommend}</td>
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