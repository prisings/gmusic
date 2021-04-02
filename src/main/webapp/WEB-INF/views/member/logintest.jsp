<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Spring MVC2 Member Login **</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<script src="resources/myLib/axTest01.js"></script>


</head>
<body>
<h2>** Spring MVC2 Member Login **</h2>
<form action="mlogin" method="get">
<table>
	<tr><td><label for="id">I D :</label></td>
		<td><input type="text" name="id" id="id" ><br>
			<span id="iMessage" class="message"></span></td>
	</tr>
	<tr><td><label for="pw">Password:</label></td>
		<td><input type="password" name="password" id="password"><br>
			<span id="pMessage" class="message"></span></td>
	</tr>
	<tr><td></td>
		<td><input type="submit" value="Login" >
		<input type="reset" value="Reset">&nbsp;
		<span id="alogin" class="textLink">axLogin</span>&nbsp;
		<span id="jlogin" class="textLink">jsLogin</span></td>
	</tr>
</table>
</form>
<c:if test="${message != null}">
	<hr><br>
	=> ${message}
</c:if>
<hr><a href="home">[Home]</a>
</body>
</html>