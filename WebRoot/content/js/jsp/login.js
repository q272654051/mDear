$(function(){
	
});

function login(){
	var username = $('#username').val();
	var password = $('#password').val();
	
	$.ajax({
		type: "post",
        url: "loginController/login",
        data: {
        	"username":username,
        	"password":password
        },
        dataType: "json",
        success: function(data){
        	if(data['success']){
        		alert(data['msg']);
        		window.location.href='index.jsp';
        	}else{
        		alert(data['msg']);
        	}
        },
        error: function(data){
        	alert(data['msg']);
        }
	});
}

function register(){
	window.location.href='register.jsp';
}
