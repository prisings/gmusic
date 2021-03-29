<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gmusic</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Croissant+One&display=swap"
	rel="stylesheet">
<!-- footer font link start -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Cute+Font&display=swap"
	rel="stylesheet">
<!-- footer font link  end-->
<style>
a {
	text-decoration: none;
	color: black;
}

body {
	margin: 0;
}

hr {
	margin-top: 0px;
	margin-bottom: 0px;
}

#header {
	background-color: ghostwhite;
	height: 40px;
	width: 100%;
	margin: 0 auto; /* 중앙정렬 */
	width: 75%;
}

#headermenu {
	float: right;
	list-style: none;
	margin: 8px 8px 8px;
}

#headermenu>li {
	display: inline;
}

#nav {
	height: 160px;
	background-color: ghostwhite;
	margin: 0 auto; /* 중앙정렬 */
	width: 75%;
}

#menubar {
	padding-top: 15;
	float: left;
	list-style: none;
	height: 40px;
	float: left;
	padding: 0px;
}

#menubar>li {
	display: inline;
}

#menubar>li>a {
	font-family: "Croissant One", sans-serif;
	float: left;
	text-align: center;
	line-height: 50px;
	margin-left: 15px;
}

#section {
	height: 900px;
	margin: 0 auto; /* 중앙정렬 */
	width: 75%;
	background-color: ghostwhite;
	display: grid;
	grid-template-columns: 2fr 1fr;
}

#section>#sec1 {
	border-right: solid green;
}

#sec1>div {
	border-bottom: solid green;
	height: 299px;
}

#sec1>div>ul>li {
	margin: 0 auto;
	list-style-type: none;
	float: left;
}

#login {
	border-bottom: solid green;
	height: 300px;
}

#chart {
	border-bottom: solid green;
	height: 600px;
}
/*footer---------------------------- */
#footer {
	height: 100px;
	background-color: ghostwhite;
	margin: 0 auto; /* 중앙정렬 */
	width: 75%;
}

#footerinfo {
	text-align: center;
	padding-top: 15px;
	margin-bottom: 10px; 
	font-size: 20px;
	font-family: "Cute Font", sans-serif;
}

#footerlist {
	text-align: center;
	padding-bottom: 10px;
	font-family: "Cute Font", sans-serif;
	font-size: 15px;
	padding-bottom: 10px;
}

#footerbar {
	font-size: 5px;
}
/*footer---------------------------- */
/* 로고 이미지 */
#gm {
	width: 80px;
	height: 80px;
	margin-left: 8px;
	margin-top: 8px;
}

#keyword {
	margin-bottom: 25px;
}

#searchBtn {
	margin-bottom: 25px;
}

#tese {
	font-family: "Croissant One", sans-serif;
	padding-left: 15px;
	padding-right: 15px;
}
</style>
</head>
<body>
	<div id="header">
		<ul id="headermenu">
			<!-- 조건주고 로그인 상태면 로그인 없애고 로그아웃으로 -->
			<!-- <li>로그아웃</li> -->
			<li><button>
					<a href="javascript:;">공지사항/이벤트</a>
				</button></li>
			<li><button>
					<a href="javascript:;">이용권구매</a>
				</button></li>
			<li><button>
					<a href="javascript:;">로그인</a>
				</button></li>
			<li><button>
					<a href="javascript:;">회원가입</a>
				</button></li>
		</ul>

	</div>
	<div id="nav">
		<br>
		<div>
			<font id="tese" size="20">GMUSIC</font> <input type="text"
				name="keyword" id="keyword" maxlength="10" size="50"
				style="vertical-align: middle;">
			<button id="searchBtn" style="vertical-align: middle;">Search</button>
		</div>
		<div>
			<ul id="menubar">
				<li><a href="javascript:;">차트순위</a></li>&nbsp;&nbsp;
				<li><a href="javascript:;">최신음악</a></li>&nbsp;&nbsp;
				<li><a href="javascript:;">장르음악</a></li>&nbsp;&nbsp;
				<li><a href="javascript:;">뮤직비디오</a></li>
			</ul>
		</div>
	</div>

	<div id="section">
		<div id="sec1">
			<div>
				<a href="javascript:;">선호장르음악&nbsp;&gt;</a>

				<ul>
					<li><img src="./image/IU1.JPG" width="200" height="200">
						&nbsp;&nbsp;&nbsp;</li>
					<li><img src="./image/IU1.JPG" width="200" height="200">
						&nbsp;&nbsp;&nbsp;</li>
					<li><img src="./image/IU1.JPG" width="200" height="200">
						&nbsp;&nbsp;&nbsp;</li>
					<li><img src="./image/IU1.JPG" width="200" height="200">
					</li>
				</ul>
			</div>
			<div>
				<a href="javascript:;">최신음악&nbsp;&gt;</a>

				<ul>
					<li><img src="./image/IU1.JPG" width="200" height="200">
						&nbsp;&nbsp;&nbsp;</li>
					<li><img src="./image/IU1.JPG" width="200" height="200">
						&nbsp;&nbsp;&nbsp;</li>
					<li><img src="./image/IU1.JPG" width="200" height="200">
						&nbsp;&nbsp;&nbsp;</li>
					<li><img src="./image/IU1.JPG" width="200" height="200">
					</li>
				</ul>
			</div>
			<div>
				<a href="javascript:;">뮤직비디오&nbsp;&gt;</a>

				<ul>
					<li><img src="./image/IU1.JPG" width="200" height="200">
						&nbsp;&nbsp;&nbsp;</li>
					<li><img src="./image/IU1.JPG" width="200" height="200">
						&nbsp;&nbsp;&nbsp;</li>
					<li><img src="./image/IU1.JPG" width="200" height="200">
						&nbsp;&nbsp;&nbsp;</li>
					<li><img src="./image/IU1.JPG" width="200" height="200">
					</li>
				</ul>
			</div>
		</div>
		<div id="sec2">
			<div id="login">아</div>
			<div id="chart">아</div>
		</div>
	</div>


	<div id="footer">
		<div id="footerinfo">
			<a href="introcompany">회사 소개</a>&nbsp;&nbsp;
			<font class="footerbar">|</font> &nbsp;&nbsp;
			<a href="termsp">이용약관</a>&nbsp;&nbsp;
			<font class="footerbar">|</font> &nbsp;&nbsp;
			<a href="privacy">개인정보처리방침</a>&nbsp;&nbsp;
			<font class="footerbar">|</font> &nbsp;&nbsp;
			<a href="youth">청소년보호정책</a>
		</div>
		<div id="footerlist">
			<font>G-MUSIC</font> &nbsp;&nbsp; <font class="footerbar">|</font>
			&nbsp;&nbsp; 그린 컴퓨터 아카데미 &nbsp;&nbsp; <font class="footerbar">|</font>
			&nbsp;&nbsp; 공동작업 : 김지수, 남철우, 정재필, 정현근 &nbsp;&nbsp; <font
				class="footerbar">|</font> &nbsp;&nbsp; 사업자등록번호 : ???-??-????? <br>
			문의전화 : 0000-0000 (평일 09:00 ~ 05:00) &nbsp;&nbsp; <font
				class="footerbar">|</font> &nbsp;&nbsp; 이메일 : gproject @ naver.com
		</div>
	</div>
</body>
</html>