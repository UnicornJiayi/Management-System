<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.cx.model.Student"%>
<%@page import="java.util.Iterator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>未交作业名单</title>
</head>
<body>
<center>
<h1><font color="red">未交作业名单</font></h1>
<table cellpadding="0" cellspacing="0">
<tr>
	<td bgcolor="#87ceed" width="200px" align="center">学号</td>
	<td bgcolor="#87ceed" width="50px" align="center">姓名</td>
</tr>
<% Object obj = session.getAttribute("nowork");
	if(obj != null)
	{
		List<Student> noWorkStudentList = (List<Student>)obj;
		Iterator<Student> noWorkIt = noWorkStudentList.iterator();
		Student student = null;
		while(noWorkIt.hasNext())
		{
			student = noWorkIt.next();
			String sno = student.getSno();
			String sname = student.getSname();
%>

<tr>
	<td><%=sno %></td>
	<td><%=sname %></td>
</tr>
<% 		
	    }
	 }
 %>
 </table>
 <a href="selectwork.jsp">返回</a>
 </center>
</body>
</html>