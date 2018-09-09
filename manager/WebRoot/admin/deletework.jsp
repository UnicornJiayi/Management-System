<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除作业</title>
</head>
<body>
<form action="../admin/deletework.action" method="post">
	请输入您要删除的作业轮数<input type="text" name="wring"/></br>
	请输入您删除作业的学号<input type="text" name="sno"/></br>
	<input type="submit" value="确定"/>
</form>
</body>
</html>