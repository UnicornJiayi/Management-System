$(document).ready(function(){
	//后台管理系统头部导航栏单击效果
	$(".aFB_b_left").load($("#leftDefault").attr("href"));
	$(".aFB_h_navMenu").find("li").click(function(){
		$(".aFB_b_right").html("");
		if(!$(this).hasClass("aFB_h_navMenuLiSelected")){
			$(".aFB_h_navMenu").children("ul").children("li").removeClass("aFB_h_navMenuLiSelected");
			$(this).addClass("aFB_h_navMenuLiSelected");
		}
		$(".aFB_b_left").html("");
		$(".aFB_b_left").load($(this).children("a").eq(0).attr("href"));
		return false;
	});
});