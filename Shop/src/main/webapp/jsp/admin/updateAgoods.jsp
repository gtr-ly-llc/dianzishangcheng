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
<title>updateAgoods.jsp</title>
<link href="<%=basePath %>css/admin/common.css" type="text/css" rel="stylesheet">
</head>    
<body>
	<form action="<%=basePath %>admin/updateGoods" method="post"><!--  enctype="multipart/form-data" -->
		<input type="text" name="goodsid" value="${goods.goodsid}" style="display:none"/>
		<table border=1 style="border-collapse: collapse;display:inline-block;">
			<caption>
				<font size=4 face=华文新魏>修改商品信息</font>
			</caption>
			<tr>
				<td>名称<font color="red">*</font></td>
				<td>
					<input type="text" name="goodsname" value="${goods.goodsname}"/>
				</td>
			</tr>
			<tr>
				<td>原价<font color="red">*</font></td>
				<td>
					<input type="text" name="goodsoriginal" value="${goods.goodsoriginal}"/>
				</td>
			</tr>
			<tr>
				<td>折扣价</td>
				<td>
					<input type="text" name="goodscurrent" value="${goods.goodscurrent}"/>
				</td>
			</tr>
			<tr>
				<td>库存</td>
				<td>
					<input type="text" name="goodsstock" value="${goods.goodsstock}"/>
				</td>
			</tr>
			<tr>
				<td>图片</td>
				<td>
					<input type="file" name="goodspicture" value="${goods.goodspicture}"/>
					<br>
						<img alt="" width="50" height="50"
						src="<%=basePath %>images/admin/103.jpg"/>
				</td>
			</tr>
			<tr>
				<td>类型</td>
				<td>
				<select name="typeid">
					<c:forEach items="${typeList}" var="type">
						<option value="${type.typeid}">${type.typename}</option>
					</c:forEach>
				</select>
				</td>
			</tr>
		</table>
		<table border=1 style="border-collapse: collapse;display:inline-block" width="300px" height="193px">
			<caption style="width:300px">
				<font size=4 face=华文新魏>原商品信息</font>
			</caption>
			<tr height="20px">
				<td>名称<font color="red">*</font></td>
				<td>
					${goods.goodsname}
				</td>
			</tr>
			<tr height="20px">
				<td>原价<font color="red">*</font></td>
				<td>
				${goods.goodsoriginal}
				</td>
			</tr>
			<tr height="20px">
				<td>折扣价</td>
				<td>
				${goods.goodscurrent}
				</td>
			</tr>
			<tr height="20px">
				<td>库存</td>
				<td>
				${goods.goodsstock}
				</td>
			</tr>
			<tr height="74px">
				<td>图片</td>
				<td>
					<br>
						<img alt="" width="50" height="50"
						src="<%=basePath %>images/admin/103.jpg"/>
				</td>
			</tr>
			<tr height="20px">
				<td>类型</td>
				<td>
				${goods.typename}
				</td>
			</tr>
		</table>
		<div>
					<input type="submit" value="提交"/>
					<input type="reset" value="重置"/>
			</div>
	</form>
</body>
</html>
