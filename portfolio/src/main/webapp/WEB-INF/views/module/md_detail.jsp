<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="../resources/js/reply.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<div class="article_hd" style="display: flex; justify-content: space-between; background-color: #f2f2f2; border-bottom: 1px solid #cecece; line-height: 50px; padding: 0 15px 0 30px;">
		<input type="hidden" id="bno" value="${board.bno}">
		<div>${board.writer}</div>
		<div>${board.regdate}</div>
		<div>
			<span>조회 : </span>${board.view}
			<span>추천 : </span>${board.recommend}
		</div>
	</div>
	<div class="article_ctn" style="padding: 20px 30px">
		<div style="font-size: 13px; color: #999; margin-bottom: 80px;">
			<div>
				[${board.sub_category}]
			</div>
		</div>
		<div style="margin-bottom: 160px; font-size: 22px; color: #b63126; word-break: break-all; max-width: 500px;">
			<h2>${board.title}</h2>
		</div>
		<div style="font-size: 16px; margin-bottom: 80px;">
			${board.content}
		</div>
		<div style="margin-bottom: 30px;">
			<div style="border: 1px solid #ccc; border-radius: 5px; width: 80px; height: 50px; margin: 0 auto;">
				<a onclick=recommendClick() style="display: block; width: 100%; line-height: 50px; text-align: center; font-weight: bold; color: #d91c2b; cursor: pointer;">추천 ${board.recommend}</a>
				<script type="text/javascript">
					function recommendClick(){
						if(confirm("해당 게시글을 추천하시겠습니까?")){
						location.href="recommend?bno=${board.bno}";
						}
					}
				</script>
			</div>
		</div>
		<div>
			<div>
				<a href="/portfolio/board?category=${board.category}">목록</a>
				<a>댓글</a>
			</div>
		</div>
	</div>
	<div style="display: flex; justify-content: flex-end; margin: 30px 0 10px;">
		<div class="btn_list" style="border: 1px solid #999; border-radius: 5px; padding: 5px 10px; margin-right: 5px; color: #999">
			<a href="board?category=<%= request.getParameter("category") %>" style="display:block; width:100%;">목록</a>
		</div>
		<div class="btn_write" style="border:1px solid; border-radius: 5px; padding: 5px 20px; margin-right: 5px; background-color: #333; color: white">
			<a href="board/write?category=<%= request.getParameter("category") %>" style="display:block; width:100%;">글쓰기</a>
		</div>
	</div>
	<div>
		<div> job@emfoplus.co.kr
			<div>
				<span>댓글 (${board.replycnt})</span>
				<span>등록순</span>
				<span>최신순</span>
			</div>
		</div>
		<div style="padding: 10px 0 0 20px;">
			<ul id="replyList"></ul>
		</div>
		<div>
			<textarea rows="3" cols="100" id="reply"></textarea>
			<button id="replyadd">댓글</button>
		</div>
	</div>
</div>
</body>
</html>