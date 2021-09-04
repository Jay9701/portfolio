<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div>
	<div class="article_hd" style="display: flex; justify-content: space-between; background-color: #f2f2f2; border-bottom: 1px solid #cecece; line-height: 50px; padding: 0 15px 0 30px;">
		<div>${board.writer}</div>
		<div>${board.regdate}</div>
		<div>
			<span>��ȸ : </span>${board.view}
			<span>��õ : </span>${board.recomend}
		</div>
	</div>
	<div class="article_ctn" style="padding: 20px 30px">
		<div style="font-size: 13px; color: #999; margin-bottom: 80px;">
			<div>
				[${board.sub_category}]
			</div>
		</div>
		<div style="margin-bottom: 160px; font-size: 22px; color: #b63126">
			<h2>${board.title}</h2>
		</div>
		<div style="font-size: 16px; margin-bottom: 80px;">
			${board.content}
		</div>
		<div style="margin-bottom: 30px;">
			<div style="border: 1px solid #ccc; border-radius: 5px; width: 80px; height: 50px; margin: 0 auto;">
				<a onclick=recomendClick() style="display: block; width: 100%; line-height: 50px; text-align: center; font-weight: bold; color: #d91c2b">��õ ${board.recomend}</a>
				<script type="text/javascript">
					function recomendClick(){
						if(confirm("�ش� �Խñ��� ��õ�Ͻðڽ��ϱ�?")){
						location.href="recomend?bno=${board.bno}";
						}
					}
				</script>
			</div>
		</div>
		<div>
			<div>
				<a href="/portfolio/board?category=${board.category}">���</a>
				<a>���</a>
			</div>
		</div>
	</div>
</div>
</body>
</html>