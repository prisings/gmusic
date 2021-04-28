<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#button {
	border: 0;
	outline: 0;
	background-color: white;
}

#table {
	width: 75%;
	border-top: 1px solid;
	border-bottom: 1px solid;
	border-spacing: 0px;
	margin: 0 auto;
}

#table td {
	border-bottom: 1px solid;
	border-collapse: collapse;
	border-color: #EEEEEF;
	padding: 5px;
}

.category {
	font-family: 맑은고딕, Malgun Gothic, dotum, gulim, sans-serif;
	font-size: 14px;
}
</style>
</head>
<body>
	<table id="table">
		<tr class="category" align="center" height="2" bgcolor="ghostwhite">
			<td>ID</td>
			<td>EMail</td>
			<td>회원등급</td>
			<td>핸드폰번호</td>
			<td>Point</td>
			<td>자동결제</td>
			<td>등급변경</td>
			<td>포인트변경</td>
			<td>회원탈퇴</td>
		</tr>
		<c:forEach var="row" items="${Banana}">
			<tr align="center">
				<td>${row.id}</td>
				<td>${row.email}</td>
				<td>${row.grade}</td>
				<td>${row.phone}</td>
				<td>${row.point}</td>
				<c:choose>
					<c:when test="${row.autopay == 1}">
						<td>
							<img src="resources/image/check.png" width="30px" height="30px">
						</td>
					</c:when>
					<c:otherwise>
						<td>
							<img src="resources/image/delete.png" width="20px" height="20px">
						</td>
					</c:otherwise>
				</c:choose>
				<td>
					<button id="button">change</button>
				</td>
				<td>
					<button id="button">change</button>
				</td>
				<td>
					<button id="button">
						<img src="resources/image/delete.png" width="30px" height="30px">
					</button>
				</td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>