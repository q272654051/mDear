$(function(){
	
});

function register(){
	var username = $('#username').val();
	var pwd = $('#pwd').val();
	
	$.ajax({
		type: "post",
        url: "registerController/register",
        data: {
        	"username":username,
        	"pwd":pwd
        },
        dataType: "json",
        success: function(data){
        	if(data['success']){
        		//window.location.href='loginController/loginSuccess';
        		alert(data['msg']);
        	}else{
        		alert(data['msg']);
        	}
        },
        error: function(data){
        	alert(data['msg']);
        }
	});
}