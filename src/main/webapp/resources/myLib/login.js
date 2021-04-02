/**
 * 
 */
$(function(){ //ready로 감싸야 id식별 가능
	$('#login_button').click(function(){ //버튼 클릭시 로그인 에이젝스 화면
		$.ajax({ // nav topmenu
				type:'Get',
				url:'loginp',
				success:function(resultPage){
					$('#login').html('');
					$('#login').html(resultPage);
					},
				error:function(){
					$('#login').html("~~ 오류발생 ~~");
				}
			});//ajax
	});
	
	//홈 아작스 로그인 버튼 클릭후 폼 뜬다음 로그인 눌럿을때 처리
   /*$('#axlogin_button').click(function(){
      $.ajax({
         type:'Get',
         url:'mlogin',
         data:{
            id:$('#id').val(),
            password:$('#password').val()
         },
         success:function(resultpage){
               $('#login').html(''); 
               $('#login').html(resultpage);
            },
         error:function(){
            $('#login').html("~~ 다시 로그인하십시오. ~~");
         }   
      }); //ajax
   }); //click*/
});//ready