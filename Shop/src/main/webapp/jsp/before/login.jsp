<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录页面</title>
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	<link href="<%=basePath %>css/before/daohang.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath %>css/before/common.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath %>css/before/style.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
	table{
		text-align: center;
	}
	.textSize{
		width: 200px;
		height: 20px;
	}
	</style>
	<script type="text/javascript">
	//确定按钮
		function gogo(){
			var th = document.form;
			var regpostbox = new RegExp(/^([a-zA-Z0-9._-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/);
			if (th.useremail.value == ""){
				alert("请填写E-mail!");
				return false;
			}else
			if (!regpostbox.test(th.useremail.value)) {
				alert("E-mail格式错误！");
				return false;
			}else
			if(th.userpwd.value == ""){
				alert("请填写密码！");
				return false;
			}else{
				return true;
			}
		}
		//取消按钮
		function cancel(){
			document.form.action="";
		}
    	window.onload = function() {
    		var msg="${msg}";
			if(msg!=""&&msg!=null){
				alert(msg);
			}
			changeCode();
		}
    	function changeCode() {
            $("#code").attr("src", "<%=basePath %>user/checkCode?t="+Math.random());
        }
    </script>
  </head>
  <body>
  	<iframe src="<%=basePath %>jsp/before/head.jsp" width="100%"> </iframe>
  	<center>
  	<form name="form" action="<%=basePath %>user/userLogin" method="post" onsubmit="return gogo()">
	<table border="0">
		<tr>
			<td colspan="2"><img src="<%=basePath %>images/admin/login.gif"></td>
		</tr>
		<tr>
			<td>E-Mail：</td>
			<td colspan="2"><input type="text" name="useremail"  class="textSize"/></td>
		</tr>
		<tr>
			<td>密码：</td>
			<td colspan="2"><input type="password" name="userpwd" class="textSize"/></td>
		</tr>		
		<tr>
			<td>验证码：</td>
			<td colspan="2"><input type="text" name="code" class="textSize"/></td>
		</tr>		
		<tr>
			<td>
			</td>
			<td  class="ared" style="width:40px;height:35px;">
			<a href="#" onclick="changeCode()">
				<font color="blue">看不清，换一个！</font></a>
				
			</td>
			<td style="width:40px">
				<img id="code" src=""/>
			</td>
		</tr>
				
	</table>
	<br/>
	<input type="image" src="<%=basePath %>images/admin/ok.gif">
	<input type="image" src="<%=basePath %>images/admin/cancel.gif" onclick="cancel()">
	</form>
	</center>
  </body>
</html>
