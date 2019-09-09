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
<title>addGoods.jsp</title>
<link href="<%=basePath %>css/admin/common.css" type="text/css" rel="stylesheet">
</head>    
<body>
	<form action="<%=basePath %>admin/addGoods" method="post">
	<table border=1 style="border-collapse: collapse">
		<caption>
			<font size=4 face=华文新魏>添加商品</font>
		</caption>
		<tr>
			<td>名称<font color="red">*</font></td>
			<td>
				<input type="text" name="goodsname"/>
			</td>
		</tr>
		<tr>
			<td>原价<font color="red">*</font></td>
			<td>
				<input type="text" name="goodsoriginal"/>
			</td>
		</tr>
		<tr>
			<td>折扣价</td>
			<td>
				<input type="text" name="goodscurrent"/>
			</td>
		</tr>
		<tr>
			<td>库存</td>
			<td>
				<input type="text" name="goodsstock"/>
			</td>
		</tr>
		<tr>
			<td>图片</td>
			<td>
				<input type="file" name="goodspicture"/>
			</td>
		</tr>
		<tr>
			<td>类型</td>
			<td>
				<select name="goodstype_id">
					<c:forEach items="${typeList}" var="type">
						<option value="${type.typeid}">${type.typename}</option>
					</c:forEach>
					<option value="1">家电</option>
					<option value="2">水果</option>
				</select>
			</td>
		</tr>
		<tr>
			<td align="center">
				<input type="submit" value="提交"/>
			</td>
			<td align="left">
				<input type="reset" value="重置"/>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>
