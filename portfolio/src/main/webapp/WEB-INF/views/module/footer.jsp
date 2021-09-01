<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<style>
		footer{
			background-color: silver;
		}
		
		.ft_in{
			width: 1280px;
			margin: 0 auto;
		}
		
		.ft_nav{
			width: 656px;
			margin: 0 auto;
		}
		
		.ft_nav ul{
			display: flex;
		}
		
		.ft_nav ul li:after{
			content:'';
			background-color: #666;
			display: inline-block;
			width: 1px;
			height: 12px;
			margin: 3px 5px 0;
		}
		
		.ft_nav ul li:last-child:after{
			display: none;
		}
		
		.ft_info{
			display: flex;
		}
</style>
</head>
<body>
	<div class="ft_in">
		<nav class="ft_nav">
			<ul>
				<li><a href="#">회사소개</a></li>
				<li><a href="#">제휴문의</a></li>
				<li><a href="#">광고문의</a></li>
				<li><a href="#">이용약관</a></li>
				<li><a href="#">개인정보처리방침</a></li>
				<li><a href="#">청소년보호정책</a></li>
				<li><a href="#">찾아오시는 길</a></li>
				<li><a href="#">공지사항</a></li>
			</ul>
		</nav>
		<div class="ft_info">
			<div>
				<h1 class="ft_logo"><a href="#">Logo</a></h1>
			</div>
			<div>
				<p>
					<span>명칭 : ㅁㅁㅁ</span>
					<span>등록번호 : ㅁㅁ ㅁ12345</span>
					<span>등록일자 : 20xx. xx. xx</span>
					<span>제호 : ㅁㅁㅁ</span>
				</p>
				<p></p>
			</div>
			<div></div>
		</div>
		<div></div>
	</div>
</body>
</html>