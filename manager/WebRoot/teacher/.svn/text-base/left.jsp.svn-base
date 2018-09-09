<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.cx.model.ArrangeWork"%>
<%@page import="java.util.Iterator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查找作业</title>
<script type="text/javascript">
function update(aring)
{
	window.location.href="../teacher/update.action?aring="+aring;
	return true;
}
</script>
</head>
<body>
<center> 
<% Object obj = session.getAttribute("arrangeworks");
	if(obj != null)
	{
		List<ArrangeWork> list = (List<ArrangeWork>)obj; 
		Iterator<ArrangeWork> it = list.iterator();
		ArrangeWork arrangework = null;
%>
<form>

<table cellpadding="0" cellspacing="0">
<%
		
		while(it.hasNext())
		{
			arrangework = it.next();
			Integer aring =	arrangework.getAring();
%>
		<tr>
			<td><%
			out.print("<a href=\"javascript:void(0)\" onclick=\"return update('"+aring+"');\">作业"+aring+"</a>");
			 %></td>
		</tr>
<% 				
		}
	}
 %>
 </center>
 </table>
 </form>
</body>
</html>