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
<div class="md_write">
<form action="insert?category=<%= request.getParameter("category") %>" method="post">
	<table cellspacing="0" width="100%">
		<tr style="height: 3px; background-color: #cecece;"><td></td></tr>
		<tr style="height: 30px; background-color: #e6e6e6;">
			<td>
				<table>
					<tr>
						<td style="padding-left: 15px">
							<% if(request.getParameter("category").equals("freeBoard")) {%>
							<select name="sub_category">
								<option>분류</option>
								<option>잡담</option>
								<option>공지</option>
								<option>기타</option>
							</select>
							<% }else if(request.getParameter("category").equals("issueBoard")){ %>
							<select name="sub_category">
								<option>분류</option>
								<option>서버1</option>
								<option>서버2</option>
								<option>서버3</option>
								<option>서버4</option>
								<option>서버5</option>
								<option>서버6</option>
							</select>
							<% }else{ %>
							<select name="sub_category">
								<option>분류</option>
							</select>
							<% } %>
						</td>
						<td style="padding-left: 30px; font-size: 13px;">
							제목 :
						</td>
						<td style="padding-left: 10px;">
							<input type="text" name="title">
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr style="height: 1px; background-color: #cecece;"><td></td></tr>
		<tr style="height: 20px; background-color: #f2f2f2;">
			<td>
				<table>
					<tr>
						<td width="100%" align="right">
							<span><%= member.getNickName() %><input type="hidden" name="writer" value="<%= member.getNickName() %>"></span>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr style="height: 1px; background-color: #cecece;"><td></td></tr>
		<tr>
			<td>
				<table style="width: 100%; padding: 10px 15px;">
					<tr>
						<td>
							<textarea style="width: 100%; height: 500px; resize: none;" name="content"></textarea>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr style="height: 1px; background-color: #cecece;"><td></td></tr>
		<tr style="height: 30px; background-color: #f2f2f2;">
			<td>
				<table>
					<tr>
						<td>
							<input type="submit" value="작성">
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr style="height: 3px; background-color: #cecece;"><td></td></tr>
	</table>
</form>
</div>
</body>
</html>