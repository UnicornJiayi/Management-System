<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.cx.model.Work"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>平时成绩</title>
<script type="text/javascript">
function ok()
{
	window.location.href="../teacher/showeverydayscore.action";
	return true;
}
</script>
</head>
<body>
<% Object obj = session.getAttribute("worksList");
session.removeAttribute("worksList");
if(obj == null)
{
 %>
<center>
<from>
	<button onclick="return ok();">显示平时成绩</button>
</from>
</center>
<%
}else
 {
 	Object object = session.getAttribute("map");
 	Map<Integer,String> map = (Map<Integer,String>)object;
 	List<Work> listwork = (List<Work>)obj;
 	Iterator<Work> it = listwork.iterator();
 	Work old = null;
 	Work newwork = new Work();
 %>
 <table cellpadding="0" cellspacing="0">
 <tr>
 	<td bgcolor="#87ceed" width="200px" align="center">学号</td>
 	<td bgcolor="#87ceed" width="100px" align="center">次数</td>
 	<td bgcolor="#87ceed" width="100px" align="center">分数</td>
 </tr>
 <%
 	while(it.hasNext())
 	{
 		old = it.next();
 		Integer wring = old.getWring();
 		Integer score = old.getGrade();
 		String sno = map.get(old.getStudent().getId());
 		if(old.getId() != newwork.getId())
 		{
 			if(newwork.getStudent() == null)
 			out.print("<tr><td>"+sno+"</td><td>"+wring+"</td><td>"+score+"</td></tr>");
 			else
 			out.print("<tr><td>"+sno+"</td><td>"+wring+"</td><td>"+score+"</td></tr>");
 		}
 		else
 		{
 			out.print("<tr><td>"+sno+"</td><td>"+wring+"</td><td>"+score+"</td></tr>");
 		}
 		newwork = old;
 	}
 }
  %>
  </table>
</body>
</html>