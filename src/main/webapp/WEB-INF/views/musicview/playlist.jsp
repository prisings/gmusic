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

<script>
	// 우클릭방지
	$("*").bind("contextmenu", (function(n) {return !1}));
</script>

<script>
	function previous() {
		var index = $("#playlist option").index($("#playlist option:selected"));
		console.log(index);
		var size = <c:out value="${Banana.size()}"/> - 1
		if (index == 0) {
			index = size;
			} else {
			index = index - 1;
			}
		$("#playlist option:eq(" + index + ")").prop("selected", true);
		play();

	}

	function play() {
		$("#songname").html($("#playlist option:selected").attr('value'));
		$("#singername").html($("#playlist option:selected").attr('value2'));
		$("#musicimage").attr("src", $("#playlist option:selected").attr('value3'));
		$("#audioplay").attr("src",	$("#playlist option:selected").attr('value4'));
		$("#lyrics").html($("#playlist option:selected").attr('value5'));
	}

	function next() {
		var index = $("#playlist option").index($("#playlist option:selected"));
		var size = <c:out value="${Banana.size()}"/> - 1
		if (index == size) {
		index = 0;
		} else {
		index = index + 1;
		}
		$("#playlist option:eq(" + index + ")").prop("selected", true);
		play();
	}
	
	function loop() {
		var loops = false;
		
		if(loops == false){
			
		document.getElementById("audioplay").loop = true
		loops = true;
		console.log("1번" + loops)
		
		}else{
			
		document.getElementById("audioplay").loop = false
		loops = false;
		console.log("2번" + loops)	
		}
	}
</script>
</head>
<body onload="play()">

	<div id="songname"></div>
	<div id="singername"></div>
	<img src="" width="200" height="200" id="musicimage" />
	<br>
	<audio src="" id="audioplay" controls="controls" autoplay="autoplay" 
		onended="next()">
	</audio>
	<button type="button" onclick="previous()">이전</button>
	<button type="button" onclick="play()">재생</button>
	<button type="button" onclick="next()">다음</button>
	<button type="button" onclick="loop()">반복</button>
	<select id="playlist">
		<c:forEach begin="0" end="${Banana.size()}" var="row"
			items="${Banana}">
			<option value="${row.sname }" value2="${row.singername }"
				value3="${row.image }" value5="${row.lyrics }"
				value4="${row.downloadfile}" class="current-song">${row.sname}</option>
		</c:forEach>
	</select>
	<textarea rows="50" cols="100" id=lyrics></textarea>
</body>
</html>
