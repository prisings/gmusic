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

#text {
   margin-left: 15px;
   width: 1392px;
   height: 457px;
   background-color: ghostwhite;
   border: none;
   resize: none;
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
			<font id="tese" size="20"><a href="home">GMUSIC</a>></font> <input
				type="text" name="keyword" id="keyword" maxlength="10" size="50"
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
      <table>
         <tr>
            <textarea id="text" row="100" cols="220">
1. 청소년 보호를 위한 목표 및 기본 원칙
회사는 청소년이 정신적•신체적으로 유해한 환경으로부터 보호받고 유익한 환경을 조성하도록 노력하며, 안전하게 인터넷을 이용할 수 있는 서비스를 제공하기 위해 청소년보호 정책을 명시하고 있습니다. 이용자가 불건전한 행위를 할 경우 서비스 이용약관 등을 통하여 이용 제한을 받을 수 있음을 고지하고 있으며, 신종 유해 정보가 발생했을 경우 공지사항 또는 이메일을 통하여 이를 신속 시 전파함으로써 청소년 및 전체 이용자를 보호하고 있습니다. 또한 각종 정보 건전화 교육 및 캠페인 등을 통하여 네티켓 의식 고취를 위하여 노력하고 있습니다.

2. 청소년 보호 장치
회사는 청소년이 아무런 제한 장치 없이 유해 정보에 노출되지 않도록 청소년 유해 매체 물에 대해서는 인증 장치를 마련•적용하고 있으며, 유해 정보가 노출되지 않게 하기 위한 예방 차원의 조치를 강구하고 있습니다.

3. 유해 정보에 대한 청소년 접근 제한 및 관리
회사는 불법적이거나 청소년에 유해한 키워드에 대한 금칙어를 서비스에 적용하고 있으며, 성인 인증 장치가 마련된 서비스에 대해서는 이용 범위를 제한하는 등 체계적인 관리를 하고 있습니다.

4. 청소년 보호를 위한 담당자 교육 시행
회사는 청소년보호담당자 및 서비스 담당자들을 대상으로 청소년 보호 관련 법령 및 제재 기준, 유해정보 발견 시 대처방법, 위반사항 처리에 대한 보고 절차 등을 교육하고 있습니다.

5. 유해 정보로 인한 피해 상담 및 고충 처리
회사는 청소년 유해 정보로 인한 피해상담 및 고충처리를 위한 전문 인력을 배치하여 구제 조치의 지연 및 처리 미숙 등 관련 피해가 확산되지 않도록 항상 최선을 다해 노력하고 있습니다.
이용자분들께서는 '청소년보호 책임자 및 담당자' 정보를 참고하여 전화, 이메일 및 고객센터 1:1문의를 통해 피해 상담 및 고충처리를 요청할 수 있으며, 유해 정보로 인한 피해 구제가 필요한 경우 관련 기관에 문의하실 수 있습니다.

- 방송통신심의위원회 : http://www.kocsc.or.kr/ (02) 3219-5114
- 경찰청 아동ㆍ여성ㆍ장애인 경찰지원센터 : http://www.safe182.go.kr/ (국번없이) 182

6. 청소년보호 책임자 및 담당자의 지정
회사는 아래와 같이 청소년보호 책임자 및 청소년보호 담당자를 지정하여 청소년 유해 정보의 차단 및 관리, 청소년 유해 정보로부터의 청소년보호정책을 수립하는 등 청소년보호 업무를 수행하고 있습니다.

7. 청소년보호정책의 개정
본 정책은 관련 법률 및 정부지침의 변경과 회사의 정책에 따라 개정될 수 있으며 개정된 사항은 홈페이지를 통해 공지하겠습니다.
</textarea>
         </tr>
      </table>
   </div>


	<div id="footer">
		<div id="footerinfo">
			<a href="introcompany">회사 소개</a>&nbsp;&nbsp; <font class="footerbar">|</font>
			&nbsp;&nbsp; <a href="termsp">이용약관</a>&nbsp;&nbsp; <font
				class="footerbar">|</font> &nbsp;&nbsp; <a href="privacy">개인정보처리방침</a>&nbsp;&nbsp;
			<font class="footerbar">|</font> &nbsp;&nbsp; <a href="youth">청소년보호정책</a>
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