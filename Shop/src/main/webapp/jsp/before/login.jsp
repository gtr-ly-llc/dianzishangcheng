<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录页面</title>
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
		document.loginform.submit();
	}
	//取消按钮
	function cancel(){
		document.loginform.action="";
	}
	function refreshCode(){
		document.getElementById("code").src = "validateCode?" + Math.random();
    }
    	window.onload = function() {
    		var msg="${msg}";
			if(msg!=""&&msg!=null){
				alert(msg);
			}
		}
    </script>
  </head>
  <body>
  	<iframe src="<%=basePath %>jsp/before/head.jsp" width="100%"> </iframe>
  	<center>
  	<form action="<%=basePath %>user/userLogin" method="post" name = "loginform">
	<table>
		<tr>
			<td colspan="2"><img src="<%=basePath %>images/admin/login.gif"></td>
		</tr>
		<tr>
			<td>E-Mail：</td>
			<td><input type="text" name="useremail"  class="textSize"/></td>
		</tr>
		<tr>
			<td>密码：</td>
			<td><input type="password" name="userpwd" class="textSize"/></td>
		</tr>		
		<tr>
			<td>验证码：</td>
			<td><input type="text" name="code" class="textSize"/></td>
		</tr>		
		<tr>
			<td>
				<img id="code" src=""/>
			</td>
			<td class="ared">
				<a href="javascript:refreshCode();"><font color="blue">看不清，换一个！</font></a>
			</td>
		</tr>		
		<tr>
			<td colspan="2">
				<input type="image" src="<%=basePath %>images/admin/ok.gif" onclick="gogo()">
				<input type="image" src="<%=basePath %>images/admin/cancel.gif" onclick="cancel()">
			</td>
		</tr>
	</table>
	</form>
	</center>
  </body>
</html>
