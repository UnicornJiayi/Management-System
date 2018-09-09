<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>上传成功</title>
</head>
<body>
    <table align="center">
    <tr>
    <td> 
	上传成功!<br/>
	文件为第<s:property value=" + num"/>次作业<br/>
	文件为：<s:property value="uploadFileName"/><br/>
	<a href="upload.jsp">继续上传</a> <a href="../student/studentgrade.jsp">查看作业成绩</a>
	</td>
	</tr> 
	</table>
</body>
</html>
