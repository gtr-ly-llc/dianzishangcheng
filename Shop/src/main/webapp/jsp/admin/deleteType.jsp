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
	<script type="text/javascript">
  		function checkDel(id){
  			if(window.confirm("是否删除该商品类型？")){
  				window.location.href = "/ch20/adminType/deleteType?id="+id;
  			}
  		}
  </script>
</head>
<body>
	<table border="1" bordercolor="PaleGreen" >
		<tr>
			<th width="200px">类型ID</th>
			<th width="300px">类型名称</th>
			<th width="300px">删除操作</th>
		</tr>
		<tr>
			<td>1</td>
			<td>服装</td>
			<td><a href=" ">删除</a></td>
		</tr>
			<tr>
			<td>2</td>
			<td>水果</td>
			<td><a href=" ">删除</a></td>
		</tr>
	</table>
</body>
</html>