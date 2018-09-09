<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>作业管理系统</title>	
    <SCRIPT type="text/javascript">
    	function selectuser()
    	{
    		var selectedvar = document.getElementById("selectvalue");
    		var selectvalue = selectedvar.options[selectedvar.selectedIndex].value;  //下拉列表选中的index
    		var sno = document.getElementById("sno").value;
    		var password = document.getElementById("password").value;
    		if(sno == "")
    		{
    			alert("请输入学号");
    			return false;
    		}
    		if(password == "")
    		{
    			alert("请输入密码");
    			return false;
    		}
    		if(sno != null && password != null)
    		{
    			window.location.href="login.action?sno="+sno+"&&password="+password+"&&selectvalue="+selectvalue;
    			return true;
    		}
    	}
    </SCRIPT>
  </head>  
  <body>
    <table width="1000" border="0" align="center" cellspacing="0" cellpadding="0">
    <tr>
    <td height="300" colspan="2" background="image/title.jpg"></td>
    </tr>
    <tr height="700">
    <td width="600">
         <table width="600" height="700" cellspacing="0" cellpadding="0" border="0">
         <tr height="40">
         <td bgcolor="#90ee90"><b>今天是:<script language="javascript" >
					var time=new Date();
					var week=new Array("星期天","星期一","星期二","星期三","星期四","星期五","星期六");
					var x=time.getMonth()+1;
					var y=time.getDate();
					var z=time.getDay();
					var year=time.getFullYear()	;
					document.write(year+"年 "+x+"月 "+y+"日 "+week[z]);
					</script></b>
         </td>
         </tr>
         <tr height="300">
         <td>
         <table cellpadding="0" cellspacing="0">
         <tr height="250">
         <td>
         <p align="center"><b>系统简介</b></p>
         &nbsp;&nbsp;&nbsp;&nbsp;在现代化的教育技术模式下，计算机已经广泛应用于学校的教育管理，给传统的教学方式带来了重大的革命。如何有效进行作业管理是摆在我们面前的
                           一个新的课题。 本项目在研究目前国内外作业管理情况的基础上，从学校的实际需求出发，采用当前较为流行的B/S（浏览器/服务器）结构和SSH动态网页开
                            发技术，设计并实现了一个功能较为完善的小型在线作业管理系统。通过对系统进行一系列的需求分析、设计、编码、测试等工作，使系统实现了管理员发布管
                           理公告、教师管理、学生上传下载作业等功能。
         </td>
         </tr>
         <tr height="50">
         <td>
         <img alt="花边" src="image/lace.jpg" align="bottom">
         </td>
         </tr>
         </table>
         </td>
         </tr>
         <tr height="40">
         <td bgcolor="#90ee90">
         <b>作业信息发布</b>         
         </td>
         </tr>
         <tr>
         <td>
         <b>SSH大作业要求：</b><br><br>
		 1、每个小组交一个大作业，占总成绩的30%；<br>
		 2、至少使用SSH框架中的两个；<br>
		 3、提交时间：第17周周五之前；<br>
		 4、提交方式：和平时交作业的FTP地址一样；<br>
		 5、提交内容：项目源代码压缩包+项目功能介绍+数据库的Sql脚本，其中项目功能介绍用PPT完成，PPT内容包括:项目成员简介及分工介绍，项目主要
		  功能文字列表，项目主要功能抓图界面。把所有文件打包，上传到FTP服务器，命名格式示例：2011级软件测试-1大班-组号-项目名称.rar。<br><br>
		 <b>【注意】严禁抄袭，违者必究！</b>！         
         </td>
         </tr>                           
         </table>
    </td>
    <td width="400">
         <table width="400" height="700" cellspacing="0" cellpadding="0" border="0">
         <tr height="40">
         <td bgcolor="#f4a460"><b>用户登录</b></td>
         </tr>
         <tr height="300">
         <td background="image/login.jpg"align="center">
             <br><s:form theme="simple" action="login">
	         <table>
	         <caption align="top"><b>欢迎使用！</b></caption>
	         <tr><td>&nbsp;</td><td>&nbsp;</td></tr>	         	          
	         <tr><td><b>学号：</b></td>
	         <td><s:textfield name="sno" id="sno"/></td>
	         </tr>
	         <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
	         <tr><td><b>密码：</b></td>
	         <td><s:password name="password" id="password"/></td>
	         </tr>
	         <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
	         <tr><td><b>身份：</b></td>
	         <td><select name="selectvalue" id="selectvalue">  
			   <option value="1">学生</option> 
			   <option value="2">老师</option>
			   <option value="3">管理员</option>			  
			 </select></td>
	         </tr>
	         <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
	         <tr>
	         <td></td>
	         <td><s:submit name="sub" value="登录" onclick="return selectuser();"></s:submit><s:a href="index/regist.html">注册用户</s:a>&nbsp;&nbsp;<s:a href="#">忘记密码？</s:a></td>
	         </tr>                  
	         </table>
	         </s:form>
	     </td>
	     </tr>
	     <tr height="40">
         <td bgcolor="#f4a460"><b>管理员信息发布</b></td>
         </tr>
         <tr height="50">
         <td align="center" valign="top"><center><font color="#c71585" size="5"><b>亲爱的老师们，同学们你们好！</b></font></center></td>
         </tr>
         <tr>
         <td>
         <marquee onMouseOut="this.start()" onMouseOver="this.stop()" direction="up" scrollamount="3">
         <b>管理员公告：</b><br><br>
                           平时作业管理系统：版本号 1.0<br><br>
                           本系统的功能简单实用，界面简洁、大方，操作方便、快捷。本系统自测试以来深受广大师生的喜爱。<br><br>
                           为了更好地服务与大家，欢迎大家提出宝贵意见和建议，项目小组定会虚心接受。大家可以随时吐槽！<br><br>
         <b>吐槽热线：10086，话费自理噢，亲~~!</b>
         </marquee>
         </td>
	     </tr>
         </table>
    </td>
    </tr>
    <tr height="200">
    <td colspan="2" bgcolor="#f0fif0">
    <p align="center"><img alt="footer1" src="image/footer1.gif">
    <img alt="footer2" src="image/footer2.gif">
    <img alt="footer3" src="image/footer3.gif">
    <img alt="footer4" src="image/footer4.gif">
    <br>   
    <br>
    <br>
    ©2017 Java ZZU@2017    
    </p>
    </td>
    </tr>
    </table>
  </body>
</html>
