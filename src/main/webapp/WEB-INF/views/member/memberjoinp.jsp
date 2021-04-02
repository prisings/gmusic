<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<!-- jquery 적용 src 위치에 맞게 설정 -->
<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<script src="resources/myLib/idCheck.js"></script>
<script>
//** 입력 오류 확인 ( inCheck )
//1. 개별적 오류 확인을 위한 switch 변수 정의
var iCheck=false;
var pCheck=false;
var p2Check=false;
var	eCheck=false;
var	e2Check=false;
var	bCheck=false;
var	phCheck=false;

//2. 개별적 focusout 이벤트리스너 function 작성 : JQuery,
$(function(){
	// 이메일 직접입력 하게 해주는 jquery
	// https://hiworldbye.tistory.com/43 참고함
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
	
	// *** 무결성 체크 ***
	$('#id').focus();
	$('#id').focusout(function() {
		iCheck=idCheck();
	}); //id
	
	$('#password').focusout(function() {
		pCheck=pwCheck();
	}); //password
	
	$('#password2').focusout(function() {
		p2Check=pw2Check();
	}); //password2
	
	$('#email1').focusout(function() {
		eCheck=emailCheck();
	}); //email

	$('#email2').focusout(function() {
		e2Check=email2Check();
	}); //email2
	
 	$('#email3').focusout(function() {
		e2Check=email3Check();
	}); //email3
	
	$('#birthday').focusout(function() {
		bCheck=bdCheck();
	}); //birthd
	
	$('#phone3').focusout(function() {
		phCheck=phoneCheck();
	}); //phone
	
	//추가부분///////////////////////////////////////////
		// focusout, blur 이벤트 차이
	// https://mygumi.tistory.com/321
	// ajax,json,gson 이용 id 중복 검사
	// https://blog.naver.com/vnemftnsska2/221407559074 참고
	// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
	// 완성은 했으나 exception 발생
	// exception Message => No converter found for return value of type: class java.lang.Integer
	// https://mkil.tistory.com/426 참고 porm.xml에 gson dependency 추가 후 exception해결
/* 	<!-- gson -->
	<dependency>
	    <groupId>com.google.code.gson</groupId>
	    <artifactId>gson</artifactId>
	    <version>2.8.5</version>
	</dependency> */
	
	$("#id").blur(function() {
		var id = $('#id').val();
		$.ajax({
			url : 'idCheck2?id='+ id,
			type : 'get',
			
			success : function(data) {
				console.log("id 중복 검사 1 = 중복o / 0 = 중복x : "+ data);							
					if (data == 1) {
						if(idCheck()){
							// 1 : 아이디가 중복되는 문구
							$("#iMessage").text("사용중인 아이디입니다 :p");
							$("#iMessage").css("color", "red");
							//$("#reg_submit").attr("disabled", true);
						}
					} else {
						if(idCheck()){
							$("#iMessage").text("사용 가능한 아이디입니다");
							$("#iMessage").css("color", "green");
							//$("#reg_submit").attr("disabled", false);
						}
						
					}
				}, error : function() {
						console.log("실패");
				}
			});
		});
	
	/* 이메일2 포커스아웃 체크 해결해야함
	$("#email2").blur(function() {
		$("#email3").blur
	} */
	$("#email3").blur(function() {
		
		var email = $('#email1').val();
			
		if($('#email2').val() != null && $('#email2').val().length > 0){
			
			var email = $('#email1').val() + "@" + $('#email2').val();
		}
		
		if($('#email3').val() != null && $('#email3').val().length > 0 && $('#email3').val() != 'direct'){
			
			var email = $('#email1').val() + "@" + $('#email3').val();
		
		}
		
		$.ajax({
			url : 'emailCheck?email='+ email,
			type : 'get',
			
			success : function(data) {
				console.log("email 중복 검사 1 = 중복o / 0 = 중복x : "+ data);							
				
					if (data == 1) {
						if(eCheck){
							// 1 : 아이디가 중복되는 문구
							$("#eMessage").text("사용중인 이메일입니다 :p");
							$("#eMessage").css("color", "red");
							//$("#reg_submit").attr("disabled", true);
						}//eCheck
					} else {
						if(eCheck){
							$("#eMessage").text("사용 가능한 이메일입니다");
							$("#eMessage").css("color", "green");
							//$("#reg_submit").attr("disabled", false);
						}//eCheck
					}
				}, error : function() {
						console.log("실패");
				}
			});
		});
	
}); //ready

//3. 전체적으로 입력 오류 가 없음을 확인하고 submit 여부를 판단
function inCheck() {
	if (iCheck==false) {
		$('#iMessage').html(' ID 를 확인 하세요 ~~');
	}
	if (pCheck==false) {
		$('#pMessage').html(' Password 를 확인 하세요 ~~');
	}
	if (p2Check==false) {
		$('#p2Message').html(' 올바르게 Password 재입력 하셨나요?');
	}
	if (eCheck==false) {
		$('#eMessage').html(' email 을 확인 하세요 ~~');
	}
	if (e2Check==false) {
		$('#eMessage').html(' email 형식을 확인 하세요 ~~');
	}
	if (bCheck==false) {
		$('#bMessage').html(' 샐년월일을 확인 하세요 ~~');
	}
	if (phCheck==false) {
		$('#phMessage').html(' 전화번호 를 확인 하세요 ~~');
	}
	if (iCheck==true && pCheck==true && p2Check==true &&
		eCheck==true && e2Check==true && bCheck==true && phCheck==true	) {
		alert('~~ 입력 성공, 전송하시겠습니까?'); // 얼터대신 프롬프트로 바꿀 수 있는지 고려해봐야함(사용자 편리성 up)
	}else {
        return false;   // submit 무효화 
	}
} //inCheck

//** 4. ID 중복 확인하기 
function idDupCheck() {
	// => id 입력값의 무결성 확인
	if (iCheck==false) {
		iCheck=idCheck();
	}else {
		// => 서버로 요청보내어 중복확인 , 결과 처리 
		// => window.open()
		//    url 요청을 서버로 전달하고 그 결과를 open 해줌.
		var url="idCheck?id="+$('#id').val();
		window.open(url,"_blank",
			"toolbar=no,menubar=yes,scrollbars=yes,resizable=yes,width=500,height=400");
	}
} //idDupCheck
	
</script>
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
	height: 670px;
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
								<input type="text" name="id" id="id" size="20" placeholder="아이디" maxlength="12">
								<input type="button" value="중복확인"  id="idDup" onclick="idDupCheck()">
								<br> <span id=iMessage class="message"><br></span>
							</div>
						</div>
						<div style="text-align: left;" class="box1">
							<span class="font1">비밀번호</span>
							<div class="box2">
								<input type="password" name="password" id="password" size="36" placeholder="비밀번호" maxlength="12">
								<br> <span id="pMessage" class="message"> <br></span>
							</div>
							<div>
								<input type="password" name="password2" id="password2" size="36" placeholder="비밀번호 확인" maxlength="12">
								<br> <span id="p2Message" class="message"> <br></span>
							</div>
						</div>
						<div style="text-align: left;" class="box1">
							<span class="font1">생년월일</span>
							<div>
								<input type="date" name="birthday" id="birthday">
								<br> <span id="bMessage" class="message"> <br></span>
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
								<input type="text" name="email1" id="email1" size="10" placeholder="이메일" maxlength="17">
								@
								<input type="text" name="email2" id="email2" size="7" placeholder="직접입력" maxlenth="15">
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
								<br> <span id=eMessage class="message"> <br></span>
							</div>
						</div>
						<div style="text-align: left;" class="box1">
							<span class="font1">휴대폰 번호</span>
							<div>
								<input type="text" name="phone1" id="phone1" size="2" placeholder="010" maxlength="3">&nbsp;-&nbsp;
								<input type="text" name="phone2" id="phone2" size="2" placeholder="0000" maxlength="4">&nbsp;-&nbsp;
								<input type="text" name="phone3" id="phone3" size="2" placeholder="0000" maxlength="4">

								<br> <span id=phMessage class="message"> <br></span>
							</div>
						</div>


					</div>
					<br>
					<div id="optional">
						<br> <span>선택 사항</span><br>

						<div style="text-align: left;" class="box1">
							<span class="font1">추천인</span>
							<div>
								<input type="text" name="rid" id="rid" size="36" placeholder="추천인" maxlength="12">
								<br> <span id=iMessage class="message"> <br></span>
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
						<input type="submit" value="가입하기" id="submit" disabled onclick="return inCheck()">
					</div>
				</div>
			</form>
		</span> <span class="blank"></span>
	</div>





</body>
</html>