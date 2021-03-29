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
	height: 100%;
	margin: 0 auto; /* 중앙정렬 */
	width: 75%;
	background-color: ghostwhite;
	display: grid;
	grid-template-columns: 2fr 1fr;
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
		<div id="terms01" class="section_terms">
			<h3 class="first">1.총칙</h3>
			<dl>
				<dt>제1조 (목적)</dt>
				<dd>이 약관은 회원이 GMUSIC(이하 “회사”라 합니다)에서 제공하는 유무선 인터넷 음악서비스(웹,
					모바일 웹•앱 서비스를 포함합니다.)인 서비스를
					이용함에 있어 회원과 회사간의 권리, 의무 및 책임사항, 서비스 이용조건 및 절차 등 기본적인 사항을 규정함을 목적으로
					합니다.</dd>
				<!-- UX-1523 180816 -->
			</dl>
			<dl>
				<dt>제2조 (약관의 효력 및 변경)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> <span class="fc_point03">이
								약관은 대한민국 내에서 서비스를 이용하고자 하는 모든 회원에 대하여 그 효력을 발생합니다. 한편, 회사가 해외
								권리자 등과의 계약 체결을 통하여 해당 국가에서의 서비스가 가능한 경우 이 약관은 해당 국가 내에서 서비스를
								이용하고자 하는 모든 회원에 대하여도 그 효력을 발생합니다.</span></li>
						<li><span class="bullet">②</span> 이 약관의 내용은 서비스 화면에 게시하거나 기타의
							방법으로 회원에게 공시하고, 이에 동의한 회원이 서비스에 가입함으로써 효력이 발생합니다. 회사는 회원이 동의하기에
							앞서 약관의 내용을 회원이 쉽게 이해하여 착오 없이 거래할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여
							회원의 확인을 구합니다.</li>
						<li><span class="bullet">③</span> <span class="fc_point03">회사는
								필요하다고 인정하는 경우, “약관의규제에관한법률”, “정보통신망이용촉진및정보보호에관한법률", “콘텐츠산업진흥법”,
								“전자상거래등에서의소비자보호에관한법률” 등 관련 법령을 위반하지 않는 범위에서 이 약관을 변경할 수 있으며, 회사가
								약관을 변경하는 경우에는 적용일자 및 변경사유를 명시하여 그 적용일자 15일 전부터 서비스 사이트에 공지하고,
								회원에게 불리한 약관의 변경의 경우 개정 내용을 회원이 알기 쉽게 표시하여 그 적용일자 30일 전부터 공지하며,
								이메일 주소, 문자메시지 등으로 회원에게 개별 통지합니다. 회원의 연락처 미기재, 변경 등으로 인하여 개별 통지가
								어려운 경우, 회원이 등록한 연락처로 공지를 하였음에도 2회 이상 반송된 경우 이 약관에 의한 공지를 함으로써 개별
								통지한 것으로 간주합니다.</span></li>
						<!--150429 수정 lyr-->
						<li><span class="bullet">④</span> <span class="fc_point03">회사가
								제3항에 따라 변경 약관을 공지 또는 통지하면서 회원에게 약관 변경 적용 일까지 거부의사를 표시하지 아니할 경우,
								약관의 변경에 동의한 것으로 간주한다는 내용을 공지 또는 통지하였음에도 회원이 명시적으로 약관 변경에 대한
								거부의사를 표시하지 아니하면, 회사는 회원이 변경 약관에 동의한 것으로 간주합니다.</span></li>
						<li><span class="bullet">⑤</span> 변경된 약관에 대하여 거부의사를 표시한 회원은
							계약의 해지 또는 회원 탈퇴를 선택할 수 있습니다. 개별 이용권의 해지 효력과 관련하여서는 멜론 유료서비스 약관 관련
							조항의 내용을 따릅니다.</li>
						<li><span class="bullet">⑥</span> 회사는 이 약관을 회원이 그 전부를 인쇄할 수
							있고 확인할 수 있도록 필요한 기술적 조치를 취합니다.</li>
						<li><span class="bullet">⑦</span> <span class="fc_point03">이
								약관은 회원이 이 약관에 동의한 날로부터 회원 탈퇴 시까지 적용하는 것을 원칙으로 합니다. 단, 이 약관의 일부
								조항은 회원이 탈퇴 후에도 유효하게 적용될 수 있습니다.</span></li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제3조 (약관 외 준칙)</dt>
				<dd>이 약관에 명시되지 않은 사항은 콘텐츠산업진흥법, 전자상거래등에서의소비자보호에관한법률, 저작권법 등 관련
					법령의 규정과 일반 상관례에 의합니다.</dd>
			</dl>
			<dl>
				<dt>제4조 (용어의 정의)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> 이 약관에서 사용하는 용어의 정의는 다음과
							같습니다.
							<ol class="list_terms01">
								<li><span class="bullet">1.</span> 회원 : 서비스를 이용하기 위하여 서비스
									사이트에 접속하여 이 약관에 동의하거나 기타 회사가 요청하는 절차를 거쳐 서비스 이용 계약을 체결하여 서비스를
									이용하는 모든 고객</li>
								<li><span class="bullet">2.</span> 아이디(ID) : 회원 식별과 회원의 서비스
									이용을 위하여 회원이 선정하고 회사가 승인하는 영문자와 숫자의 조합</li>
								<li><span class="bullet">3.</span> 비밀번호(PASSWORD) : 회원의 정보
									보호를 위해 회원 자신이 설정한 문자와 숫자의 조합</li>
								<li><span class="bullet">4.</span> 닉네임(별명) : 회원이 아이디(ID) 외에
									별도로 지정한 고유의 별도명칭</li>
								<li><span class="bullet">5.</span> 운영자 : 서비스의 전반적인 관리와 원활한
									운영을 위하여 회사가 선정한 자</li>
								<li><span class="bullet">6.</span> 서비스 중지 : 정상 이용 중 회사가 정한
									일정한 요건에 따라 일정기간 동안 서비스의 제공을 중지하는 것</li>
								<li><span class="bullet">7.</span> 문자메시지 인증 : 이동전화로 문자메시지
									난수를 발송, 고객이 해당 번호를 사이트에 등록하도록 함으로써 회원 인증을 하는 것</li>
							</ol></li>
						<li><span class="bullet">②</span> 제1항에서 정하는 사항 이외의 약관 내 용어의
							정의는 관계 법령 및 서비스 안내에서 정하는 바에 의합니다.</li>
					</ol>
				</dd>
			</dl>
		</div>
		<!-- //1. 총칙 -->
		<br>
		<!-- 2. 서비스 이용 계약 -->
		<div id="terms02" class="section_terms">
			<h3>2. 서비스 이용 계약</h3>
			<dl>
				<dt>제5조 (이용계약의 성립)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> <span class="fc_point03">이
								약관은 서비스를 이용하고자 하는 회원이 가입단계에서 고객이 동의 버튼을 누르면 약관에 동의하는 것으로 봅니다.</span></li>
						<li><span class="bullet">②</span> 이용 계약은 고객이 이 약관 제6조(이용신청)의
							이용신청에 대하여 회사가 이를 승낙함으로써 성립합니다.</li>
						<li><span class="bullet">③</span> 회원은 서비스 이용신청 계약을 체결하기 전에 해당
							유료서비스에 대하여 회사가 공지하는 아래와 같은 사항을 사전에 숙지하고, 착오 없이 정확히 거래할 수 있도록 하여야
							합니다
							<ol class="list_terms01">
								<li><span class="bullet">1.</span> 서비스의 내용, (이하 유료서비스의 경우)
									가격, 이용기간, 이용가능 기기를 포함한 이용방법, 개별 이용권의 속성(음원파일의 종류), 청약철회 및 해지 조건
									및 그 방법, 환불에 관한 사항 및 유료서비스의 선택과 관련한 사항</li>
								<li><span class="bullet">2.</span> (유료서비스의 경우) 선택한 유료서비스의
									결제방법의 선택 및 선택한 결제방법에 필요한 결제정보의 입력</li>
							</ol></li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제6조 (이용신청)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> 이용신청은 서비스의 이용자 등록 화면에서 고객이
							다음 사항을 가입신청 양식에 기록하는 방식으로 행합니다.
							<ol class="list_terms01">
								<li><span class="bullet">1.</span> 성명</li>
								<li><span class="bullet">2.</span> 아이디(ID)</li>
								<li><span class="bullet">3.</span> 닉네임(별명)</li>
								<li><span class="bullet">4.</span> 비밀번호(Password)</li>
								<li><span class="bullet">5.</span> 생년월일</li>
								<li><span class="bullet">6.</span> 서비스 접속 국가</li>
								<li><span class="bullet">7.</span> 이메일(전자우편) 주소</li>
								<li><span class="bullet">8.</span> 기타 회사가 필요하다고 인정하는 사항</li>
							</ol></li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제7조 (이용신청의 승낙)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> <span class="fc_point03">회사는
								제6조에서 정한 사항을 정확히 기재하고, 이메일 주소 승인 또는 문자메시지 인증 등 회사가 정한 인증 절차를 완료한
								고객에 대하여 서비스 이용 신청을 승낙합니다.</span></li>
						<li><span class="bullet">②</span> <span class="fc_point03">회사와
								회원간 서비스 이용계약은 회사의 승낙이 회원에게 도달한 시점(유료서비스의 경우, ‘구매/결제완료’ 등의 표시가
								회원에게 절차상 표시된 시점)에 성립합니다.</span></li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제8조 (이용신청에 대한 승낙의 제한)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> <span class="fc_point03">회사는
								다음 각 호에 해당하는 사유가 발생할 경우 이용신청에 대한 승낙 또는 일정시간 동안 승낙을 유보하는 등 가입을
								제한하거나, 사안의 경중에 따라서는 손해배상을 청구할 수 있습니다.</span>
							<ol class="list_terms01">
								<li><span class="bullet">1.</span> 회사의 업무상, 기술상의 사정으로 서비스
									제공이 불가능한 경우</li>
								<li><span class="bullet">2.</span> 이용자 등록 사항을 누락하거나 오기하여
									신청하는 경우, 허위서류를 첨부하는 경우 등 이용자의 귀책사유로 인하여 승인이 불가능한 경우</li>
								<li><span class="bullet">3.</span> 사회의 안녕질서 또는 미풍양속을 저해하거나,
									저해할 목적으로 신청한 경우</li>
								<li><span class="bullet">4.</span> 만 14세 미만 아동이 법정대리인(부모
									등)의 동의를 얻지 아니한 경우</li>
								<li><span class="bullet">5.</span> 제25조(계약해지 및 이용제한)에 의하여
									이전에 회원 자격을 상실한 적이 있는 경우. 다만, 동 자격 상실 이후 1년 이상 경과한 자로 회사의 회원 재가입
									승낙을 받은 경우는 예외로 합니다.</li>
								<li><span class="bullet">6.</span> 서비스 이용 후 회원이 회사에 등록한
									결제수단의 임의 해지 및 지급 정지, 지불 불능 등의 사유로 정당한 사유 없이 회사가 청구한 서비스 요금을
									납부하지 아니한 경우</li>
								<li><span class="bullet">7.</span> 회사가 서비스 사업권 내지 저작권을 허락
									받지 아니한 국가에 거주, 체류 중인 자이거나 동 국가에서 사이트에 접속하는 경우</li>
								<li><span class="bullet">8.</span> 범죄행위, 특정한 일정 기간 동안에 유료회원
									가입, 해지를 반복하여 정상적인 용도 이외로 사용한 경우가 명백한 경우 등 회사의 서비스 방해 등의 사유로
									회원자격 상실(탈퇴) 이력이 있는 경우</li>
								<li><span class="bullet">9.</span> 기타 회사가 정한 이용신청 요건이 만족되지
									않았을 경우</li>
							</ol></li>
						<li><span class="bullet">②</span> 이용신청에 대한 승낙 후에 제1항 각호의 1에
							해당하는 사유가 발견되는 경우, 회사는 이 약관에 따라 체결된 서비스 이용계약을 해지하거나 중단할 수 있습니다.</li>
						<li><span class="bullet">③</span> <span class="fc_point03">회원의
								자격 혹은 나이에 따라 서비스 이용의 일부가 제한될 수 있습니다.</span>
							<ol class="list_terms01">
								<li><span class="bullet">1.</span> 만19세 미만의 회원은(단, 만 19세에
									도달하는 해의 1월 1일을 맞이한 자는 제외, 이하 본 조에서 동일함) 정보통신망이용촉진및정보보호등에관한법률 및
									청소년보호법의규정에 의하여 청소년유해매체물은 이용할 수 없습니다.</li>
								<!--150429 수정 lyr-->
								<li><span class="bullet">2.</span> 청소년 유해매체물을 이용하시기 위해서는 만
									19세 이상의 회원이어야 하며, 정보통신망이용촉진및정보보호등에관한법률 및 청소년보호법의 규정에 의하여 실명인증을
									통해 본인 및 연령 인증을 받으셔야 합니다. 인증을 받지 않으시면, 해당 서비스의 이용이 제한됩니다.</li>
							</ol></li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제9조 (미성년자 회원가입에 대한 특칙)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> 만 14세 미만의 “이용자”는 개인정보의 수집 및
							이용목적에 대하여 충분히 숙지하고 부모 등 법정대리인의 동의를 얻은 후에 회원가입을 신청하고 본인의 개인정보를
							제공하여야 합니다.</li>
						<li><span class="bullet">②</span> <span class="fc_point03">회사는
								부모 등 법정대리인의 동의에 대한 확인절차를 거치지 않은 만 14세 미만 이용자에 대하여는 가입을 취소 또는
								불허합니다.</span></li>
						<li><span class="bullet">③</span> <span class="fc_point03">만
								14세 미만 “이용자”의 부모 등 법정대리인은 아동에 대한 개인정보의 열람, 정정, 갱신을 요청하거나 회원가입에
								대한 동의를 철회할 수 있으며, 이러한 경우에 “회사”는 지체 없이 필요한 조치를 취해야 합니다.</span></li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제10조 (계약 사항의 변경)</dt>
				<dd>회원은 이용신청 시 기재한 사항이 변경되었을 경우 회사가 정한 별도의 이용방법으로 정해진 양식 및 방법에
					의하여 수정하여야 합니다.</dd>
			</dl>
		</div>
		<!-- //2. 서비스 이용 계약 -->
		<br>
		<!-- 3. 서비스 이용 -->
		<div id="terms03" class="section_terms">
			<h3>3. 서비스 이용</h3>
			<dl>
				<dt>제11조 (서비스의 이용 개시)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> <span class="fc_point03">회사는
								회원의 이용신청을 승낙한 때부터 서비스를 개시합니다. 단, 일부 서비스의 경우에는 지정된 일자부터 서비스를
								개시하며, 유료서비스의 경우 회사가 지정하는 수단으로 결제가 완료된 후 이용 가능합니다.</span></li>
						<li><span class="bullet">②</span> 회사의 업무상 또는 기술상의 장애로 인하여
							서비스를 개시하지 못하는 경우에는 사이트에 공시하거나 회원에게 이를 통지합니다.</li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제12 조 (서비스의 이용시간)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> <span class="fc_point03">서비스의
								이용은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, 정기점검 등 회사의 업무상 또는 기술상의 이유로 서비스가
								일시 중지될 수 있으며, 운영상의 목적으로 회사가 정한 기간에는 서비스가 일시 중지될 수 있습니다. 이러한 경우
								회사는 원칙적으로 서비스의 일시 중지 사실 및 중지 기간을 사전에 공지하되, 이를 미리 공지할 수 없는 급박하거나
								불가피한 사정이 있을 때에는 사후에 즉시 공지합니다.</span></li>
						<li><span class="bullet">②</span> 회사는 서비스를 일정범위로 분할하여 각 범위 별로
							이용 가능한 시간을 별도로 정할 수 있으며 이 경우 그 내용을 공지합니다.</li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제13조 (서비스의 변경 및 중지)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> <span class="fc_point03">회사는
								상당한 이유가 있는 경우 운영상, 기술상 필요에 따라 서비스를 변경할 수 있으며, 이 경우 변경될 서비스의 내용 및
								제공일자를 제2조(약관의 효력 및 변경) 제3항에서 정한 방법으로 회원에게 통지합니다.</span> 단 변경된 내용이 중대하거나
							회원에게 불리한 경우에는 회사가 회원으로부터 이 약관 또는 멜론 유료서비스 약관에서 정한 방법으로 통지하고 동의를
							받습니다.</li>
						<li><span class="bullet">②</span> <span class="fc_point03">회사는
								다음 각 호에 해당하는 경우 서비스의 전부 또는 일부를 일시적으로 제한하거나 중지할 수 있습니다.</span>
							<ol class="list_terms01">
								<li><span class="bullet">1.</span> 서비스용 설비의 보수 등 공사로 인한
									부득이한 경우</li>
								<li><span class="bullet">2.</span> 회원이 의도적으로 일정기간 내 특정서비스의
									가입 및 해지를 반복하는 등 회사의 정상적 영업 및 서비스 제공 활동을 방해하는 경우</li>
								<li><span class="bullet">3.</span> 정전, 제반 설비의 장애 또는 이용량의 폭주
									등으로 정상적인 서비스 이용에 지장이 있는 경우</li>
								<li><span class="bullet">4.</span> 서비스 제공업자와의 계약 종료 등과 같은
									회사의 제반 사정으로 서비스를 유지할 수 없는 경우</li>
								<li><span class="bullet">5.</span> 기타 천재지변, 국가비상사태,
									방송통신위원회, 한국정보보호진흥원 등 국가기관, 정부조직, 수사기관, 법원 등의 행정ㆍ사법 처분 등 행정행위로
									인한 서비스 중단 등 회사가 통제할 수 없는 불가항력적 사유가 있는 경우</li>
							</ol></li>
						<li><span class="bullet">③</span> 제2항에 의한 서비스 중단의 경우에는 회사가
							제2조(약관의 효력 및 변경) 제3항에서 정한 방법으로 이용자에게 통지합니다. 다만, 미리 통지하는 것이 곤란하거나
							급박하거나 불가피한 사정이 있는 경우에는 사후에 통지할 수 있습니다.</li>
						<li><span class="bullet">④</span> 회사는 무료로 제공되는 서비스의 일부 또는 전부를
							회사의 정책 및 운영의 필요상 수정, 중단, 변경할 수 있으며, 이에 대하여 회원에게 별도의 보상을 하지 않습니다.</li>
						<li><span class="bullet">⑤</span> 유료서비스의 정지 또는 중단과 관련한 제반 사항에
							대하여는 멜론 유료서비스 약관 제19조를 적용합니다.</li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제 14 조 (이메일에 대한 회원의 의무와 책임)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> 회사는 회원에게 사이트별로 이메일 서비스를 제공할
							수 있습니다. 회사는 회원의 이메일 내용을 편집하거나 감시하지 않으며 메일 내용에 대한 책임은 각 회원에게 있습니다.</li>
						<li><span class="bullet">②</span> 회원은 회사의 이메일을 통하여 음란물이나 불온한
							내용, 정크메일(Junk Mail), 스팸메일(Spam Mail), 행운의 편지(chain letters) 등을
							발송하거나 피라미드 조직 등을 권유하거나 타인에게 피해를 주거나 미풍양속을 해치는 메일을 보내서는 안됩니다.</li>
						<li><span class="bullet">③</span> 본 조 제2항을 위반하여 발생되는 모든 책임은
							회원에게 있으며 이 경우 회사는 관련 법령에 정한 절차에 따라 회원의 아이디(ID) 비밀번호(PASSWORD) 등
							회원의 개인정보를 수사기관에 제공할 수 있습니다.</li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제 15 조 (정보의 제공 및 광고의 게재)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> 회사는 서비스를 운영함에 있어 각종 정보나 광고
							등을 서비스 화면에 게재하거나 이메일 및 서신우편, 문자메시지 등의 방법으로 회원에게 제공할 수 있습니다.</li>
						<!--150429 수정 lyr-->
						<li><span class="bullet">②</span> 제1항과 관련하여 회원은 관련 법령에 따른 거래
							관련 정보 및 고객 문의 등에 대한 답변 등을 제외하고는 언제든지 이메일 등에 대하여 수신을 거절할 수 있으며,
							회사는 수신거절 방법을 명시합니다. 단, 회사는 관련 법령에 따라 동의 의무가 면제되는 거래관련 정보 및 고객 문의
							사항 등을 제외한 광고 등을 전화, 모사전송기기 등을 통하여 회원에게 전송할 경우 회원의 사전 수신 동의를 받아서
							전송합니다.</li>
						<li><span class="bullet">③</span> 회원이 서비스상에 게재되어 있는 광고를 이용하거나
							서비스를 통한 광고주의 판촉활동에 참여하는 등의 방법으로 교신 또는 거래를 하는 것은 전적으로 회원과 광고주 간의
							문제입니다. 만약 회원과 광고주간에 문제가 발생할 경우에도 회원과 광고주가 직접 해결하여야 하며, 이와 관련하여
							회사는 어떠한 책임도 지지 않습니다.</li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제16조 (게시물 또는 내용물의 삭제)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> 회사는 회원이 게시하거나 전달하는 서비스 내의
							내용물(회원간 전달 포함)이 다음 각 호의 경우에 해당한다고 판단되는 경우 사전통지 없이 삭제할 수 있으며, 이에
							대해 회사는 어떠한 책임도 지지 않습니다.
							<ol class="list_terms01">
								<li><span class="bullet">1.</span> 회사, 다른 회원 또는 제3자를 비방하거나
									중상모략으로 명예를 손상시키는 내용인 경우</li>
								<li><span class="bullet">2.</span> 공공질서 및 미풍양속에 위반되는 내용의
									정보, 문장, 도형 등의 유포에 해당하는 경우</li>
								<li><span class="bullet">3.</span> 범죄적 행위에 결부된다고 인정되는 내용인
									경우</li>
								<li><span class="bullet">4.</span> 회사의 저작권, 제3자의 저작권 등 기타
									권리를 침해하는 내용인 경우</li>
								<li><span class="bullet">5.</span> 제2항 소정의 세부이용지침을 통하여 회사에서
									규정한 게시기간을 초과한 경우</li>
								<li><span class="bullet">6.</span> 회사에서 제공하는 서비스와 관련 없는 내용인
									경우</li>
								<li><span class="bullet">7.</span> 승인되지 않은 광고, 판촉물을 게재하는 경우</li>
								<li><span class="bullet">8.</span> 기타 관계 법령 및 회사의 지침 등에
									위반된다고 판단되는 경우</li>
							</ol></li>
						<li><span class="bullet">②</span> 회사는 게시물에 관련된 세부 이용지침을 별도로
							정하여 시행할 수 있으며, 회원은 그 지침에 따라 각종 게시물(회원간 전달 포함)을 등록하거나 삭제하여야 합니다.</li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제17조 (게시물의 저작권)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> 회원이 서비스 내에 게시한 게시물(회원간 전달
							포함)의 저작권은 회원이 소유하며 회사는 서비스 내에 이를 게시할 수 있는 권리를 갖습니다.</li>
						<li><span class="bullet">②</span> 회사는 게시한 회원의 동의 없이 게시물을 다른
							목적으로 사용할 수 없습니다.</li>
						<li><span class="bullet">③</span> 회사는 회원이 서비스 내에 게시한 게시물이 타인의
							저작권, 프로그램 저작권 등을 침해하더라도 이에 대한 민, 형사상의 책임을 부담하지 않습니다. 만일 회원이 타인의
							저작권, 프로그램저작권 등을 침해하였음을 이유로 회사가 타인으로부터 손해배상청구 등 이의 제기를 받은 경우 회원은
							회사의 면책을 위하여 노력하여야 하며, 회사가 면책되지 못한 경우 회원은 그로 인해 회사에 발생한 모든 손해를
							부담하여야 합니다.</li>
						<li><span class="bullet">④</span> 회사는 회원이 이용계약을 해지하거나 적법한 사유로
							이용계약이 해지 된 경우 해당 회원이 게시하였던 게시물을 삭제할 수 있습니다. 회원의 게시물이
							정보통신망이용촉진및정보보호등에관한법률 및 저작권법 등 관련 법령에 위반되는 내용을 포함할 경우, 해당 권리자는 관련
							법령이 정한 절차에 의거하여 해당 게시물의 게시중단 및 삭제 등을 회사에 요청할 수 있으며, 회사는 관련 법령에 따른
							조치를 취하여야 합니다.</li>
						<li><span class="bullet">⑤</span> 회사는 전항의 권리자의 요청이 없을 경우에도
							사생활 침해 또는 명예훼손 등 타인의 권리를 침해한다고 인정되는 경우에는 관련 법령에 의거 해당 게시물에 대한 접근을
							임시적으로 차단하거나 삭제할 수 있습니다.</li>
						<li><span class="bullet">⑥</span> 회사가 작성한 저작물, 기타 콘텐츠에 대한 저작권
							기타 권리는 회사에 귀속합니다.</li>
						<li><span class="bullet">⑦</span> 회원은 서비스를 이용하여 얻은 정보를 가공,
							판매하는 행위 등 서비스에 게재된 자료를 영리목적으로 이용하거나 제3자에게 이용하게 할 수 없으며, 게시물에 대한
							저작권 침해는 관계 법령의 적용을 받습니다.</li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제18조 (멜론 유료서비스 약관)</dt>
				<dd>서비스 이용을 위하여 멜론 유료서비스 약관, 멜론플레이어 약관 등 별도의 약관이 존재할 수 있습니다.
					추가되는 유료서비스에 따라 별도의 약관을 제정할 수 있으며, 이용약관과 멜론 유료서비스 약관의 내용이 상충될 경우 멜론
					유료서비스 약관이 우선 적용됩니다.</dd>
			</dl>
		</div>
		<!-- //3. 서비스 이용 -->
		<br>
		<!-- 4. 계약당사자의 의무 -->
		<div id="terms04" class="section_terms">
			<h3>4. 계약당사자의 의무</h3>
			<dl>
				<dt>제19조 (회사의 의무)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> 회사는 서비스 제공과 관련하여 알고 있는 회원의
							신상정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다. 단, 관계법령에 의한 수사상의 목적으로
							관계기관으로부터 요구 받은 경우나 방송통신심의위원회의 요청이 있는 경우 등 법률의 규정에 의한 경우에는 그러하지
							않습니다.</li>
						<li><span class="bullet">②</span> 회사는 업무와 관련하여 회원의 사전 동의 없이
							회원 전체 또는 일부의 개인정보에 관한 통계자료를 작성하여 이를 사용할 수 있고, 이를 위하여 회원의 컴퓨터에 쿠키를
							전송할 수 있습니다. 이 경우 회원은 쿠키의 수신을 거부하거나 쿠키의 수신에 대하여 경고하도록 사용하는 컴퓨터
							브라우저의 설정을 변경할 수 있으며, 쿠키의 설정 변경에 의해 서비스 이용이 변경되는 것은 회원의 책임입니다.</li>
						<li><span class="bullet">③</span> 회사는 서비스와 관련한 회원의 불만사항이 접수되는
							경우 이를 신속하게 처리하여야 하며, 신속한 처리가 곤란한 경우 그 사유와 처리 일정을 서비스 화면에 게재하거나
							이메일 등을 통하여 동 회원에게 통지합니다.</li>
						<li><span class="bullet">④</span> 회사는 이 약관에 정한 회사의 의무를 위반함으로써
							회원이 입게 된 손해를 배상합니다.</li>
						<li><span class="bullet">⑤</span> 회사는 정보통신망이용촉진및정보보호등에관한법률,
							통신비밀보호법 등 서비스의 운영, 유지와 관련 있는 법규를 준수합니다.</li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제20조 (회원의 의무)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> 회원은 서비스를 이용할 때 다음 각 호의 행위를
							하여서는 아니 됩니다.
							<ol class="list_terms01">
								<li><span class="bullet">1.</span> 이용신청 또는 변경 시 허위 사실을
									기재하거나, 다른 회원의 아이디(ID) 및 비밀번호를 도용, 부정하게 사용하는 행위</li>
								<li><span class="bullet">2.</span> 회사의 서비스 정보를 이용하여 얻은 정보를
									회사의 사전 승낙 없이 복제 또는 유통시키거나 상업적으로 이용하는 행위</li>
								<li><span class="bullet">3.</span> 서비스 내에서 다운로드 또는 스트리밍을 통해
									제공받은 음원을 사적 목적으로 이용하는 것 외에, 공공장소 및 영리를 목적으로 하는 영업장, 매장 등에서 재생하는
									등의 방법으로 이용하는 행위</li>
								<li><span class="bullet">4.</span> 타인의 명예를 손상시키거나 불이익을 주는
									행위</li>
								<li><span class="bullet">5.</span> 게시판 등에 음란물을 게재하거나 음란사이트를
									연결(링크)하는 행위</li>
								<li><span class="bullet">6.</span> 회사의 저작권, 제3자의 저작권 등 기타
									권리를 침해하는 행위 <br>(국내외 제3자의 저작권 등을 침해하는 행위로서 회사가 IP 접속 차단 등
									기술적인 조치를 통하여 타인에 대한 권리 침해 방지 조치를 취하였음에도 불구하고 이용자가 고의로 또는 회사를
									기망하는 수단과 방법을 통하여 멜론 사이트에 접속 하는 등 제3자의 저작권 등을 침해하는 행위를 포함합니다.)</li>
								<li><span class="bullet">7.</span> 공공질서 및 미풍양속에 위반되는 내용의
									정보, 문장, 도형, 음성 등을 타인에게 유포하는 행위</li>
								<li><span class="bullet">8.</span> 서비스와 관련된 설비의 오 동작이나 정보
									등의 파괴 및 혼란을 유발시키는 컴퓨터 바이러스 감염 자료를 등록 또는 유포하는 행위</li>
								<li><span class="bullet">9.</span> 서비스 운영을 고의로 방해하거나 서비스의
									안정적 운영을 방해할 수 있는 정보 및 수신자의 명시적인 수신거부의사에 반하여 광고성 정보를 전송하는 행위 또는
									(불법)스팸을 전송하는 행위</li>
								<li><span class="bullet">10.</span> 타인으로 가장하는 행위 및 타인과의 관계를
									허위로 명시하는 행위</li>
								<li><span class="bullet">11.</span> 다른 회원의 개인정보를 수집, 저장,
									공개하는 행위</li>
								<li><span class="bullet">12.</span> 자기 또는 타인에게 재산상의 이익을 주거나
									타인에게 손해를 가할 목적으로 허위의 정보를 유통시키는 행위</li>
								<li><span class="bullet">13.</span> 재물을 걸고 도박하거나 사행행위를 하는
									행위</li>
								<li><span class="bullet">14.</span> 윤락행위를 알선하거나 음행을 매개하는
									내용의 정보를 유통시키는 행위</li>
								<li><span class="bullet">15.</span> 수치심이나 혐오감 또는 공포심을 일으키는
									말이나 음향, 글이나 화상 또는 영상을 계속하여 상대방에게 도달하게 하여 상대방의 일상적 생활을 방해하는 행위</li>
								<li><span class="bullet">16.</span> 서비스에 게시된 정보를 변경하는 행위</li>
								<li><span class="bullet">17.</span> 관련 법령에 의하여 그 전송 또는 게시가
									금지되는 정보(컴퓨터 프로그램 포함)의 전송 또는 게시 행위</li>
								<li><span class="bullet">18.</span> 회사의 직원이나 운영자를 가장하거나
									사칭하여 또는 타인의 명의를 도용하여 글을 게시하거나 메일을 발송하는 행위</li>
								<li><span class="bullet">19.</span> 컴퓨터 소프트웨어, 하드웨어, 전기통신
									장비의 정상적인 가동을 방해, 파괴할 목적으로 고안된 소프트웨어 바이러스, 기타 다른 컴퓨터 코드, 파일,
									프로그램을 포함하고 있는 자료를 게시하거나 이메일으로 발송하는 행위</li>
								<li><span class="bullet">20.</span> 스토킹(stalking) 등 다른 회원을
									괴롭히는 행위</li>
								<li><span class="bullet">21.</span> 1개월 이내 회원 가입 및 서비스 구매 후
									다시 해지하는 행위를 2회 이상 반복하는 등 회사 서비스를 부당하게 악용하는 행위</li>
								<li><span class="bullet">22.</span> 기타 불법적이거나 부당한 행위</li>
							</ol></li>
						<li><span class="bullet">②</span> 회원은 회사가 제공하는 유료서비스 이용시
							관계법령, 해당 약관, 세부이용지침, 서비스 이용안내 및 사이트 내 공지한 주의사항, 회사가 서비스 이용과 관련하여
							회원에게 통지하는 사항 등을 준수하여야 하며, 회원은 관계 법령, 이 약관의 규정, 이용안내 및 서비스상에 공지한
							주의사항, 회사가 통지하는 사항 등을 준수하여야 하며, 기타 회사의 업무에 방해되는 행위를 하여서는 안됩니다.</li>
						<li><span class="bullet">③</span> 회원은 회사에서 공식적으로 인정한 경우를
							제외하고는 서비스를 이용하여 유료서비스를 판매하거나 기타 영리 활동을 할 수 없으며 또한, 해킹, 광고, 음란사이트
							홍보 또는 이를 통한 영리행위, 상용소프트웨어 불법배포 등을 할 수 없습니다. 이를 위반하여 발생한 모든 결과에
							대하여 회사는 책임을 지지 않으며, 회원은 이와 같은 행위로 인하여 회사에 발생한 손해를 배상하여야 합니다. 또한,
							회사는 위와 같은 사실을 발견한 경우 그와 같은 사실을 행정기관에 신고하거나 수사기관에 고발하는 등 법적조치를 취할
							수 있습니다.</li>
						<li><span class="bullet">④</span> 회원이 서비스 이용을 위하여 개인정보를 등록하는
							경우 현재의 사실과 일치하는 완전한 정보를 제공하여야 합니다(이하 본 조에서 그와 같이 등록된 정보를 ‘등록정보’라고
							합니다).</li>
						<li><span class="bullet">⑤</span> 회원은 등록정보에 변경사항이 발생할 경우 즉시
							갱신하여야 합니다. 회원이 제공한 등록정보 및 갱신한 등록정보가 부정확할 경우, 기타 회원이 본 조 제1항에 명시된
							행위를 한 경우에 회사는 이 약관 제25조에 의해 서비스이용계약을 해지하거나 회원의 서비스 이용을 제한 또는 중지 할
							수 있습니다.</li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제21조 (회원 아이디(ID)와 비밀번호(Password)관리에 대한 의무와 책임)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> 회사는 사이트 내에서 일부 서비스 신청 시
							이용요금을 부과할 수 있으므로, 회원은 회원 아이디(ID) 및 비밀번호(Password) 관리를 철저히 해야 합니다.</li>
						<li><span class="bullet">②</span> 회원 아이디(ID)와 비밀번호(Password)의
							관리 소홀로 인하여 발생하는 모든 결과에 대한 책임은 회원 본인에게 있으며, 회사의 시스템 고장 등 회사의 책임 있는
							사유로 발생하는 문제에 대해서는 회사가 책임을 집니다.</li>
						<li><span class="bullet">③</span> 회원은 본인의 아이디(ID) 및
							비밀번호(Password)를 제3자에게 이용하게 해서는 안되며, 회원 본인의 아이디(ID) 및
							비밀번호(Password)를 도난 당하거나 제3자가 사용하고 있음을 인지하는 경우에는 바로 회사에 통보하고 회사의
							안내가 있는 경우 그에 따라야 합니다.</li>
						<li><span class="bullet">④</span> 제3항의 경우 해당 회원이 아이디(ID) 등의
							도용 등의 사실을 통지하지 않거나, 통지한 경우에도 회사의 안내에 따르지 않아 발생한 불이익에 대하여는 회사는
							책임지지 않습니다.</li>
						<li><span class="bullet">⑤</span> 회원의 아이디(ID)는 회사의 사전 동의 없이
							변경할 수 없습니다.</li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제22조 (회원에 대한 통지)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> 회원에 대한 통지를 하는 경우 회사는 회사가
							발급한 이메일 주소 또는 회원이 등록한 이메일 주소 또는 문자메시지 등으로 할 수 있습니다.</li>
						<li><span class="bullet">②</span> 회원의 연락처 미 기재, 변경 등으로 인하여 개별
							통지가 어려운 경우, 회원이 등록한 연락처로 통지를 하였음에도 2회 이상 반송된 경우 회사는 서비스 게시판 등에 7일
							이상 게시함으로써 개별 통지에 갈음할 수 있습니다.</li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제23조 (이용자의 개인정보보호)</dt>
				<dd>
					회사는 관련 법령이 정하는 바에 따라서 회원 등록정보를 포함한 회원의 개인정보를 보호하기 위하여 노력합니다. 회원의
					개인정보보호에 관해서는 관련법령 및 회사가 정하는 "개인정보취급방침"에 정한 바에 의합니다. 특히, 회사는 정보통신망
					이용촉진및정보보호등에관한법률 등 관계 법령에 따라 회원의 사전 동의를 얻은 경우, 동의를 받은 범위 내에서 회원의
					개인정보를 제3자에게 제공하며, 회사의 ‘개인정보취급방침’에 그 절차와 방법 등에 대하여 상세히 기재하도록 합니다.<br>회사가
					서비스 홈페이지를 통하여 게재, 공시하는 '개인정보취급방침'은 이 약관의 일부를 구성하며, 회원은 이에 동의합니다.
				</dd>
			</dl>
			<dl>
				<dt>제24조 (개인정보의 수집, 제공 및 취급 위탁)</dt>
				<dd>회사는 수집된 개인정보의 취급 및 관리 등의 업무(이하 “업무”)를 스스로 수행함을 원칙으로 하나, 필요한
					경우 업무의 일부 또는 전부를 회사가 선정한 회 사에 위탁할 수 있으며, 개인정보의 취급 및 관리 등의 업무를 제3자
					등에게 위탁하게 될 경우, 회사가 정하는 “개인정보취급방침”에 제반 사항을 기재하여 회원에게 고지, 안내하고 있습니다.</dd>
			</dl>
		</div>
		<!-- //4. 계약당사자의 의무 -->
		<br>
		<!-- 5. 계약해지 및 이용제한 -->
		<div id="terms05" class="section_terms">
			<h3>5. 계약해지 및 이용제한</h3>
			<dl>
				<dt>제25조 (계약해지 및 이용제한)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> <span class="fc_point03">회원이
								서비스 이용계약을 해지하고자 할 경우에는 본인이 서비스 사이트 상에서 또는 전화 등 기타 회사가 제공하는 그 밖의
								방법으로 회사에 해지신청을 하여야 합니다. 회사는 회원의 유료서비스의 청약 철회, 환불, 계약의 해지와 관련하여
								회사의 “멜론 유료서비스 약관”에 그 절차 및 제반 사항을 안내하고 있습니다.</span> 회원이 계약을 해지할 경우 관련 법령
							및 회사의 개인정보 취급방침에 따라 회사가 회원정보를 보유하는 경우를 제외하고는 해지 즉시 회원의 모든 개인정보 및
							데이터는 삭제되므로, 해지, 탈퇴 시 사전 확인하기 바라며, 이에 대하여 회사가 데이터 등의 삭제를 안내하였음에도
							불구하고 회원이 개인 데이터의 보존 등 적절한 조치를 취하지 아니하는 경우에는 회사는 책임을 지지 않습니다.</li>
						<li><span class="bullet">②</span> 회사는 회원이 제20조(회원의 의무)에 규정한
							회원의 의무를 이행하지 아니하거나 제8조(이용신청에 대한 승낙의 제한)의 가입 제한 사유를 사후에 발견한 경우 회원의
							서비스 이용 제한, 회원자격상실, 계약 해지 등의 조치를 취할 수 있으며, 회사가 회원에 대하여 이와 같은 조치를
							취하고자 할 경우, 최소한 15일 이상의 기간을 정하여 소명할 기회를 부여하며, 이용자가 자신의 고의, 과실 없었음을
							입증한 경우 회사는 서비스를 정지한 기간만큼 이용 기간을 연장합니다.</li>
						<li><span class="bullet">③</span> 회사는 회원이 이용계약을 체결하여 아이디(ID)와
							비밀번호(Password)를 부여 받은 후에라도 회원의 자격에 따른 서비스 이용을 제한할 수 있습니다.</li>
						<li><span class="bullet">④</span> 회사는 회원 가입 후 6개월 동안 서비스 사용
							이력이 없는 회원에 대해 사용의사를 묻는 고지를 하고, 회사가 정한 기한 내에 답변이 없는 경우 이용계약을 해지할 수
							있습니다. 또한 회사는 법령에서 정하는 기간 동안 서비스 이용 이력이 없는 회원의 경우 회원이 등록한 이메일 주소로
							사전 통지 후 개인정보를 파기 또는 분리 보관하며, 이후 서비스 이용 또는 접속 내역이 지속하여 없는 경우 개인정보
							또는 거래기록 등 보관기간 경과에 따라 별도의 통지 없이 이용계약을 해지할 수 있습니다.</li>
						<li><span class="bullet">⑤</span> 본 조 제2항 및 제3항의 회사 조치에 대하여
							회원은 회사가 정한 절차에 따라 이의신청을 할 수 있습니다.</li>
						<li><span class="bullet">⑥</span> 본 조 제5항의 이의가 정당하다고 회사가 인정하는
							경우, 회사는 즉시 서비스의 이용을 재개합니다.</li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제26조 (양도 금지)</dt>
				<dd>
					<span class="fc_point03">회원은 서비스의 이용권한, 기타 이용 계약상 지위를 타인에게
						양도, 증여할 수 없으며 게시물에 대한 저작권을 포함한 모든 권리 및 책임은 이를 게시한 회원에게 있습니다.</span>
				</dd>
			</dl>
		</div>
		<!-- //5. 계약해지 및 이용제한 -->
		<br>
		<!-- 6. 손해배상 등 -->
		<div id="terms06" class="section_terms">
			<h3>6. 손해배상 등</h3>
			<dl>
				<dt>제27조 (손해 배상)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> 회사의 고의 또는 중대한 과실로 인하여 회원에게
							손해가 발생한 경우 회사는 회원에게 실제 발생한 손해만을 배상합니다.</li>
						<li><span class="bullet">②</span> 회원이 서비스를 이용함에 있어 행한 불법행위나 이
							약관 위반행위로 인하여 회사가 당해 회원 이외의 제3자로부터 손해배상 청구 또는 소송을 비롯한 각종 이의제기를 받는
							경우 당해 회원은 자신의 책임과 비용으로 회사를 면책하여야 하며, 회사가 면책되지 못한 경우 당해 회원은 그로 인하여
							회사에 발생한 모든 손해를 배상하여야 합니다.</li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제28조 (면책사항)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> 회사는 천재지변 또는 이에 준하는 불가항력으로
							인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.</li>
						<li><span class="bullet">②</span> 회사는 회원의 귀책사유로 인한 서비스의 이용장애에
							대하여 책임을 지지 않습니다.</li>
						<li><span class="bullet">③</span> 회사는 회원이 서비스를 이용하여 기대하는 수익을
							상실한 것에 대하여 책임을 지지 않으며 그 밖에 서비스를 통하여 얻은 자료로 인한 손해 등에 대하여도 책임을 지지
							않습니다. 회사는 회원이 사이트에 게재한 정보, 자료, 사실의 신뢰도 및 정확성 등 내용에 대하여는 책임을 지지
							않습니다.</li>
						<li><span class="bullet">④</span> 회사는 회원 상호간 또는 회원과 제3자 상호간에
							서비스를 매개로 발생한 분쟁에 대해서는 개입할 의무가 없으며 이로 인한 손해를 배상할 책임도 없습니다.</li>
					</ol>
				</dd>
			</dl>
			<dl>
				<dt>제29조 (관할법원)</dt>
				<dd>
					<ol class="list_terms">
						<li><span class="bullet">①</span> 서비스 이용과 관련하여 회사와 회원 사이에 분쟁이
							발생한 경우, 회사와 회원은 분쟁의 해결을 위해 성실히 협의하고, 협의가 안될 경우 콘텐츠산업진흥법상
							콘텐츠분쟁조정위원회에 분쟁조정을 신청할 수 있습니다.</li>
						<li><span class="bullet">②</span> 본 조 제1항의 협의에서도 분쟁이 해결되지 않을
							경우 양 당사자는 소를 제기할 수 있으며, 회사와 회원 간의 소의 관할은 제소 당시의 이용자의 주소에 의하고, 주소가
							없는 경우 거소를 관할하는 지방법원의 전속 관할로 합니다.</li>
						<li><span class="bullet">③</span> 제소 당시 회원의 주소 또는 거소가 분명하지 않은
							경우에는 민사소송법에 따라 관할법원을 정합니다.</li>
					</ol>
				</dd>
			</dl>
		</div>
		<!-- //6. 손해배상 등 -->
		<br>
		<!-- 7. 부칙 -->
		<div id="terms07" class="section_terms02">
			<h3>부칙</h3>
			<div class="wrap_supplementary_provisions">
				<div class="supplementary_provisions" style="height: 20px;">
					<ul class="list_terms">
						<li>(시행일) 이 약관은 2021년 03월 29일부터 시행합니다.</li>

					</ul>
				</div>
			</div>
		</div>
		<!-- //7. 부칙 -->
	</div>
	<!-- //이용약관 -->
	</div>
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