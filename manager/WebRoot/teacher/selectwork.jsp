<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查找未交作业名单</title>
</head>
<body>
<center>
<h1><font color="red">查找未交作业名单</font></h1>
<s:form action="selectnowork">
	请输入要查找的次数<s:textfield name="wring"/>
	<s:submit value="确定"/>
</s:form>
</center>
</body>
</html>