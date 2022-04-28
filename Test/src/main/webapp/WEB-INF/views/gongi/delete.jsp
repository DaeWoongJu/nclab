<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 삭제</h1>
	<form action="${cp }/gongi/delete" method="post">
		<table width="500" border="1">
			<tr height="40">
				<td width="200" align="center">비밀번호</td>
				<td><a href="${pageContext.request.contextPath }/gongi/delete?num=${vo.num}">삭제</a></td>
			</tr>
		</table>
	</form>
</body>
</html>