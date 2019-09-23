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
<title>订单完成</title>
<link href="<%=basePath %>css/before/daohang.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/common.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript">
			//确定按钮
			function gogo(){
				document.payForm.submit();
			}
		</script>
  </head>
  <body>
  	<iframe src="<%=basePath %>jsp/before/head.jsp" width="100%"> </iframe>
  	<div class="blank"></div>
	<div class="block clearfix"><!--当前位置-->
	<div class="location ared">当前位置：<a href="index.jsp">首页</a> > 购物流程 > 生成订单</div>
	<div class="blank"></div>
	<div class="nFlowBox">
    <h2 style="text-align:center; height:30px; line-height:30px;">感谢您在本站购物！您的订单已提交成功，
         	请记住您的订单号: <font style="color:red" size='5'>8</font></h2><br/>
      <center>
      <form action="paydone.jsp" method="post" name="payForm">
            	<input type="hidden" name="ordersn" value="8"/>
            	<input type="image" src="<%=basePath %>images/before/Chinapay_logo.jpg" onclick="gogo()"/>
      </form>
      </center>
    </div>
    </div>
  </body>
</html>
