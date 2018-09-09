<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除学生</title>
</head>
<body>
<s:form action="../admin/delete">
	请输入你想删除的学生学号<s:textfield name="sno"/>
	<s:submit value="确定" onclick="alert(删除成功)"/>
</s:form>
</body>
</html>