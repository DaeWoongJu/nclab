<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
결과코드 ${code }<br>
<c:choose>
	<c:when test="${result=='success' }">
		성공!
	</c:when>
	<c:otherwise>
		실패
	</c:otherwise>
</c:choose>
<a href="${pageContext.request.contextPath }/">홈</a>
</body>
</html>