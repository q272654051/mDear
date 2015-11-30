$(function(){
	
});

function username_blur(){
	var username = $('#username').val();
	
	$.ajax({
		type: "post",
        url: "registerController/registercheck",
        data: {
        	"username":username,
        },
        dataType: "json",
        success: function(data){
        	if(data['success']){
        		$('#username_check').html("该用户已存在！");
        	}else{
        		$('#username_check').html("该用户可以注册");
        	}
        },
        error: function(data){
        	$('#username_check').html("");
        }
	});
}
function password1_blur(){
	var password1 = $('#password1').val();
	$('#password1_check').html("");
	if (password1.length<6 || password1.length>12){
		$('#password1_check').html("请输入6-12位字符!");
		return;
	}
	
}
function password2_blur(){
	var password1 = $('#password1').val();
	var password2 = $('#password2').val();
	$('#password2_check').html("");
	if (password1!=password2){
		$('#password2_check').html("两次输入的密码不一致!");
		return;
	}
	
}

function register(){
	var username = $('#username').val();
	var password = $('#password1').val();
	var phone = $('#phone').val();
	var email = $('#email').val();
	
	$.ajax({
		type: "post",
        url: "registerController/register",
        data: {
        	"username":username,
        	"password":password,
        	"phone":phone,
        	"email":email
        },
        dataType: "json",
        success: function(data){
        	if(data['success']){
        		window.location.href='index.jsp';
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