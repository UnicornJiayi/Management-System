<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" >
	function showChild(obj,which){
		switch(which){
			case '1':
				$("#child1").css('display') == 'none' ? $("#child1").css('display', 'block'):$("#child1").css('display', 'none');
				obj.firstChild.innerHTML == '+' ? obj.firstChild.innerHTML = '- ' : obj.firstChild.innerHTML = '+';
				break;
			case '2':
				$("#child2").css('display') == 'none' ? $("#child2").css('display', 'block'):$("#child2").css('display', 'none');
				obj.firstChild.innerHTML == '+' ? obj.firstChild.innerHTML = '-' : obj.firstChild.innerHTML = '+';
				break;
			case '3':
				$("#child3").css('display') == 'none' ? $("#child3").css('display', ''):$("#child3").css('display', 'none');
				obj.firstChild.innerHTML == '+' ? obj.firstChild.innerHTML = '-' : obj.firstChild.innerHTML = '+';
				break;
			default:
				;
		}
	
	}
	
	function rightLoadadd(){
		$(".aFB_b_right").load("addteacher.jsp");
		return false;
	}
	function rightLoadselect(){
		$(".aFB_b_right").load("delectstudent.jsp");
		return false;
	}
</script>
<style type="text/css">
 	a:link { text-decoration: none;}
	.operlist{
		background-color: green;
		margin-top: 10px;
		text-align: left;
		font-size: 18pt;
		margin-left: 5px;
	}
	.child{
		font-size: 18pt;
	}
	.items{
		font-size: 15px;
		color: black;
		text-decoration: underline;
		margin-left: 30px;
		margin-top: 4px;
	}
	#child1,#child2{
		display: none;
		margin-left: 14px;
		margin-top: 6px;
	}
</style>
<div>
	<div class="operlist" onclick="showChild(this,'1');"><a class="child" href="#" >+</a>教师管理</div>
		<div id="child1" > 
			<a href="#" class="items" id="classadd" onclick="rightLoadadd();" style="margin-left: 30px">增加教师</a> <br /> 
			<div style="height: 6px;"></div>
</div>