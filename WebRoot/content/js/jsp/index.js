$(function(){
	
});

function login(){
	var username = $('#username').val();
	var pwd = $('#pwd').val();
	var div = $('.search1');
	
	$.ajax({
		type: "post",
        url: "loginController/login",
        data: {
        	"username":username,
        	"pwd":pwd
        },
        dataType: "json",
        success: function(data){
        	if(data['success']){
        		//window.location.href='loginController/loginSuccess';
        		alert(data['msg']);
        		div.empty();
        	}else{
        		alert(data['msg']);
        	}
        },
        error: function(data){
        	alert(data['msg']);
        }
	});
}