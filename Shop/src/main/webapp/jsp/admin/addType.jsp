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
<title>Insert title here</title>
<link href="<%=basePath %>css/admin/common.css" type="text/css" rel="stylesheet">
	<style type="text/css">
		table{
			text-align: center;
			border-collapse: collapse;
		}
		.bgcolor{
		  	background-color: #F08080;
		}
	</style>
</head>
<body>
	<table border="1" bordercolor="PaleGreen" >
		<tr>
			<th width="200px">类型ID</th>
			<th width="600px">类型名称</th>
		</tr>
			<tr>
				<td>1</td>
				<td>服装</td>
			</tr>
			<tr>
				<td>2</td>
				<td>水果</td>
			</tr>
	</table>
	<form action="" method="post">
		类型名称：
		<input type="text" name="typename"/>
		<input type="submit" value="添加"/>
	</form>
</body>
</html>