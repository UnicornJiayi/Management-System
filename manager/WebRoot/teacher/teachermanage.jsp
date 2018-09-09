<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师管理</title>
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
	<ul class="top-menu">	
	<li><a href="#">发表作业</a>
		<ul class="sub-menu">
			<li><a href="everydaywork.jsp">平时作业</a></li>
			<li><a href="../teacher/getAllarrangeWork.action">修改作业</a></li>
			
		</ul>
	</li>
	<li><a href="#">统计作业</a>
		<ul class="sub-menu">
			<li><a href="selectwork.jsp">统计缺少作业</a></li>
			<li><a href="showeverydayscore.jsp">统计平时成绩</a></li>
			
		</ul>
	</li>
	<li><a href="#">批改作业</a>
		<ul class="sub-menu">
			<li><a href="../index.jsp">站点首页</a></li>
			<li><a href="selectaddscore.jsp">批改作业</a></li>			
		</ul>
	</li>
 	<li><a href="#">信息发表</a>
		<ul class="sub-menu">
			<li><a href="../index.jsp">站点首页</a></li>		
		</ul>
	</li>

   </ul>
</body>
</html>