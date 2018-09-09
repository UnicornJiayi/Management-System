<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>平时作业</title>
<script type="text/javascript">
	function check()
	{
		var wr = document.getElementById("wring").value;
		var work =	document.getElementById("worktxt").value;
		if(wr == "")
		{
			alert("请输入作业次数");
			return false;
		}
		if(work == "")
		{
			alert("请输入作业的内容");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
<center>
	<h1><font color="red">发表平时作业</font></h1>
<form action="../teacher/everydaywork.action" method="post">
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
</body>
</html>