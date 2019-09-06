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
    <title>用户管理</title>
	<link href="<%=basePath %>css/admin/common.css" type="text/css" rel="stylesheet">
	<style type="text/css">
		table{
			text-align: center;
			border-collapse: collapse
		}
		.bgcolor{
		  	background-color: #F08080;
		}
	</style>
	<script type="text/javascript">
		function changeColor(obj){
			obj.className = "bgcolor";
		}
		function changeColor1(obj){
			obj.className = "";
		}
		function checkDel(id){
  			if(window.confirm("是否删除该用户？")){
  				window.location.href="/ch20/adminUser/deleteuserManager?id="+id;
  			}
  		}
	</script>
</head>
<body>
	<br>
	<table border="1" bordercolor="PaleGreen">
		<tr>
			<th width="200px">用户ID</th>
			<th width="200px">用户E-mail</th>
			<th width="200px">用户密码</th>
			<th width="250px">删除</th>
		</tr>
		<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
			<td>1</td>
			<td>123@126.com</td>
			<td><input type="password" value="123456" readonly></td>
			<td>
				<a href="javaScript:checkDel('1')">删除</a>
			</td>
		</tr>	
		<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
			<td>2</td>
			<td>456@126.com</td>
			<td><input type="password" value="123456" readonly></td>
			<td>
				<a href="javaScript:checkDel('2')">删除</a>
			</td>
		</tr>	
	</table>
</body>
</html>