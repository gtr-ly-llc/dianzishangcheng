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
<title>订单确认</title>
<link href="<%=basePath %>css/before/daohang.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/common.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function submitorder(total){
		if(window.confirm("是否真的提交订单，提交后不可再修改订单信息！")){
			window.location.href="orderdone.jsp";
			return true;
		}
		return false;
	}
</script> 
</head>
 <iframe src="head.jsp" width="100%"> </iframe>
  <body>
	<div class="blank"></div>
	<div class="block clearfix"><!--当前位置-->
	<div class="location ared">当前位置：<a href="index.jsp">首页</a> > 购物流程 > 确认订单信息</div>
	<div class="blank"></div>
			<div class="nFlowBox">
   <form action="" method="post">
    <h6>商品列表</h6>
             <table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
            <tr>
              <th bgcolor="#ffffff">商品名称</th>
              <th bgcolor="#ffffff">市场价格</th>
              <th bgcolor="#ffffff">购买数量</th>
              <th bgcolor="#ffffff">小计</th>
            </tr> 
            <tr>
              <td bgcolor="#ffffff" align="center">
                  	水果1
              </td>
              <td align="center" bgcolor="#ffffff">10</td>
              <td align="center" bgcolor="#ffffff">
                5
              </td>
              <td align="center" bgcolor="#ffffff">￥&nbsp;50&nbsp;元 </td>
            </tr>
     		<tr>
              <td bgcolor="#ffffff" align="center">
                  	水果2
              </td>
              <td align="center" bgcolor="#ffffff">10</td>
              <td align="center" bgcolor="#ffffff">
                5
              </td>
              <td align="center" bgcolor="#ffffff">￥&nbsp;50&nbsp;元 </td>
            </tr>
       	  	<tr>
       	  		<td bgcolor="#ffffff" colspan="4" align="right">
       	 			应付款 
       	 			<font class="pricetype" size="5" color="red">￥&nbsp;100&nbsp;元</font>  	
              </td>
          </tr>   	
        </table>   
        <div align="center" style="margin:8px auto;">
       		 <img style="cursor:pointer;"  onclick="submitorder(100)" src="<%=basePath %>images/before/bnt_subOrder.gif" />
    	</div> 
    	<input type="hidden" name="goodsamount" value="20"/>
    </form>
</div>
</div>
</body>
</html>




