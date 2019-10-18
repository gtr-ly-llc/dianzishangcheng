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
<iframe src="<%=basePath %>jsp/before/head.jsp" width="100%"> </iframe>
	<form action="<%=basePath %>user/addToCart" name="putcartform" method="post">
		<input type="text" style="display:none" name="userid" value="${uid}">
		<input type="text" style="display:none" name="goodsid" value="${goods.goodsid}">
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
						src="/shop2/${goods.goodspicture}"
						width="230px" height="230px" />
				</div>
			</div>
			<!--商品表述-->	
			<div class="goods_desc">
				<div class="bt">
					${goods.goodsname}
				</div>
				<div class="goods_show">
					<ul>
						<li><span>价格:</span> <strong class="yj">${goods.goodsoriginal}</strong></li>
						<li><span>折扣价:</span><strong
							class="xj">${goods.goodscurrent}</strong>
						</li>
						<li><span>类型:</span>${goods.typename}</li>
						<li><span>购买数量:</span><input type="text" name="buynumber"
							class="good_txt" value="1" /> (库存${goods.goodsstock}件)</li>
					</ul>
				</div>
				<p class="bottom10 top5">
					<img src="<%=basePath %>images/before/goods_ann2.gif" style="cursor: pointer"
						onclick="goCart()" />
						
						
						&nbsp;&nbsp;<input type="button"
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
