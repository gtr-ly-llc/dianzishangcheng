<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>订单管理</title>
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
			obj.className="bgcolor";
		}
		function changeColor1(obj){
			obj.className="";
		}
		function checkDel(orderid){
  			if(window.confirm("是否删除该订单？")){
  				window.event.returnValue = true;
  			}
  		}
	</script>
</head>
<body>
	<br>
	<table border="1" bordercolor="PaleGreen">
		<tr>
			<th width="150px">订单编号</th>
			<th width="150px">用户E-mail</th>
			<th width="100px">订单金额</th>
			<th width="100px">订单状态</th>
			<th width="150px">订单日期</th>
			<th width="100px">操作</th>
		</tr>
		<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
			<td>1</td>
			<td>123@126.com</td>
			<td>500.00</td>
			<td>未付款</td>
			<td>2019-06-18</td>
			<td>
				<a href="javaScript:checkDel('1')">删除</a>
				&nbsp;
			</td>
		</tr>
		<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
			<td>2</td>
			<td>456@126.com</td>
			<td>600.00</td>
			<td>已付款</td>
			<td>2019-06-19</td>
			<td>
				<a href="javaScript:checkDel('2')">删除</a>
				&nbsp;
			</td>
		</tr>
		<c:forEach items="${orderList}" var="order">
			<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
				<td>${order.orderid}</td>
				<td>${order.user.useremail}</td>
				<td>${order.ordermoney}</td>
				<td>
					<c:if test="${order.orderstatus==0}">
						未付款
					</c:if>
					<c:if test="${order.orderstatus==1}">
						已付款
					</c:if>
				</td>
				<td><fmt:formatDate value="${order.ordertime}" pattern="yyyy-MM-dd"/></td>
				<td>
					<a href="<%=basePath %>admin/deleteOrder?orderid=${order.orderid}" onclick="return checkDel()">删除</a>
					&nbsp;
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>