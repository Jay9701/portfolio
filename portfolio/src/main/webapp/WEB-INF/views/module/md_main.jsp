<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="ctn_advertisement" style="width: 100%; height: 250px; background-color: green; color: white; position: relative; margin-bottom: 30px;">
		AD
		<div class="btn_close" style="width: 40px; height: 40px; background-color: rgba(50,50,50,0.6); position: absolute; right: 0; top: 0;">
			<a onclick=ctnAdClose() style="display: block; width: 100%; height: 100%; cursor: pointer;">닫기</a>
		</div>
		<script type="text/javascript">
			function ctnAdClose(){
				$(".ctn_advertisement").css('display', 'none');
			}
		</script>
	</div>
	<div style="display: flex; justify-content: space-between;">
		<div style="width: 395px;">
			<table style="width: 100%;">
				<tr style="height: 30px; cursor: pointer;" onclick="location.href='/portfolio/board?category=freeBoard'">
					<td style="position: relative; font-size: 14px; font-weight: bold; padding: 0 5px;">
						자유게시판
						<span style="position: absolute; top: 8px; right: 5px; font-size: 10px; color: #999;">더보기+</span>
					</td>
				</tr>
				<tr style="height: 1px; background-color: #333;"><td colspan="100%"></td></tr>
				<c:forEach items="${freeList}" var="board" end="9">
				<tr>
					<td style="border-bottom: 1px solid #ccc;">
						<table>
							<tr style="font-size: 12px; height: 26px;">
								<td style="padding: 0 10px;">
									${board.sub_category}
								</td>
								<td style="max-width: 250px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
									<a href="board/detail?bno=${board.bno}">
										${board.title}
									</a>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				</c:forEach>
			</table>
		</div>
		<div style="width: 395px; border: 1px solid">
			<table style="width: 100%;">
				<tr>
					<td style="position: relative;">
						이슈/토론/버그 제보
						<span style="position: absolute; top: 10px; right: 5px;">더보기</span>
					</td>
				</tr>
				<c:forEach items="${issueList}" var="board" end="9">
				<tr>
					<td>
						<table>
							<tr>
								<td>
									${board.sub_category}
								</td>
								<td>
									${board.title}
								</td>
							</tr>
						</table>
					</td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>