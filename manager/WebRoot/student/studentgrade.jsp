<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>学生成绩</title>
  <SCRIPT type="text/javascript" src="../res/js/jquery-1.7.2.js"></SCRIPT>
<link  rel="stylesheet" type="text/css" href="res/css/daohang.css"/>
<script>
	$(function(){
		$(".top-menu>li").hover(function(){
			$(this).children('ul').stop(true,true).show(500);
		},function(){
			$(this).children('ul').stop(true,true).hide(500);
		})
	})
</script>
  </head>
  
<body>
<div style="position:relative;left: 15%;width: 1000px;text-align: center;">
    <img alt="标题" src="../image/title.jpg">
    <div style="position:relative;width: 1000px;">	
	<ul class="top-menu">
	<li><a href="#">上交作业</a>
		<ul class="sub-menu">
			<li><a href="../upload/upload.jsp">上交作业</a></li>
			
		</ul>
	</li>
	<li><a href="#">查看成绩</a>
		<ul class="sub-menu">
			<li><a href="#">查看成绩</a></li>			
		</ul>
	</li>
</ul>
</div>
</div>
</body>
</html>
