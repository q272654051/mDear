$(function(){
	
});

function login(){
	var username = $('#username').val();
	var pwd = $('#pwd').val();
	window.location.href="loginController/login";
	alert(username+pwd);
	$.ajax({
		type: "post",
        url: "loginController/login",
        data: {
        	"username":username,
        	"pwd":pwd
        },
        dataType: "json",
        success: function(data){
        },
        error: function(data){
        	alert("as");
        }
	});
}