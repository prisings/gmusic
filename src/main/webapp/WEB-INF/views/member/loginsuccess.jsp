<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginSuccess</title>
<link href="https://fonts.googleapis.com/css2?family=Cute+Font&display=swap"
	rel="stylesheet">
<style>
body {
	height: 95%;
	width: 100%; 
	margin : auto;
	background-color: ghostwhite;
}

a {
	text-decoration: none;
	color: black;
}

#loginsuccess {
	border-bottom: solid green;
	height: 265px;
	padding: 16px 16px 12px 17px;
	border: 1px solid #dae1e6;
}
</style>
</head>
<body>
	<div id="loginsuccess">
	        <h1><%= request.getParameter("id") %>님 반갑습니다.</h1>
      <h1><a href="mlogout">로그아웃</a></h1>
</div>
</body>
</html>