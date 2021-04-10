<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<style>
tr {
	text-align: center;
}

#playlist {
	list-style: none;
}

a {
	text-decoration: none;
	color: black;
}
</style>

<script> // 우클릭방지
	$("*").bind("contextmenu", (function(n) {return !1}));
</script>

</head>
<body>

	<div id="songname">${Banana[0].sname}</div>
	<div id="singername">${Banana[0].singername}</div>
	<img src="${Banana[0].image}" width="200" height="200" id="musicimage" />
	<br>
	<audio src="${Banana[0].downloadfile}" id="audioplay"
		controls="controls" autoplay="autoplay" onended="next()">
	</audio>
	<button type="button" onclick="privious">이전</button>
	<button type="button" id="play()">재생</button>
	<button type="button" onclick="next()">다음</button>
	<select id="playlist">
		<c:forEach begin="0" end="${Banana.size()}" var="row"
			items="${Banana}">
			<option value="${row.downloadfile}" class="current-song">${row.sname}</option>
		</c:forEach>
	</select>
	<c:if test="${Banana[0].lyrics != null }">
		<textarea rows="50" cols="100">${Banana[0].lyrics}</textarea>
	</c:if>
</body>
</html>
