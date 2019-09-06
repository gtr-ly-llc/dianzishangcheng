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
<title>搜索结果</title>
<link href="<%=basePath %>css/before/daohang.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/common.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
 <iframe src="head.jsp" width="100%"> </iframe>
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
						<tr>
							<td bgcolor="#ffffff" align="center">1</td>
							<td bgcolor="#ffffff" align="center">水果1</td>
							<td align="center" bgcolor="#ffffff" height="60px"><img
								style="width: 50px; height: 50px;"
								src="<%=basePath %>images/before/103.jpg" border="0" title="水果1" />
							</td>
							<td align="center" bgcolor="#ffffff">10</td>
							<td align="center" bgcolor="#ffffff"><a
								style="text-decoration: none;" class="f6"
								href="goodsDetail.jsp">去看看</a></td>
						</tr>
						<tr>
							<td bgcolor="#ffffff" align="center">1</td>
							<td bgcolor="#ffffff" align="center">水果1</td>
							<td align="center" bgcolor="#ffffff" height="60px"><img
								style="width: 50px; height: 50px;"
								src="<%=basePath %>images/before/103.jpg" border="0" title="水果1" />
							</td>
							<td align="center" bgcolor="#ffffff">10</td>
							<td align="center" bgcolor="#ffffff"><a
								style="text-decoration: none;" class="f6"
								href="goodsDetail.jsp">去看看</a></td>
						</tr>
						<tr>
							<td bgcolor="#ffffff" align="center">1</td>
							<td bgcolor="#ffffff" align="center">水果1</td>
							<td align="center" bgcolor="#ffffff" height="60px"><img
								style="width: 50px; height: 50px;"
								src="<%=basePath %>images/before/103.jpg" border="0" title="水果1" />
							</td>
							<td align="center" bgcolor="#ffffff">10</td>
							<td align="center" bgcolor="#ffffff"><a
								style="text-decoration: none;" class="f6"
								href="goodsDetail.jsp">去看看</a></td>
						</tr>
						<tr>
							<td bgcolor="#ffffff" align="center">1</td>
							<td bgcolor="#ffffff" align="center">水果1</td>
							<td align="center" bgcolor="#ffffff" height="60px"><img
								style="width: 50px; height: 50px;"
								src="<%=basePath %>images/before/103.jpg" border="0" title="水果1" />
							</td>
							<td align="center" bgcolor="#ffffff">10</td>
							<td align="center" bgcolor="#ffffff"><a
								style="text-decoration: none;" class="f6"
								href="goodsDetail.jsp">去看看</a></td>
						</tr>
						<tr>
							<td bgcolor="#ffffff" align="center">1</td>
							<td bgcolor="#ffffff" align="center">水果1</td>
							<td align="center" bgcolor="#ffffff" height="60px"><img
								style="width: 50px; height: 50px;"
								src="<%=basePath %>images/before/103.jpg" border="0" title="水果1" />
							</td>
							<td align="center" bgcolor="#ffffff">10</td>
							<td align="center" bgcolor="#ffffff"><a
								style="text-decoration: none;" class="f6"
								href="goodsDetail.jsp">去看看</a></td>
						</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
