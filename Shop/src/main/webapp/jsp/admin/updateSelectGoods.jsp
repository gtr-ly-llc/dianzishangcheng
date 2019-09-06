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
    <title>updateSelectGoods.jsp</title>
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
		function changeColor(obj){
			obj.className = "bgcolor";
		}
		function changeColor1(obj){
			obj.className = "";
		}
	</script>
</head>
<body>
	<table border="1" bordercolor="PaleGreen">
		<tr>
			<th width="100px">ID</th>
			<th width="200px">名称</th>
			<th width="200px">价格</th>
			<th width="100px">库存</th>
			<th width="100px">详情</th>
			<th width="100px">操作</th>
		</tr>
		<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
			<td>1</td>
			<td>水果1</td>
			<td>10</td>
			<td>1000</td>
			<td><a href="goodsDetail.jsp" target="_blank">详情</a></td>
			<td><a href="updateAgoods.jsp" target="center" >修改</a></td>
		</tr>
		<tr>
			<td colspan="6" align="right">
				&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;共2条记录&nbsp;&nbsp;共1页&nbsp;&nbsp;
				第1页&nbsp;&nbsp;
				<a href=" ">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href=" ">下一页</a>
			</td>
		</tr> 
	</table>
</body>
</html>