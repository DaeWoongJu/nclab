<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#div1{width: 500px;height: 200px;background-color: #FFF1AF;}
</style>
<div id="div1" >
<ul>
	<li><a href="${pageContext.request.contextPath }/">홈으로</a></li>
	<li><a href="${pageContext.request.contextPath }/gongi/insert">글등록</a></li>
	<li><a href="${pageContext.request.contextPath }/gongi/list?pageNum=1">글목록</a></li>
</ul>
</div>
</head>
<body>
<div style="background-color: #D6E5FA; width: 500px;height: 500px">
<h1 >게시판</h1>
<a href="${pageContext.request.contextPath }/gongi/list">전체글목록</a>
<a href="${pageContext.request.contextPath }/">홈으로</a><br><br>
<table border="1" width="500">
	<tr>
		<th>글번호</th>
		<th>작성자</th>
		<th>내용</th>
		<th>제목</th>
		<th>삭제</th>
	</tr>
	<c:forEach var="vo" items="${list}">
		<tr>
			<td>${vo.num }</td>
			<td>${vo.writer }</td>
			<td>${vo.content }</td>
			<td>${vo.title }</td>
			<td><a href="${pageContext.request.contextPath }/gongi/delete?num=${vo.num}">삭제</a></td>
		</tr>
	</c:forEach>
</table>
<div>
	<c:set var="cp" value="${pageContext.request.contextPath }" />
	<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
		<c:choose>
			<c:when test="${i==param.pageNum }">
				<a href="${cp }/gongi/list?pageNum=${i}&field=${field}&keyword=${keyword}"><span style='color:red'>${i }</span></a>
			</c:when>
			<c:otherwise>
				<a href="${cp }/gongi/list?pageNum=${i}&field=${field}&keyword=${keyword}"><span style='color:orange'>${i }</span></a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</div>
<div>
	<form action="${cp }/gongi/list" method="post">
		<select name="field">
			<option value="title" <c:if test="${field=='title'}">selected</c:if>>제목</option>
			<option value="content" <c:if test="${field=='content'}">selected</c:if>>내용</option>
			<option value="all" <c:if test="${field=='all'}">selected</c:if>>제목+내용</option>
		</select>
		<input type="text" name="keyword" value="${keyword }">
		<input type="submit" value="검색">	
	</form>
</div>
</div>
</body>
</html>





















