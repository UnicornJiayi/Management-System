<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>找回密码</title>
</head>
<body>
<%
 Object obj = session.getAttribute("password");
 session.removeAttribute("password");
 if(obj == null)
 {
 %>
<s:form action="../admin/getpassword">
	请输入您要找密码的学号<s:textfield name="sno"/>
	<s:submit value="确定"/>
</s:form>
<%
	}
	else
	{
 %>
 		<h1><font color="red">密码为:<%=obj %></font></h1>
 		<a href="index.jsp">返回</a>
 <%}
  %>
</body>
</html>