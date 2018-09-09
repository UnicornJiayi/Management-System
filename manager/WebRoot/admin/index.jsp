<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在线作业管理后台管理系统</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page"> 
	<link rel="stylesheet" type="text/css" href="res/css/adminStyle.css"/>
	<link rel="stylesheet" type="text/css" href="res/css/adminHeader.css"/>
	<link rel="stylesheet" type="text/css" href="res/css/adminIndex.css"/>
	<link rel="stylesheet" type="text/css" href="res/css/adminFooter.css"/>
	
	<script type="text/javascript" src="../res/js/jquery-1.7.2.js"></script>
	<script type="text/javascript" src="res/js/adminIndex.js"></script>

</head>
<body>
  <div class="adminForumBody">
	  <div class="aFB_head">
		  <div class="aFB_h_nav">
		  <a class="aFB_h_logo" href="javascript:void(0);">LOGO</a>
		  <ul>
		  	<li><a href="javascript:void(0);">前台首页</a></li>
		  	<li><a href="javascript:void(0);">修改密码</a></li>
		  	<li><a href="javascript:void(0);">修改资料</a></li>
		  	<li><a href="javascript:void(0);">退出</a></li>
		  </ul>
		  </div>
		  <div class="aFB_h_navMenu">
		  	<ul><li><a id="studentManage" href="studentManageLeft.jsp">学生管理</a></li>
			<!--    	<li><a id="productManager" href="productManager/productsManagerLeft.jsp">商品管理</a></li> -->
			  	<li><a id="teacherManage" href="teacherManageLeft.jsp">教师管理</a></li>
			  	<li><a id="workManage" href="workManageLeft.jsp">作业管理</a></li>
		  	</ul>
		  </div>
	  </div>
	  <div class="aFB_body">
		  <div class="aFB_b_left">
		  </div>
		  <div class="aFB_b_right">
		  </div>
	  </div>
	  <div class="aFB_footer">footer</div>
  </div>
  </body>
</html>