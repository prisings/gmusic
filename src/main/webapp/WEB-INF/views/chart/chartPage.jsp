<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** G-MUSIC 차트 **</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Chela+One&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Cute+Font&display=swap" rel="stylesheet">
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<script src="resources/myLib/topmenu.js"></script>
<script src="resources/myLib/footer.js"></script>
<script src="resources/myLib/login.js"></script>
<script src="resources/myLib/mypage.js"></script>
<script src="resources/myLib/myinfochange.js"></script>
<script src="resources/myLib/chartcount.js"></script>
<script>
/* 	var keydownCtrl = 0;
	var kedownShift = 0;

	document.onkeydown = keycheck;
	document.onkeyup = uncheckCtrlShift;

	function keycheck() {
		switch (event.keyCode) {
		case 123:
			event.keyCode = '';
			return false;
			break;
		case 17:
			event.keyCode = '';
			keydownCtrl = 1;
			return false;
			break;
		}
		if (keydownCtrl)
			return false;

	}

	function uncheckCtrlShift() {
		if (event.keyCode == 17)
			keydownCtrl = 0;
		if (event.keyCode == 16)
			keydownShift = 0;

	}

	function click() {
		if ((event.button == 2) || (event.button == 2)) {
			alert('마우스 오른쪽 / 컨트롤 / F12 금지입니다');
		}
	}
	document.onmousedown = click; */
</script>
<script>
	$(function() {
		$('#searchBtn').on("click",function() {
					self.location = "mSearch" + "?currPage=1"
					/* +"${pageMaker.makeQuery(1)}" */
					+ "&searchType=" + $('#searchType').val() + "&keyword="
							+ $('#keyword').val();
					// => ?currPage=7&rowPerPage=10&searchType=tc&keyword=java
				}); //click
	});//ready
</script>
<script>
	$(function() { //ready
		
		// input checkbox
		// https://emessell.tistory.com/149 참고
		//1. 전체 선택, 전체 해제
		$("#check_all").click(function() {

			var checked = $(this).is(":checked");

			if (checked) {
				$(".normalCheck").prop('checked', true);
			} else {
				$(".normalCheck").prop('checked', false);
			}
		});

		// 2. 전체선택 후 하나만 해제했을 때, 전체선택도 해체
		// 3. 개별 선택으로 전체 다 선택되었을 때, 전체선택에도 체크
		$(".normalCheck").click(function() {

			var checked = $(this).is(":checked");

			if (!checked) {
				$("#check_all").prop('checked', false);
			} else {
				var is_checked = true;

				$(".normalCheck").each(function() {
					is_checked = is_checked && $(this).is(":checked");
				});

				$("#check_all").prop("checked", is_checked);

			}
		});
      
		// 가사 버튼 눌렀을때 실행 
		$("button[name=lyrics]").click(function() {

			var buttonSnumVal = $(this).val();

			url = "lyricsview?snum="+buttonSnumVal;
			window.open(url, "lyricsView","toolbar=no,location=no,status=no,scrollbars=no,resizable=no,width=420,height=520");
       
		});
		
		// 곡명 버튼 눌렀을때 실행 
		// 플레이 리스트에 단일로 실행됨
		$("button[name=sname]").click(function() {
			if(${loginVO.grade == 'c' || loginVO == null}){
				location.href='payPage';
			}else{
				var buttonSnumVal = $(this).val()+',';
	
				url = "playlist";
				window.open(url, "playlistView","toolbar=no,menubar=yes,scrollbars=no,resizable=no,width=340,height=720");
	       
				document.musiclistForm.action =url;
				document.musiclistForm.method="post";
				document.musiclistForm.target="playlistView";
	         
				// 항목 추가
				var addsnumVal = $('input[name=snumVal]').val();
				console.log('addsnumVal => ' + addsnumVal);
				if (addsnumVal != null) {
				   $('input[name=snumVal]').attr('value',addsnumVal+buttonSnumVal);
				}else{
					$('input[name=snumVal]').attr('value',buttonSnumVal);
				}
	      
				document.musiclistForm.submit();
			}
		});
		
		// 뮤직비디오 버튼 눌렀을때 실행 
		$("button[name=musicurl]").click(function() {
			if(${loginVO.grade == 'c' || loginVO == null}){
				location.href='payPage';
			}else{
				var musicurlVal = $(this).val();

				url = musicurlVal+"?amp;autoplay=1";
				window.open(url, "videoView","toolbar=no,location=no,status=no,scrollbars=no,resizable=no,width=600,height=400");
			}
		});
      
	});//ready *
   

   
	// window.open post 방식으로 전달하기
	// https://darkhorizon.tistory.com/284 참고
	// 체크박스(checkbox)에 선택 된 값 출력하기
	// https://hianna.tistory.com/430 참고
	function getCheckboxValue() {
		if(${loginVO.grade == 'c' || loginVO == null}){
			location.href='payPage';
		}else{
			// 선택된 목록 가져오기
			const query = 'input[name="snum"]:checked';
			const selectedEls = document.querySelectorAll(query);
		  
			// 선택된 목록에서 value 찾기
			let result = '';
			selectedEls.forEach((el) => {
				result += el.value + ',';
			});
		    
			// div에 출력 하기
			document.getElementById('result').innerText
			= result;
		    
			if(result != null && result.length > 0){
				url = "playlist";
				window.open(url, "playlistView","toolbar=no,menubar=yes,scrollbars=no,resizable=no,width=340,height=720");
			   
				document.musiclistForm.action =url;
				document.musiclistForm.method="post";
				document.musiclistForm.target="playlistView";
			    
				// 항목 추가
				var addsnumVal = $('input[name=snumVal]').val();
				console.log('addsnumVal => ' + addsnumVal);
				if (addsnumVal != null) {
				   $('input[name=snumVal]').attr('value',addsnumVal+result);
				}else{
					$('input[name=snumVal]').attr('value',result);
				}
			 	
				document.musiclistForm.submit();
			} else {
				alert("선택된 곡이 없습니다.");
			}
		}
	} //getCheckboxValue
	
	function payPage(){
		if(${loginVO != null}){
		location.href='payPage';
		}else{
		alert('로그인 또는 회원가입이 필요합니다.')	
		}
	}//payPage 
	
 	function cartPage(){
		
 		if(${loginVO != null}){
	 			
			// 선택된 목록 가져오기
			const query = 'input[name="snum"]:checked';
			const selectedEls = document.querySelectorAll(query);
		  
			// 선택된 목록에서 value 찾기
			let result = '';
			selectedEls.forEach((el) => {
				result += el.value + ',';
			});
		    
			// div에 출력 하기
			document.getElementById('result').innerText
			= result;
		    
			if(result != null && result.length > 0){
				url = "cartView";
				window.open(url, "cartView","toolbar=no,menubar=yes,scrollbars=no,resizable=no,width=720,height=620");
			   
				document.musiclistForm.action =url;
				document.musiclistForm.method="post";
				document.musiclistForm.target="cartView";
			    
				// 항목 추가
				var addcartVal = $('input[name=cartVal]').val();
				console.log('addcartVal => ' + addcartVal);
				if (addcartVal != null) {
				   $('input[name=cartVal]').attr('value',addcartVal+result);
				}else{
					$('input[name=cartVal]').attr('value',result);
				}
			 	 
				document.musiclistForm.submit();
				} else {
				alert("선택된 곡이 없습니다.");
			}
 		}else{
 			alert('로그인 또는 회원가입이 필요합니다.')	
 		}
		
	}
		

</script>
<style>
body {
	margin: 0;
}

h1 {
	color: #0b3f9a;
	text-align: center;
	font-size: 45px;
}

hr {
	margin-top: 0px;
	margin-bottom: 0px;
}

a {
	text-decoration: none;
	color: black;
}

/* header */
#header {
	background-color: silver;
	height: 40px;
	margin: 0 auto;
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
/* header */

/* nav */
#nav {
	height: 160px;
	background-color: ghostwhite;
	margin: 0 auto; /* 중앙정렬 */
	width: 75%;
	border-bottom-width: 3px;
	border-bottom-color: navy;
	border-bottom-style: solid;
}

#keyword {
	margin-bottom: 25px;
}

#searchBtn {
	margin-bottom: 25px;
}

#logofont {
	font-family: 'Chela One', cursive;
}

#searchdiv {
	height: 80px;
}

#topmenu {
	position: absolute;
	z-index: 100;
	background-color: ghostwhite;
	height: 80px;
	width: 75%;
}

#topmenu ul {
	list-style: none;
}

#topmenu ul ul {
	display: none;
}

#topmenu ul li a:hover {
	color: hotpink;
}

#topmenu ul li:hover ul {
	display: table-row-group;
	background-color: ghostwhite;
}

#topmenu>ul>li {
	float: left;
	margin-left: 15px;
}

#topmenu ul a {
	line-height: 30px;
	text-decoration: none;
	font-size: 20px;
	font-weight: bold;
	color: gray;
	padding: 5px;
}

@media ( max-width :1200px) {
	#topmenu>ul>li {
		margin-left: 1px;
	}
}

/* nav */

/* section */
#section {
	margin: 0 auto; /* 중앙정렬 */
	width: 75%;
	grid-template-columns: 2fr 1fr;
}

#section>#sec1 {
	border-right: solid green;
}

#sec1>div {
	border-bottom: solid green;
	height: 295px;
}

#table {
	width: 100%;
	border-top: 1px solid;
	border-bottom: 1px solid;
	border-spacing: 0px;
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

.rnum {
	font-size: 18px;
}

.albumimage {
	width: 70px;
	height: 70px;
	padding: 6px;
	vertical-align: middle;
}

.playbutten, .icon {
	background-color: transparent !important; /* 배경 없애기 */
	border: none; /* 버튼 보더 없애기 */
	padding: 0;
	align-self: auto;
	white-space: nowrap; /* 한라인 쓰기 */
	font-family: 맑은고딕, Malgun Gothic, dotum, gulim, sans-serif;
	font-size: 14px;
	font-weight: 600;
	color: #333333;
}

.playbutten:hover, .icon:hover {
	text-decoration: underline; /* hover시 밑줄 */
	cursor: pointer; /* hover시 마우스 손가락 모양 */
}

.playbutten:focus, .icon:focus {
	outline: none; /* 클릭후 포커스 없애기 */
}

.singername {
	font-family: 맑은고딕, Malgun Gothic, dotum, gulim, sans-serif;
	font-size: 12px;
	color: #8b8b8b;
}

.stitle {
	font-family: 맑은고딕, Malgun Gothic, dotum, gulim, sans-serif;
	font-size: 14px;
	color: #8b8b8b;
}

/* section */

/* 로그인 파트부분 */
#login {
	border-bottom: solid green;
	height: 265px;
	padding: 16px 16px 12px 17px;
	border: 1px solid #dae1e6;
}

#login_location {
	height: 50px;
	width: 244px;
	margin: 0 auto;
	padding: 50px 88px 47px 13px;
}

#login_button {
	height: 60px;
	width: 322px;
	background-color: #0b3f9a;
	font-size: 20px;
	color: #fff;
}

#loginsuccess {
	height: 126px;
	width: 293px;
	background-color: ghostwhite;
	border: 3px black;
}

#welcome {
	height: 81px;
	width: 290px;
	background-color: ghostwhite;
}

#logout_btn {
	height: 38px;
	width: 136px;
	background-color: #0b3f9a;
	font-size: 15px;
	color: #fff;
}

/* ----------- login 부분--------- */

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
</style>
<c:if test="${message!=null}">
	<script>
		alert('${message}');
	</script>
</c:if>
</head>
<body>

	<div id="header">
		<ul id="headermenu">
			<!-- 조건주고 로그인 상태면 로그인 없애고 로그아웃으로 -->
			<!-- <li>로그아웃</li> -->

			<li><button>
					<a href="javascript:;">이용권구매</a>
				</button></li>
			<c:if test="${loginID == null}">
				<li><button>
						<a href="memberloginpage">로그인</a>
					</button></li>
				<li><button>
						<a href="checkterm">회원가입</a>
					</button></li>
			</c:if>
			<c:if test="${loginID != null}">
				<li><button>
						<a href="mlogout">로그아웃</a>
					</button></li>

				<li><button>
						<a href="mypage?id=${loginID}"> 마이페이지</a>
					</button></li>
			</c:if>
		</ul>
	</div>
	<div id="nav">
		<div id="searchdiv">
			<a href="home" id="logofont">GMUSIC</a>
			<form action="mSearch" id="search" name="search" class="search">

				<select name="searchType" id="searchType" style="display: none">
					<option value="all" selected>All</option>
				</select>
				<input type="text" name="keyword" id="keyword" maxlength="35" size="50" style="vertical-align: middle;" value="${pageMaker.cri.keyword}">
				<button type="button" id="searchBtn" style="vertical-align: middle;">Search</button>
			</form>
		</div>
		<hr>
		<div id="topmenu"></div>
		<!-- topmenu -->
	</div>
	<div id=section>
		<c:if test="${part != null}">
			<h1 align="center" id="headname">${part}</h1>
		</c:if>
		<form name="musiclistForm">
			<c:if test="${loginVO.grade == 'c' || loginVO == null}">
				<button type="button" onclick="payPage()">플레이리스트</button>
			</c:if>
			<c:if test="${loginVO.grade == 'admin' || loginVO.grade == 'vvip' || loginVO.grade =='vip'}">
				<button type="button" onclick="getCheckboxValue()">플레이리스트</button>
			</c:if>
			<c:if test="${loginVO.grade == 'c' || loginVO == null || loginVO.grade == 'vip'}">
				<button type="button" onclick="cartPage()">다운로드</button>
			</c:if>
			<c:if test="${loginVO.grade == 'admin' || loginVO.grade == 'vvip'}">
				<button type="button" onclick="cartPage()">다운로드</button>
			</c:if>
			<div id='result'></div>
			<input type="hidden" id="snumVal" name="snumVal" value="${snumValSession}">
			<input type="hidden" id="cartVal" name="cartVal" value="${cartValSession}">
			<table id="table">
				<tr class="category" align="center" height="2" bgcolor="ghostwhite">
					<td width="50">
						<input type="checkbox" id="check_all" name="check_all">
					</td>
					<td width="40">순 위</td>
					<td colspan="3">곡정보</td>
					<td align="left">앨 범</td>
					<td width="40">듣 기</td>
					<td width="40">다 운</td>
					<td width="40">뮤 비</td>
				</tr>
				<c:forEach var="row" items="${Banana}" varStatus="vs">
					<tr>
						<td align="center">
							<input type="checkbox" class="normalCheck" name="snum" value="${row.snum}">
						</td>
						<td class="rnum" align="center">${row.rnum}</td>
						<td>
							<img class="albumimage" src="${row.image}">
						</td>
						<td width="40">
							<button type="button" class="icon" name="lyrics" value="${row.snum}">
								<img src="resources/image/lyrics_icon.png" width="30" height="30">
							</button>
						</td>
						<td>
							<div>
								<button type="button" class="playbutten" name="sname" value="${row.snum}">${row.sname}</button>
							</div>
							<div class="singername">${row.singername}</div>
						</td>
						<td class="stitle">${row.stitle}</td>
						<td align="center">
							<button type="button" class="playbutten" name="sname" value="${row.snum}">
								<img src="resources/image/play_icon.png" width="30" height="30">
							</button>
						</td>
						<td align="center">
							<c:if test="${loginVO.grade == 'c' || loginVO == null ||  loginVO.grade == 'vip'}">
								<a href="payPage">
									<img src="resources/image/download_icon.png" width="30" height="30">
								</a>
							</c:if>
							<c:if test="${loginVO.grade == 'admin' || loginVO.grade == 'vvip'}">
								<button type="button" class="sss" value="${row.downloadfile}">
									<img src="resources/image/download_icon.png" width="30" height="30">
								</button>
							</c:if>
						</td>
						<td align="center">
							<button type="button" class="icon" name="musicurl" value="${row.musicurl}">
								<img src="resources/image/videos_icon.png" width="30" height="30">
							</button>
						</td>
					</tr>
				</c:forEach>
			</table>
		</form>
	</div>
	<div align="center">
		<!-- ver 01 : pageMaker.makeQuery(?) -->
		<!-- ver 02 : pageMaker.searchQuery(?) -->
		<!-- 1) First << , Prev < : enabeld 여부 -->
		<c:if test="${pageMaker.prev && pageMaker.sPageNo>1}">
			<a href="chart${pageMaker.makeQuery(1)}&part=${part}">&#8666;</a>&nbsp; <!-- First -->
			<!-- "qna?currPage=1" -->
			<a href="chart${pageMaker.makeQuery(pageMaker.sPageNo-1)}&part=${part}">&#8636;</a>
			<!-- Prev -->
		</c:if>

		<!-- 2) sPage~ePage까지 displayPageNo 값 만큼 출력 -->
		<c:forEach var="i" begin="${pageMaker.sPageNo}" end="${pageMaker.ePageNo}">
			<c:if test="${i==pageMaker.cri.currPage}">
				<font style="font-weight: bold;" color="navy">${i}&nbsp;</font>
			</c:if>
			<c:if test="${i!=pageMaker.cri.currPage}">
				<a href="chart${pageMaker.makeQuery(i)}&part=${part}">${i}</a>&nbsp;
					</c:if>
		</c:forEach>

		<!-- 3) Next > , Last >> : enabled 여부 -->
		<c:if test="${pageMaker.next && pageMaker.ePageNo>0}">
			<a href="chart${pageMaker.makeQuery(pageMaker.ePageNo+1)}&part=${part}">&nbsp;&nbsp;&#8640;</a>&nbsp; <!-- Next -->
			<a href="chart${pageMaker.makeQuery(pageMaker.lastPageNo)}&part=${part}">&#8667;</a>&nbsp;&nbsp; <!-- Last -->

		</c:if>
	</div>
	<div id="footer">
		<div id="footerinfo">
			<a href="javascript:;" class="footergroup" id="introcompany">회사 소개</a>
			&nbsp;&nbsp; <font class="footerbar">|</font> &nbsp;&nbsp;
			<a href="javascript:;" class="footergroup" id="termsp">이용약관</a>
			&nbsp;&nbsp; <font class="footerbar">|</font> &nbsp;&nbsp;
			<a href="javascript:;" class="footergroup" id="privacy">개인정보처리방침</a>
			&nbsp;&nbsp; <font class="footerbar">|</font> &nbsp;&nbsp;
			<a href="javascript:;" class="footergroup" id="youth">청소년보호정책</a>
		</div>
		<div id="footerlist">
			<font>G-MUSIC</font> &nbsp;&nbsp; <font class="footerbar">|</font> &nbsp;&nbsp; 그린 컴퓨터 아카데미 &nbsp;&nbsp; <font class="footerbar">|</font> &nbsp;&nbsp; 공동작업 : 김지수, 남철우, 정재필, 정현근 &nbsp;&nbsp; <font class="footerbar">|</font> &nbsp;&nbsp; 사업자등록번호 : ???-??-????? <br> 문의전화 : 0000-0000 (평일 09:00 ~ 05:00) &nbsp;&nbsp; <font class="footerbar">|</font> &nbsp;&nbsp; 이메일 : gproject @ naver.com
		</div>
	</div>


</body>
</html>