<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Water+Brush&display=swap" rel="stylesheet">
 <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="cheesecake.css">
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
body {
	--btn-size: 150px;
	--accent-color: red;
	width: 100%;
	height: 100vh;
	display: grid;
	place-items: center;
	overflow: hidden;
	background: #efefef;	
	font-size: calc(var(--btn-size) * .55);	
}

.menu {
	position: relative;
	width: var(--btn-size);
	aspect-ratio: 1 / 1;
	border-radius: 50%;
	display: grid;
	place-items: center;
	text-align: center;
	color: white;	
	cursor: pointer;
	user-select: none;
	transition: 0.75s;
	line-height: 100%;
}
.menu:after {
	content: '\2630';
	width: var(--btn-size);
	aspect-ratio: 1 / 1;
	position: absolute;
	left: 0;
	top: 0;
	display: grid;
	place-items: center;
	background: var(--accent-color);
	border-radius: inherit;
	font-size: calc(var(--btn-size) * .48);
	transition: .75s;
	box-shadow:
		0 10px 15px rgba(0,0,0,.5);
}
.open_menu:after {
	content: '\00D7';
	background: gray;
}

.nav-item {
	width: var(--btn-size);
	aspect-ratio: 1 / 1;
	border-radius: 50%;
	background: var(--accent-color);
	position: absolute;
	transition: 0.75s;
	user-select: none;
	left: 0;
	top: 0;
	transform: scale(0.1);
	box-shadow:
		0 5px 5px rgba(0,0,0,.25);
	text-decoration: none;
	font-family: sans-serif;
	color: white;
	box-sizing: border-box;
	display: grid;
	place-items: center;
	animation: hue 10s linear infinite;
}
@keyframes hue {
	100% { filter: hue-rotate(360deg); }
}

.open_menu .nav-item {
	transform: scale(1) rotate(360deg);
}
.open_menu .nav-item:hover {
	transform: scale(1.25) rotate(360deg);
}

.open_menu .nav-item:nth-child(1) {
	top: calc(var(--btn-size) * -.4);
	left: calc(var(--btn-size) * -1.2);
}
.open_menu .nav-item:nth-child(2) {
	top: calc(var(--btn-size) * -1.2);
	left: 0px;
}
.open_menu .nav-item:nth-child(3) {
	top: calc(var(--btn-size) * -.4);
	left: calc(var(--btn-size) * 1.2);
}
.open_menu .nav-item:nth-child(4) {
	top: calc(var(--btn-size) * 1);
	left: calc(var(--btn-size) * -.8);
}
.open_menu .nav-item:nth-child(5) {
	top: var(--btn-size);
	left: calc(var(--btn-size) * .8);
}

</style>
<meta charset="UTF-8">
</head>
<h2 style="font-family: 'Water Brush', cursive;">N-CLAB</h2>
<body>
<%-- <div id="headerLoginMenu">
	<ul>
		<li><a href="${cp }/">HOME</a></li>
		<li><a href="${cp}/member/insert">회원가입</a></li>
		<li><a href="${cp}/member/login">login</a></li>
	</ul>
</div> --%>
<nav class="menu open_menu">&equiv;
	<a class="nav-item" title='Home!!' href="${cp }/">🏠&#xFE0E;</a>
	<a class="nav-item" title='회원가입!!' href="${cp }/gongi/insert">🔎︎&#xFE0E;</a>
	<a class="nav-item" title='글등록!!' href="${cp }/gongi/insert">🔔&#xFE0E;</a>
	<a class="nav-item" title='로그인!!' href="${cp }/game">❤&#xFE0E;</a>
	<a class="nav-item" title='마이페이지!!' href="#">👤&#xFE0E;</a>
</nav>
</body>
<script type="text/javascript">
document.querySelector(".menu").addEventListener("click", function () {
	this.classList.toggle("open_menu");
});

</script>
</html>