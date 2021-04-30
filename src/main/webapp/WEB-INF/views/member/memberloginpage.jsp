<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<title>Gmusic LoginPage</title>
<link href="https://fonts.googleapis.com/css2?family=Cute+Font&display=swap" rel="stylesheet">
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<!-- <script src="resources/myLib/footer.js"></script> -->
<style>
body {
	height: 95%;
	width: 100%;
	margin: auto;
	background-color: ghostwhite;
}

a {
	text-decoration: none;
	color: black;
}

#loginf_location {
	position: absolute;
	top: 23%;
	left: 48%;
	width: 300px;
	height: 160px;
	margin-left: -150px;
	margin-top: -80px;
}

#logo {
	font-size: 93px;
	color: #0b3f9a;
	font-family: 'Chela One', cursive;
}

#login_button2 {
	height: 60px;
	width: 374px;
	background-color: #0b3f9a;
	font-size: 20px;
	color: #fff;
}

#id, #password {
	height: 40px;
	width: 366px;
}
</style>

<c:if test="${message!=null}">
	<script>
		alert('${message}');
	</script>
</c:if>
</head>
<body>
	<div id=loginf_location>
		<div>
			<a href="home" id="logo">GMUSIC</a>
		</div>
		<br> <br>
		<form action="mlogin" method="get">
			<table>
				<tr>
					<td>
						<input type="text" id="id" name="id" placeholder="아이디">
				</tr>
				<tr>
					<td>
						<input type="password" id="password" name="password" placeholder="비밀번호">
				<tr style="text-align: right;">
					<td>
						<a href="searchIdPage" id="searchIdPage" class="search_id">아이디 찾기</a>
						&nbsp;
						<a href="javascript:;" id="searchPasswordPage" class="search_password">비밀번호 찾기</a>
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" id="login_button2" value="로그인">
					</td>
			</table>
		</form>
	</div>

</body>
</html>