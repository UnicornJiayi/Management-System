$(document).ready(function() {
	/**
	 * form表单初级验证
	 */
	var nameBoo = false,pwdBoo = false,pwd2Boo = false;
	$(".body").find("input").focusin(function() {
		var attrName = $(this).attr("class");
		var tip = "";
		switch (attrName) {
		case "txtName":
			tip = "4-11位，可由数字、字母和\"_\"组成。";
			nameBoo = false;
			break;
		case "txtPwd":
			tip = "6-11个字符(数字、字母和符合组成)。";
			pwdBoo = false;
			break;
		case "txtPwdT":
			tip = "请再次输入您的密码。";
			pwd2Boo = false;
			break;
		default:
			tip = "";
			break;
		}
		$("."+attrName+"Tip").html(tip);
	}).focusout(function() {
		var attrName = $(this).attr("class");
		var valueTxt = $(this).val();
		var tip = "";
		switch (attrName) {
		case "txtName":
			if(valueTxt==""){
				tip = "错误!学号不能为空!";
				nameBoo = false;
			}else if(valueTxt.length<4||valueTxt.length>11){
				tip = "错误!学号长度必须在4到11个字符之间!";
				nameBoo = false;
			}else{
				var regTxt = /^[A-Z|a-z|\d|_]{4,11}$/;
				if(regTxt.test(valueTxt)){
					$.ajax({
						url:"snocheck.action",
						type:"post",
						dataType:"text",
						data:{sno:valueTxt},
						error:function(err) {
							nameBoo = false;
							tip = "错误!";
							$("."+attrName+"Tip").html("<font color='red'>"+tip+"</font>");
						},
						success:function(msg){
							if(msg == "o"){
								nameBoo = true;
								tip = "恭喜!用户名可以使用!";
								$("."+attrName+"Tip").html("<font color='red'>"+tip+"</font>");
							}else{
								nameBoo = false;
								tip = "抱歉!该用户已被注册!";
								$("."+attrName+"Tip").html("<font color='red'>"+tip+"</font>");
							}
						}
					});
				}else{
					nameBoo = false;
					tip = "错误!4-11位，可由数字、字母和\"_\"组成。";
				}
			}
			break;
		case "txtPwd":
			if(valueTxt==""){
				pwdBoo = false;
				tip = "错误!密码不能为空!";
			}else if(valueTxt.length<6||valueTxt.length>11){
				pwdBoo = false;
				tip = "错误!密码长度必须在6到11个字符之间!";
			}else{
				pwdBoo = true;
				tip = "恭喜!密码可用使用!";
			}
			break;
		case "txtPwdT":
			var pwd = $(".txtPwd").val();
			if(valueTxt==""){
				pwd2Boo = false;
				tip = "错误!请填写确认密码!";
			}else if(valueTxt!=pwd){
				pwd2Boo = false;
				tip = "错误!两次密码输入不相同!";
			}else{
				pwd2Boo = true;
				tip = "恭喜!输入正确!";
			}
			break;	
			
		default:
			tip = "";
			break;
		}
		$("."+attrName+"Tip").html("<font color='red'>"+tip+"</font>");
	});
	$(".body").find(".btn_sub").click(function(){
		if(nameBoo&&pwdBoo&&pwd2Boo){
			return true;
		}else{
			alert("错误!您输入的信息不完整,不能注册!");
			return false;
		}
	});
});