<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
a {
	text-decoration: none;
	color: black;
}
</style>
	<script>
		function audioPlay() {
			var currentSong = 0;

			$("#playlist li a").click(function(e) {
				e.preventDefault();
				$("#audioPlay")[0].src = this;
				$("#audioPlay")[0].play();
				$("#playlist li").removeClass("current-song");
				currentSong = $(this).parent().index();
				$(this).parent().addClass("current-song");
			});

			$("#audioPlay")[0].addEventListener("ended", function() {
				currentSong++;
				if (currentSong == $("#playlist li a").length)
					currentSong = 0;
				$("#playlist li").removeClass("current-song");
				$("#playlist li:eq(" + currentSong + ")").addClass(
						"current-song");
				$("#audioPlay")[0].src = $("#playlist li a")[currentSong].href;
				$("#audioPlay")[0].play();
			});
		}
		
		
	</script>

</head>
<body>

	<input id="snum" name="snum" hidden="hidden" value="${Apple.snum+1}">
		 ${Apple.sname}
	<br> ${Apple.singername}
	<br>
	<img src="${Apple.image}" width="200" height="200" />
	<br>
	<audio src="${Apple.downloadfile}" id="audioPlay" controls="controls" volume="50%">
	</audio>

	<ul id="playlist">
		<li class=" current-song"><a href="${Apple.downloadfile}">${Apple.sname}</a></li>
		<c:forEach begin="1" end="${Banana.size()}" var="row" items="${Banana}">
		<li><a href="${row.downloadfile}">${row.sname}</a></li>
		</c:forEach>
	</ul>

</body>
</html>
