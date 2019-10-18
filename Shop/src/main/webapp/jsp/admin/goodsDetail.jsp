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
</head>
<body>
	<table border=1 style="border-collapse: collapse">
		<caption>
			<font size=4 face=华文新魏>商品详情</font>
		</caption>
		<tr>
			<td>名称</td>
			<td>
				${gooddate.goodsname}
			</td>
		</tr>
		<tr>
			<td>原价</td>
			<td>
				${gooddate.goodsoriginal}
			</td>
		</tr>
		<tr>
			<td>折扣价</td>
			<td>
				${gooddate.goodscurrent}
			</td>
		</tr>
		<tr>
			<td>库存</td>
			<td>
				${gooddate.goodsstock}
			</td>
		</tr>
		<tr>
			<td>图片</td>
			<td>
				<img alt="" width="250" height="250" src="/shop2/${gooddate.goodspicture}"/>
			</td>
		</tr>
		<tr>
			<td>类型</td>
			<td>
				${gooddate.typename}
			</td>
		</tr>
	</table>
</body>
</html>