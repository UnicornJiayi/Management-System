<%@page import="com.cx.model.Student"%>
<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>文件上传</title>
</head>
<body>
<center>
<h1>文件上传</h1>
<s:form action="upload"
	enctype="multipart/form-data">
	<s:textfield name="num" label="第几次作业"/><br/>
	<s:file name="upload" label="选择文件"/><br/>
	<s:submit value="上传"/>
</s:form>
</center>
</body>
</html>
