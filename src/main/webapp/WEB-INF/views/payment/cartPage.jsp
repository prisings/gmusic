<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<style>
/* 중앙정렬코드 */
.layer {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	text-align: center;
}

.layer .content {
	display: inline-block;
	font-size: 14px;
}

/* 배경색 */
body {
	/*    background-color: #f1f3f4; */
	background-color: #444444;
}

.caption {
	font-weight: bold;
	margin-bottom: 10px;
}

#cartlistDiv {
	margin-top: 15px;
	background-color: white;
	border-radius: 5px;
	width: 650px;
	height: 350px;
}

#cartlistDivDiv {
	padding-top: 15px;
	margin: 15px;
}

#cartlistDivDivDiv {
	height: 315px;
	overflow: scroll;
	overflow-x: hidden;
}

/* 플레이 리스트 테이블 css */
#cartlistTable {
	margin: auto;
	width: 600px;
	border-top: 1px solid;
	border-bottom: 1px solid;
	border-spacing: 0px;
}

#cartlistTable td {
	border-bottom: 1px solid;
	border-collapse: collapse;
	border-color: #EEEEEF;
	padding: 5px;
	height: 30px;
}

.infotDiv {
	margin-top: 5px;
	margin-bottom: 5px;
	float: left;
	background-color: white;
	border-radius: 5px 0 0 5px;
	width: 300px;
	height: 200px;
	border-right: 1px solid;
}

.infotDiv2 {
	margin-top: 5px;
	margin-bottom: 5px;
	float: left;
	background-color: white;
	border-radius: 0 5px 5px 0;
	width: 350px;
	height: 200px;
}

.infotDivDiv, .infotDivDiv2 {
	height: 175px;
	padding-top: 25px;
}

.infotTdleft {
	width: 150px;
}

.infotDiv table, .infotDiv2 table {
	margin: auto;
	border-top: 1px solid;
	border-bottom: 1px solid;
	border-spacing: 0px;
}

.infotDiv table td, .infotDiv2 table td {
	border-bottom: 1px solid;
	border-collapse: collapse;
	border-color: #EEEEEF;
	padding: 5px;
}

/* 곡정보 css */
#sname {
	/* 텍스트 넘치면 ... 표시 */
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
	width: 400px;
}

/* 금액 css */
.won {
	font-weight: bold;
}

/* red css */
.red {
	color: red;
}

/* gray css */
.gray {
	color: gray;
}

/* 버튼 라인1 css */
.deleteButton {
	width: 15px;
	height: 15px;
	vertical-align: middle;
	font-size: 10px;
	padding: 0;
	border: 0.5px solid #767676;
	background-color: white;
	border-radius: 1px;
	cursor: pointer;
}
</style>
<script>
   function deleteButton(snum) {
      var snum = snum;
      var cartValSession = $('#cartValss').val();
      var cartValsplit = cartValSession.split(',');
      var cartVal = '';

      for (var i = 0; i < cartValsplit.length - 1; i++) {
         if (cartValsplit[i] == snum) {
            cartValsplit[i]='';
         }
         
         if (cartValsplit[i] != '') {
            cartVal += cartValsplit[i] + ',';
         }
      }
      
      $.ajax({
         type : 'post',
         url : 'cartView?cartVal=' + cartVal,
         success : function(resultPage) {
            console.log("ajax 성공");
            $('.content').html('');
            $('.content').html(resultPage);
         },
         error : function() {
            console.log("ajax 실패");
         }
      });
      $('#cartValss').val(cartVal);
      opener.document.getElementById("cartVal").value = cartVal;
      var url = '/green/cartView?cartVal=' + $('#cartValss').val();
      window.history.replaceState({}, document.title, url);

      if(cartVal == ''){
         alert("다운로드 리스트가 존재하지 않습니다.");
         self.close();
      }
      
   }
   
   function cancelButton() { 
      var answer = confirm("다운로드를 취소 하시겠습니까?\n\n현재 창이 닫힙니다.");
      if (answer) {
         self.close();
      }else{
         return false;
      }
   }
   
   function payButton() {
      var check = confirm("결제 하시겠습니까?");
         if(check == true){
            if (${loginVO.point} < ${price}) {
               alert("현재 포인트가 부족합니다.\n충전 후 이용해 주세요");
            }else{
               $.ajax({
                    type : 'post',
                    url : 'cartView?code=pay&cartVal=' + $('#cartValss').val(),
                    success : function(resultData) {
                       console.log(resultData.aaa);
                       //json으로 데이터값 전송받기 
                       if (resultData.aaa == 'T') {
                       // -> T가 올경우 오류발생이 없고 결제가 정상적으로 진행됨을 뜻함
                       //each funtion 반복문
                        $(".sss").each( function(i) {
                             console.log(i);
                       //트리거 -> DB의 트리거와 같다고 생각하면 된다. 
                                 $( this ).trigger("click");
                                 fnSleep(100);
                       // 동시실행시 마지막 loaction만을 인식하기때문에 딜레이를주어 전부 다운이 실행되도록 만든다.
                             } );
                        
                        
                       location.reload();
                       alert("결제 성공")
                       
           	       }
                    },
                    error : function() {
                       console.log("결제 실패");
                    }
                 });
             }
         }else{
            return false;
         }
   }
   
   fnSleep = function (delay){
       
       var start = new Date().getTime();
       while (start + delay > new Date().getTime());

   };
   
$(function() { //ready
      
      
$('.sss').on('click', function () {
   var downloadfile = $(this).val();
    
    location.href="dnload?dnfile="+downloadfile;

});
   
});//ready *
</script>
<c:if test="${message!=null}">
	<script>
      alert('${message}');
   </script>
</c:if>
</head>
<body>
	<input type="hidden" id="cartValss" name="cartValss" value="${cartValSession}">
	<div class="layer">
		<span class="content">
			<div id="cartlistDiv">
				<div id="cartlistDivDiv">
					<div id="cartlistDivDivDiv">
						<table id="cartlistTable">
							<caption class="caption">장바구니</caption>
							<tr>
								<td>번 호</td>
								<td align="left">곡정보</td>
								<td>금액</td>
								<td>삭제</td>
							</tr>
							<c:forEach var="row" items="${Banana}" varStatus="vs">
								<tr>
									<td>${vs.count}</td>
									<td align="left">
										<div id="sname">${row.sname}&nbsp;-&nbsp;${row.singername}</div>
									</td>
									<td class="won">300원</td>
									<td>
										<button hidden="hidden" id="${vs.index}" class="sss" name="sss" value="${row.downloadfile}"></button>
										<button type="button" class="deleteButton" onclick="deleteButton(${row.snum})">X</button>
									</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
			<div class="infotDiv">
				<div class="infotDivDiv">
					<table id="infoTable">
						<caption class="caption">다운로드 구매 정보</caption>
						<tr>
							<td class="infotTdleft">전체곡 수</td>
							<td class="red">${allMusic}곡</td>
						</tr>
						<tr>
							<td class="infotTdleft">차감 가능한 곡</td>
							<td class="red">${myMusic}곡</td>
						</tr>
						<tr>
							<td class="infotTdleft">개별 구매 곡</td>
							<td class="red">${allMusic-myMusic}곡</td>
						</tr>
						<tr>
							<td class="infotTdleft">무료(재다운로드)</td>
							<td class="red">${myMusic}곡</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="infotDiv2">
				<div class="infotDivDiv2">
					<table id="infoTable">
						<caption class="caption">결제 정보</caption>
						<tr>
							<td class="infotTdleft">나의 포인트</td>
							<td class="won red">${loginVO.point}</td>
						</tr>
						<tr>
							<td class="infotTdleft gray">구매할 곡 수</td>
							<td td class="gray">${allMusic-myMusic}곡</td>
						</tr>
						<tr>
							<td class="infotTdleft">결제할 금액</td>
							<td class="won red">${price}원</td>
						</tr>
					</table>
				</div>
			</div> <br>
			<button type="button" onclick="cancelButton()">취소</button> &nbsp;&nbsp;
			<button type="button" onclick="payButton()">개별 곡 결제하기</button>
		</span>
	</div>
</body>
</html>