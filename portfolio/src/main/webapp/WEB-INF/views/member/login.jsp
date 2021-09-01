<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
    <link rel="stylesheet" href="../resources/css/base.css">
</head>
<body>
<div id="wrap" style="background-color: #e6eeff;">
	<div class="wrap_in" style="width: 960px; margin: 0 auto; background-color: white; text-align: center">
		<div class="logo"><h1><a href="/portfolio">logo</a></h1></div>
		<div>
		<form action="memberCheck" method="post">
			<table style="margin: 0 auto;">
				<tr>
					<th><label for="id">아이디 : </label></th>
					<td><input type="text" name="id" id="id"></td>
					<th rowspan="2">
						<input type="submit" value="로그인" style="height: 40px;">
					</th>
				</tr>
				<tr>
					<th><label for="pw">비밀번호 : </label></th>
					<td><input type="password" name="pw" id="pw"></td>
				</tr>
			</table>
		</form>
		</div>
	</div>
	<footer>
		<jsp:include page="../module/footer.jsp"></jsp:include>
	</footer>
</div>
</body>
</html>