<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style type="text/css">
*{
	margin: 0;
	padding: 0;
}
ul li{
	list-style:  none;
}
a{
	text-decoration: none;
}
#header{
	background-color: black;
	width: 100px;
	height: 80px;
	color: white;
}
#siteName{
	position: absolute;
	left: 45%; 
}
#headerLoginMenu{
	float: right;
	margin: 20px;
}
#headerLoginMenu ul li{
	float: left;
	margin: 10px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id=siteName>
	<h1>N-CLAB</h1>
</div>
<div id="headerLoginMenu">
	<ul>
		<li><a href="${cp }/">HOME</a></li>
		<li><a href="${cp}/member/insert">회원가입</a></li>
		<li><a href="${cp}/member/login">login</a></li>
	</ul>
</div>
</body>
</html>