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
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script>
// 检测表单元素
function check(){
	var th = document.form;
	if(th.goodsname.value == ""){
		alert("请填写商品名称");
		return false;
	}
	if(th.goodsoriginal.value == ""){
		alert("请输入商品价格");
		return false;
	}
	if(th.goodscurrent.value == ""){
		alert("请输入商品折扣价");
		return false;
	}
	if(th.goodsstock.value == ""){
		alert("请输库存数量");
		return false;
	}
	if(th.image.value == ""){
		alert("请上传商品图片");
		return false;
	}
	
	//$("#goodName").val(goodName);
	return true;
}
</script>
</head>    
<body>
	<form name="form" action="<%=basePath %>admin/addGoods" method="post" enctype="multipart/form-data" onsubmit="return check();">
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
			<td>原价</td>
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
				<input type="file" name="image" id="image"accept="image/*"/>
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
