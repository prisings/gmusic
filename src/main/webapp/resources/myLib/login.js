/**
 * 
 */
$(function(){ //ready로 감싸야 id식별 가능
	$('#login_button').click(function(){
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
});//ready