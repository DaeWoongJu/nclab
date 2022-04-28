<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>홈</h1>
<ul>
	<li><a href="${pageContext.request.contextPath }/gongi/insert">글등록</a></li>
	<li><a href="${pageContext.request.contextPath }/gongi/list?pageNum=1">글목록</a></li>
</ul>
</body>
</html>