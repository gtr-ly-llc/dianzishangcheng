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
<title>商品详情</title>
<link href="<%=basePath %>css/before/daohang.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/common.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function goCart() {
		document.putcartform.submit();
	}
	function gofocus() {
		window.location.href = "goodsdetail.jsp" ;
	}
</script>
</head>
<body>
<iframe src="head.jsp" width="100%"> </iframe>
	<form action="cart.jsp" name="putcartform" method="post">
		<div class="blank"></div>
		<div class="block clearfix">
			<div class="location ared">
				当前位置：<a href="#">首页</a> > <a href="#">商品详情</a>
			</div>
			<div class="blank"></div>
			<div id="goodsInfo">
				<div class="imgInfo">
					<input type="hidden" name="id"
						value="1"/><img
						src="<%=basePath %>images/before/103.jpg"
						width="230px" height="230px" />
				</div>
			</div>
			<!--商品表述-->	
			<div class="goods_desc">
				<div class="bt">
					水果1
				</div>
				<div class="goods_show">
					<ul>
						<li><span>价格:</span> <strong class="yj">12元</strong></li>
						<li><span>折扣价:</span><strong
							class="xj">10元</strong>
						</li>
						<li><span>类型:</span>水果</li>
						<li><span>购买数量:</span><input type="text" name="shoppingnum"
							class="good_txt" value="1" /> (库存200件)</li>
					</ul>
				</div>
				<p class="bottom10 top5">
					<img src="<%=basePath %>images/before/goods_ann2.gif" style="cursor: pointer"
						onclick="goCart()" />&nbsp;&nbsp;<input type="button"
						style="cursor: pointer" class="sh_bnt2"
						onclick="gofocus('1')"
						value="关注" />
				</p>
			</div>
			<!--end-->
			</div>  
	</form>
</body>
</html>
