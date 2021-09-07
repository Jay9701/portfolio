<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
    <link rel="stylesheet" href="../resources/css/base.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>
<div id="wrap" style="background-color: #e6eeff;">
	<div class="wrap_in" style="width: 960px; margin: 0 auto; background-color: white; text-align: center">
		<div class="logo"><h1><a href="/portfolio">logo</a></h1></div>
		<div>
		<form action="createAccount" method="post">
			<table style="margin: 0 auto;">
				<tr>
					<th>아이디 : </th>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<th>비밀번호 : </th>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<th>비밀번호 확인 : </th>
					<td><input type="password" name="repw"></td>
				</tr>
				<tr>
					<th>이름 : </th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>생년월일 : </th>
					<td><input type="date" name="birth"></td>
				</tr>
				<tr>
					<th>성별 : </th>
					<td>
						<label>남자<input type="radio" value="남" name="gender"></label>
						<label>여자<input type="radio" value="여" name="gender"></label>
					</td>
				</tr>
				<tr>
					<th>전화번호 : </th>
					<td>
						<input type="text" name="tel">
					</td>
				</tr>
				<tr>
					<th>이메일 : </th>
					<td>
						<input type="text" name="email">
					</td>
				</tr>
				<tr>
					<th>닉네임 : </th>
					<td><input type="text" name="nickName"></td>
				</tr>
				<tr>
					<th colspan="2">
						<input type="submit" value="가입하기">
					</th>
				</tr>
			</table>
		</form>
		</div>
		<footer>
		</footer>
	</div>
</div>
</body>
</html>