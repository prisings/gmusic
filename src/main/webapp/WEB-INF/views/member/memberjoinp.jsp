<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<!-- jquery 적용 src 위치에 맞게 설정 -->
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<style type="text/css">

/* 중앙정렬코드 */
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
	width: 500px;
	height: 1200px;
	border-radius: 5px 5px 5px 5px;
}

/* 테이블명 */
#tablename {
	color: #0b3f9a;
}

/* 필수사항 테이블 */
#essential {
	width: 400px;
	height: 570px;
	border: 1px solid #bcbcbc;
	margin-left: 50px;
	border-radius: 5px 5px 5px 5px;
}

/* 선택사항 테이블 */
#optional {
	width: 400px;
	height: 440px;
	border: 1px solid #bcbcbc;
	margin-left: 50px;
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
#sex, .genre {
	background-color: #FAFAFA;
	padding-left: 12px;
	border-radius: 5px 5px 5px 5px;
	border: 0px;
	width: 330px;
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
#submit {
	background-color: #EEEEEF;
	width: 330px;
	height: 50px;
	font-weight: bold;
	color: #8a8a8d;
}
</style>

<script>
	// 이메일 직접입력 하게 해주는 jquery
	// https://hiworldbye.tistory.com/43 참고함
	$(function() {
		// 직접입력 인풋박스 기존에는 숨김
		$("#email2").hide();

		$("#email3").change(function() {
			// 직접입력을 누를 때 나타남
			// 아닐때는 값을 지움
			// select 태그는 css를 조절하여 숨김
			if ($('#email3').val() == "direct") {
				$('#email2').show();
				$('#email3').css({
					width : "15px",
					height : "35px"
				});

			} else {
				$('#email2').hide();
				$('#email2').val('');
				$('#email3').css({
					width : "155px",
					height : "35px"
				});
			}
		})

	});
</script>


</head>


<body>
	<div class="layer">
		<span class="content">
			<form action="memberjoin" method="post" enctype="multipart/form-data">
				<div id="table">
					<h2 id="tablename">정보 입력</h2>
					<div id="essential">
						<br> <span>필수 사항</span> <br>
						<div style="text-align: left;" class="box1">
							<span class="font1">아이디</span>
							<div>
								<input type="text" name="id" id="id" size="20" placeholder="아이디">
								<input type="button" value="중복확인" id="idDup">
								<br> <span id=iMessage class="message"></span>
							</div>
						</div>
						<div style="text-align: left;" class="box1">
							<span class="font1">비밀번호</span>
							<div class="box2">
								<input type="password" name="password" id="password" size="36" placeholder="비밀번호">
							</div>
							<div>
								<input type="password" name="password2" id="password2" size="36" placeholder="비밀번호 확인">
								<br> <span id="pMessage" class="message"></span>
							</div>
						</div>
						<div style="text-align: left;" class="box1">
							<span class="font1">생년월일</span>
							<div>
								<input type="date" name="birthday" id="birthday">
								<br> <span id="bMessage" class="message"></span>
							</div>
						</div>
						<div style="text-align: left;" class="box1">
							<span class="font1">성별</span>
							<div>
								<select name="sex" id="sex" size="1">
									<option selected="selected" value="N">(성별)선택 안함
									<option value="M">남자
									<option value="F">여자
								</select>
							</div>
						</div>
						<div style="text-align: left;" class="box1">
							<span class="font1">이메일</span>
							<div>
								<input type="text" name="email1" id="email1" size="10" placeholder="이메일">
								@
								<input type="text" name="email2" id="email2" size="7" placeholder="직접입력">
								<select name="email3" id="email3" size="1">
									<option selected="selected" disabled="disabled">선택
									<option value="direct">직접입력
									<option value="naver.com">naver.com
									<option value="hanmail.net">hanmail.net
									<option value="daum.net">daum.net
									<option value="nate.com">nate.com
									<option value="gmail.com">gmail.com
									<option value="hotmail.com">hotmail.com
									<option value="lycos.co.kr">lycos.co.kr
									<option value="empal.com">empal.com
									<option value="cyworld.com">cyworld.com
									<option value="yahoo.co.kr">yahoo.co.kr
									<option value="paran.com">paran.com
									<option value="dreamwiz.com">dreamwiz.com
								</select>
								<br> <span id=iMessage class="message"></span>
							</div>
						</div>
						<div style="text-align: left;" class="box1">
							<span class="font1">휴대폰 번호</span>
							<div>
								<input type="text" name="phone1" id="phone1" size="2" placeholder="010">&nbsp;-&nbsp;
								<input type="text" name="phone2" id="phone2" size="2" placeholder="0000">&nbsp;-&nbsp;
								<input type="text" name="phone3" id="phone3" size="2" placeholder="0000">

								<br> <span id=iMessage class="message"></span>
							</div>
						</div>


					</div>
					<br>
					<div id="optional">
						<br> <span>선택 사항</span><br>

						<div style="text-align: left;" class="box1">
							<span class="font1">추천인</span>
							<div>
								<input type="text" name="rid" id="rid" size="36" placeholder="추천인">
								<br> <span id=iMessage class="message"></span>
							</div>
						</div>
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
						<div style="text-align: left;" class="box1">
							<span class="font1">이미지</span>
							<div>
								<img src="" class="select_img" />
								<input type="file" name="uploadfilef" id="uploadfilef" size="36">
								<script>
									// 해당 파일의 서버상의 경로를 src로 지정하는것으로는 클라이언트 영역에서 이미지는 표시될 수 없기 때문에
									// 이를 해결하기 위해 FileReader이라는 Web API 를 사용
									// => 이 를 통해 url data를 얻을 수 있음.
									//    ( https://developer.mozilla.org/ko/docs/Web/API/FileReader)
									// ** FileReader
									// => 웹 애플리케이션이 비동기적으로 데이터를 읽기 위하여 읽을 파일을 가리키는File
									//    혹은 Blob 객체를 이용해 파일의 내용을(혹은 raw data버퍼로) 읽고 
									//    사용자의 컴퓨터에 저장하는 것을 가능하게 해줌.	
									// => FileReader.onload 이벤트의 핸들러.
									//    읽기 동작이 성공적으로 완료 되었을 때마다 발생.
									// => e.target : 이벤트를 유발시킨 DOM 객체

									$('#uploadfilef').change(function() {
										if (this.files&& this.files[0]) {
											var reader = new FileReader;
											reader.onload = function(e) {
												$(".select_img")
														.attr("src",e.target.result)
														.width(70)
														.height(70);
											} // onload_function
											reader.readAsDataURL(this.files[0]);
										} // if
									}); // change
								</script>

							</div>
						</div>
						<br>
						<input type="submit" value="가입하기" id="submit">
					</div>
				</div>
			</form>
		</span> <span class="blank"></span>
	</div>





</body>
</html>