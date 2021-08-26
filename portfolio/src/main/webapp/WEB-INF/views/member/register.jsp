<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="../resources/css/base.css">
	<meta charset="UTF-8">
	<title>회원가입</title>
	<style type="text/css">
	
	
	</style>
</head>
<body>
<div id="wrap" style="background-color: #e6eeff;">
	<div class="wrap_in" style="width: 1080px; margin: 0 auto; background-color: white; text-align: center">
		<div class="logo"><h1><a href="#">logo</a></h1></div>
		<div>
		<form action="insert">
			<table style="margin: 0 auto;">
				<tr>
					<th><label for="id">아이디 : </label></th>
					<td><input type="text" name="id" id="id"></td>
				</tr>
				<tr>
					<th><label for="pw">비밀번호 : </label></th>
					<td><input type="password" name="pw" id="pw"></td>
				</tr>
				<tr>
					<th><label for="repw">비밀번호 확인 : </label></th>
					<td><input type="password" name="repw" id="repw"></td>
				</tr>
				<tr>
					<th><label for="name">이름 : </label></th>
					<td><input type="text" name="name" id="name"></td>
				</tr>
				<tr>
					<th><label for="birth">생년월일 : </label></th>
					<td><input type="date" name="birth" id="birth"></td>
				</tr>
				<tr>
					<th>성별 : </label></th>
					<td>
						<label>남자<input type="radio" value="남자"  name="gender" id="male"></label>
						<label>여자<input type="radio" value="여자" name="gender" id="female"></label>
					</td>
				</tr>
				<tr>
					<th><label for="email1">이메일 : </label></th>
					<td>
						<input type="text" name="email1" id="email1">
						<input type="text" name="email2" id="email2">
						<select>
							<option>직접입력</option>
							<option>naver.com</option>
							<option>gmail.com</option>
							<option>nate.com</option>
							<option>daum.net</option>
							<option>hanmail.com</option>
						</select>
					</td>
				</tr>
				<tr>
					<th><label for="nickname">닉네임 : </label></th>
					<td><input type="text" name="nickname" id="nickname"></td>
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