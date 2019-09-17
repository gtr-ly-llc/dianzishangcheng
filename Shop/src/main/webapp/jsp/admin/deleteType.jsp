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
	function checkDelete(typename) {
    	if (!confirm("删除商品类型："+typename+"？")) {
        	window.event.returnValue = false;
    	}
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
	<table border="1" bordercolor="PaleGreen" >
		<tr>
			<th width="200px">类型ID</th>
			<th width="300px">类型名称</th>
			<th width="300px">删除操作</th>
		</tr>
		<c:forEach items="${typeList}" var="type">
			<tr>
				<td>${type.typeid}</td>
				<td>${type.typename}</td>
				<td><a href="<%=basePath %>admin/deleteType?typeid=${type.typeid}" onclick="return checkDelete('${type.typename}')">删除</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>