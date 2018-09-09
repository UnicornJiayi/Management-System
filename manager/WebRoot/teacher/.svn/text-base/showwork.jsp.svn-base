<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示作业</title>
<script type="text/javascript">
function select(sno)
{
	alert("批改成功");
	var selectedvar = document.getElementById("selectvalue");
    var selectvalue = selectedvar.options[selectedvar.selectedIndex].value;  //下拉列表选中的index
    var hidden = document.getElementById("hidden").value;
    window.location.href="../teacher/addscore.action?sno="+sno+"&wring="+hidden+"&score="+selectvalue;
	return true;
}
</script>
</head>
<body>
<center>
<h1><font color="red">批改作业</font></h1>
<form action="">
<table cellpadding="0" cellspacing="0">

<tr>
	<td bgcolor="#87ceed" width="200px" align="center">作业</td>
	<td bgcolor="#87ceed" width="100px" align="center">操作</td>
</tr>
<% Object obj = session.getAttribute("filelist");
	Object hidden = session.getAttribute("wring");
if(obj != null)
{
	List<File> fileList = (List<File>)obj;
	for(int i = 0; i < fileList.size();i++)
	{
		String sno = fileList.get(i).getName();
%>
	<tr>
	
		<td><%=sno %></td>
		<td>
			<select name="score" size="1" onchange="return select('<%=sno %>');" id="selectvalue">
			<option value="1">1
			<option value="2">2
			<option value="3">3
			<option value="4">4
			<option value="5">5
			<option value="6">6
			<option value="7">7
			<option value="8">8
			<option value="9">9
			<option value="10">10
			</select>
		</td>
	</tr>
<% 		
	}
}
	        
 %>
 <input type="hidden" value="<%=hidden %>" id="hidden"/>
 </table>
</form> 
<a href="selectaddscore.jsp">返回</a>
</center>
</body>
</html>