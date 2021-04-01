<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 수정</title>
<style>
.layer {
	position: absolute;
	text-align: center;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
}

.layer .content {
	display: inline-block;
	vertical-align: middle;
}

.layer .blank {
	display: inline-block;
	width: 0;
	height: 100%;
	vertical-align: middle;
}

/* 전체 테이블 */
#table {
	width: 700px;
	height: 2400px;
	border-radius: 5px 5px 5px 5px;
}

/* 테이블명 */
#tablename {
	color: #0b3f9a;
	margin-left: 700px;
}

/* 필수사항 테이블 */
#essential {
	width: 700px;
	height: 800px;
	border: 1px solid #bcbcbc;
	margin-left: 700px;
	border-radius: 5px 5px 5px 5px;
}

/* 메인 div class */
.box1 {
	padding-bottom: 20px;
	margin-left: 35px;
}

/* 비밀번호, 선호장르 div class */
.box2 {
	margin-bottom: 10px;
}

/* 메인 font(span css class */
.font1 {
	font-size: 13px;
	color: #8a8a8d;
	font-weight: bold;
}

/* input태그 css */
div>input, #email2 {
	background-color: #FAFAFA;
	padding: 9px 35px 9px 16px;
	border-radius: 5px 5px 5px 5px;
	border: 0px;
	padding: 9px 35px 9px 16px;
}

/* 중복확인 버튼 태그 css */
#idDup {
	background-color: #EEEEEF;
	padding: 9px 35px 9px 16px;
	border: 0px;
	font-weight: bold;
	text-align: center;
	color: #8a8a8d;
}

/*select 태그 성별,장르 css */
.genre {
	background-color: #FAFAFA;
	padding-left: 12px;
	border-radius: 5px 5px 5px 5px;
	border: 0px;
	width: 530px;
	height: 35px;
}

/*select 태그 이메일 css */
#email3 {
	background-color: #FAFAFA;
	padding-left: 12px;
	border-radius: 5px 5px 5px 5px;
	border: 0px;
	width: 155px;
	height: 35px;
}

/* uploadfile css */
#uploadfilef {
	width: 275px;
	height: 25px;
}

/* 가입하기 버튼 css */
#submit, #reset {
	background-color: #EEEEEF;
	width: 300px;
	height: 50px;
	font-weight: bold;
	color: #8a8a8d;
	margin-left: 30px;
}
</style>

</head>
<body>

	<h2 id="tablename">내 정보 수정</h2>
	<form action="myinfochange" method="post">
		<table>
			<div id="table">
				<div id="essential">
					<div style="text-align: left;" class="box1">
						<span class="font1">아이디</span>
						<div>
							<input type="text" name="id" id="id" size="72"
								placeholder="${vo.id}" readonly="readonly">
						</div>
					</div>
					<div style="text-align: left;" class="box1">
						<span class="font1">비밀번호</span>
						<div class="box2">
							<input type="password" name="password" id="password" size="72"
								placeholder="비밀번호">
						</div>
						<div>
							<input type="password" name="password2" id="password2" size="72"
								placeholder="비밀번호 확인"> <br> <span id="pMessage"
								class="message"></span>
						</div>
					</div>
					<div style="text-align: left;" class="box1">
						<span class="font1">생년월일</span>
						<div>
							<input type="text" name="birthday" id="birthday"
								placeholder="${vo.birthday}" size="72" readonly="readonly">
							<br> <span id="bMessage" class="message"></span>
						</div>
					</div>
					<div style="text-align: left;" class="box1">
						<span class="font1">성별</span>
						<div>
							<input type="text" name="sex" id="sex" placeholder="${vo.sex }"
								readonly="readonly" size="72">
						</div>
					</div>
					<div style="text-align: left;" class="box1">
						<span class="font1">이메일</span>
						<div>
							<input type="text" name="email" id="email" size="72"
								placeholder="${vo.email }" readonly="readonly"> <br>
							<span id=iMessage class="message"></span>
						</div>
					</div>
					<div style="text-align: left;" class="box1">
						<span class="font1">휴대폰 번호</span>
						<div>
							<input type="text" name="phone1" id="phone1" size="72"
								placeholder="${vo.phone }" readonly="readonly">
						</div>
					</div>
					<br>
					<div style="text-align: left;" class="box1">
						<span class="font1">선호장르1</span>
						<div class="box2">
							<select name="genre1" class="genre" id="genre1" size="1">
								<option selected="selected" value="N">선택 안함
								<option value="dance">댄스
								<option value="rap">랩/힙합
								<option value="R&B">R&B/Soul
								<option value="indie">인디음악
								<option value="rock">록/메탈
								<option value="trot">트로트
								<option value="jazz">재즈
								<option value="oldPop">올드팝
							</select>
						</div>
						<span class="font1">선호장르2</span>
						<div>
							<select name="genre2" class="genre" id="genre2" size="1">
								<option selected="selected" value="N">선택 안함
								<option value="dance">댄스
								<option value="rap">랩/힙합
								<option value="R&B">R&B/Soul
								<option value="indie">인디음악
								<option value="rock">록/메탈
								<option value="trot">트로트
								<option value="jazz">재즈
								<option value="oldPop">올드팝
							</select>
						</div>
					</div>
					<br> <input type="submit" value="수정하기" id="submit" size="25">
					<input type="reset" value="취소하기" id="reset" size="25">
				</div>
			</div>
		</table>
	</form>

</body>
</html>