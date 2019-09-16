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
<title>支付完成完成</title>
<link href="<%=basePath %>css/before/daohang.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/common.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/style.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
   <iframe src="<%=basePath %>jsp/before/head.jsp" width="100%"> </iframe>
  	<div class="blank"></div>
	<div class="block clearfix"><!--当前位置-->
	<div class="location ared">当前位置：<a href="index.jsp">首页</a> > 购物流程 > 支付完成</div>
	<div class="blank"></div>
	<div class="nFlowBox">
    <h2 style="text-align:center; height:30px; line-height:30px;">感谢您在本站购物！已成功支付！</h2>
    </div>
    </div>
  </body>
</html>
