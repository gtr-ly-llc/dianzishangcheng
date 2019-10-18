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
<title>搜索结果</title>
<link href="<%=basePath %>css/before/daohang.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/common.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
 <iframe src="<%=basePath %>jsp/before/head.jsp" width="100%"> </iframe>
	<div class="blank"></div>
	<div class="block clearfix">
		<div class="location ared">当前位置： <a href="index.jsp">首页</a> > 搜索结果</div>
		<div class="blank"></div>
		<div>
			<div class="nFlowBox">
				<table width="99%" align="center" border="0" cellpadding="5"
					cellspacing="1" bgcolor="#dddddd">
					<tr>
						<th>商品编号</th>
						<th>商品名称</th>
						<th>商品图片</th>
						<th>商品价格</th>
						<th>去看看</th>
					</tr>
					<tr>
						<td colspan="5" height="15px"
							style="border: 0 none; background: #FFF"></td>
					</tr>
						<c:forEach items="${goodsList}" var="goods">
							<tr>
							<td bgcolor="#ffffff" align="center">${i=i+1}</td>
							<td bgcolor="#ffffff" align="center">${goods.goodsname}</td>
							<td align="center" bgcolor="#ffffff" height="60px"><img
								style="width: 50px; height: 50px;"
								src="/shop2/${goods.goodspicture}" border="0" title="水果1" />
							</td>
							<td align="center" bgcolor="#ffffff">${goods.goodscurrent}</td>
							<td align="center" bgcolor="#ffffff"><a
								style="text-decoration: none;" class="f6"
								href="<%=basePath %>user/goodsDetail?goodsid=${goods.goodsid}">去看看</a>
							</td>
						</tr>
						</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
