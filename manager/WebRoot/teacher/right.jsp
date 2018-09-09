<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
    Object obj = session.getAttribute("text");
    if(obj == null)
    {
 %>
 <center>
	<h1><font color="red">修改平时作业</font></h1>
<form action="" method="post">
<table cellpadding="0" cellspacing="0" >
<tr>
	<td width="50px">请输入作业的次数</td>
	<td><input type="text" name="wring" id="wring"/></td>
</tr>
<tr>
	<td>请输入作业的内容</td>
	<td width="200px" height="180px"><textarea name="worktxt" rows="10" cols="60" id="worktxt"></textarea></td>
</tr>
<tr>
	<td></td>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="确定" onclick="return check();"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"/></td>
</tr>
</table>
</form>
</center>
 <%} 
 	else
 {   String text = (String)obj;
 	String aring = (String)session.getAttribute("aring");
 %>
 <center>
	<h1><font color="red">发表平时作业</font></h1>
<form action="../teacher/everydaywork.action" method="post">
<table cellpadding="0" cellspacing="0" >
<tr>
	<td width="50px">请输入作业的次数</td>
	<td><input type="text" name="wring" id="wring" value="<%=aring %>"/></td>
</tr>
<tr>
	<td>请输入作业的内容</td>
	<td width="200px" height="180px"><textarea name="worktxt" rows="10" cols="60" id="worktxt"><%=text %></textarea></td>
</tr>
<tr>
	<td></td>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="确定" onclick="return check();"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"/></td>
</tr>
</table>
</form>
</center>
 <%
 }
  %>
</body>
</html>