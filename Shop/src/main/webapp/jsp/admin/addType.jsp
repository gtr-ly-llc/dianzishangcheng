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
	<script>
	function checkInput(){
		var th = document.form;
		if (th.typename.value == ""){
			alert("请填类型名称！");
			return false;
		}
		return true;
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
			<th width="600px">类型名称</th>
		</tr>
		<c:forEach items="${typeList}" var="type">
			<tr>
				<td>${type.typeid}</td>
				<td>${type.typename}</td>
			</tr>
		</c:forEach>
	</table>
	<form name="form" action="<%=basePath %>admin/addType" method="post" onsubmit="return checkInput()">
		类型名称：
		<input type="text" name="typename"/>
		<input type="submit" value="添加"/>
	</form>
</body>
</html>