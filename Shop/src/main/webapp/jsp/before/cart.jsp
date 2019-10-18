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
<title>购物车</title>
<link href="<%=basePath %>css/before/daohang.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/common.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/style.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<style>
        .hide{
            display: none;
        }
        .c1{
            position: fixed;
            top:0;
            bottom: 0;
            left:0;
            right: 0;
            background: rgba(0,0,0,.5);
            z-index: 2;
        }
        .c2{
            background-color: white;
            position: fixed;
            width: 250px;
            height: 200px;
            top:50%;
            left: 50%;
            z-index: 3;
            margin-top: -150px;
            margin-left: -125px;
        }
		#modal p {
			margin-top: 20px;
			margin-left:20px;
		}
    </style>
<script type="text/javascript">
window.onload = function() {
	var msg="${msg}";
	if(msg!=""&&msg!=null){
		alert(msg);
	}
}
	//清空
	function godelete(){
		if(window.confirm("真的清空购物车吗？")){
			window.location.href="<%=basePath %>user/deleteFromCart?userid=${uid}&goodsid=0";
			return true;
		}
		return false;
	}
	//删除
	function deleteAgoods(goodsid){
		if(window.confirm("真的删除该商品吗？")){
			window.location.href="<%=basePath %>user/deleteFromCart?userid=${uid}&goodsid="+goodsid;
			return true;
		}
		return false;
	}
	function inspectBuyNumber(goodsid,buynumber,num,goodsstock){
		//alert(goodsid+buynumber);
		//if(buynumber<0){
			
		//}
		saveBuyNumber(goodsid,buynumber);
	}
	function saveBuyNumber(goodsid,buynumber){
		$.ajax({
			url:"http://localhost:8080/Shop/user/saveBuyNumber",
			data:{userid:"${uid}",goodsid:goodsid,buynumber:buynumber},
			async:false,
			type:"POST",
			dataType:"text/html",
			success:function(){
				//alert(JSON.stringify(data))
				//var back=data.responseText;
				return;
			},error:function(){
				return;
			}
		});
	}
</script>
</head>
<body>
	<iframe src="<%=basePath %>jsp/before/head.jsp" width="100%"> </iframe>
	<div class="blank"></div>
	<div class="block clearfix">
		<!--当前位置-->
		<div class="location ared">
			当前位置： <a href="index.jsp">首页</a> > 购物流程 > 购物车
		</div>
		<div class="blank"></div>
		<div>
			<div class="nFlowBox">
			<form action="<%=basePath %>user/goPlaceOrder" name="goPlaceOrder" method="post">
				<table width="99%" align="center" border="0" cellpadding="5"
					cellspacing="1" bgcolor="#dddddd">
					<tr>
						<th>商品信息</th>
						<th>单价（元）</th>
						<th>数量</th>
						<th>小计</th>
						<th>操作</th>
					</tr>
					<tr>
						<td colspan="5" height="15px"
							style="border: 0 none; background: #FFF">
							<input type="text" style="display:none" value="${money=0}"/>
							</td>
					</tr> 
					<c:forEach items="${cartList}" var="cart">
						<tr>
							<td bgcolor="#ffffff" align="center">
							<input type="checkbox" name="shopcartid" id="shopcartid" value="${cart.shopcartid}" checked>
							<a href="goodsDetail.jsp"> <img
									style="width: 100px; height: 100px;"
									src="/shop2/${cart.goods.goodspicture}" border="0"
									title="水果2" />
							</a>
							<input type="text" style="display:none" value="${money=money+cart.buynumber*cart.goods.goodscurrent}"/>
							<%-- <input type="text" style="display:none" name="goodid" value="${cart.goods.goodsid}"/> --%>
							<br/><a style="text-decoration: none;" href="goodsDetail.jsp" class="f6">${cart.goods.goodsname}</a></td>
							<td bgcolor="#ffffff" width="110px" align="center"><span>${cart.goods.goodscurrent}</span></td>
							<td align="center" bgcolor="#ffffff" width="115px"
								valign="middle"><input type="text" name="goods_number"
								value="${cart.buynumber}" size="4"
								class="inputBg"
								style="text-align: center; width: 36px; color: #999999" onblur="inspectBuyNumber('${cart.goods.goodsid}',this.value,'${cart.buynumber}','${goods.goodsstock}')"/>
								<%-- <input type="button" value="点我" onclick="Show('${cart.goods.goodsid}',this.value,'${cart.buynumber}','${goods.goodsstock}');"> --%>
								</td>
							<td align="center" bgcolor="#ffffff" width="115px">￥&nbsp;<span>${cart.buynumber*cart.goods.goodscurrent}</span>&nbsp;
							</td>
							<td align="center" bgcolor="#ffffff" width="185px"><a
								style="text-decoration: none;" href="javaScript:deleteAgoods('${cart.goods.goodsid}')"
								class="f6" title="删除"><img src="<%=basePath %>images/before/sc.png" />
							</a></td>
						</tr>
					</c:forEach>
					<tr>
						<td align="right" bgcolor="#ffffff" colspan="4" height="41px;"
							style="border-left: 0 none;"><font
							style="color: #a60401; font-size: 13px; font-weight: bold; letter-spacing: 0px;">
								购物金额总计(不含运费) ￥&nbsp;<span id="stotal"></span>
							${money}元
						</font></td>
						<td align="center" bgcolor="#ffffff"><input type="button"
							value="清空购物车" onclick="godelete()" class="bnt_blue_1" id="bnt11" />
						</td>
					</tr>
					<tr>
						<td bgcolor="#ffffff" colspan="4" align="right"
							style="padding: 5px; padding-left: 2px; border-right: 0 none">
							<a href="<%=basePath %>user/index"> <img src="<%=basePath %>images/before/jxgw.jpg" alt="continue" />
						</a>
						</td>
						<td bgcolor="#ffffff" align="center"
							style="border-left: 0 none; padding: 5px; padding-right: 2px;">
							<a style="cursor: pointer;" href="#" onclick="document:goPlaceOrder.submit()">
								<img src="<%=basePath %>images/before/qjs.jpg" alt="checkout" />
						</a>
						</td>
					</tr>
				</table>
				</form>
			</div>
		</div>
	</div>
	
<!-- <div id="shade" class="c1 hide"></div>
<div id="modal" class="c2 hide">
	<h3>修改商品数量</h3>
    <p>数量：<input type="text" id="num"/></p>
<p>
    <input type="button" value="确定" style="margin-right:60px">
    <input type="button" value="取消" onclick="Hide();">
</p>
    </div>
 
<script>
    function Show(goodsid,buynumber,bnum,goodsstock){
    	document.getElementById('num').value=bnum;
        document.getElementById('shade').classList.remove('hide');
        document.getElementById('modal').classList.remove('hide');
    }
     function Hide(){
        document.getElementById('shade').classList.add('hide');
        document.getElementById('modal').classList.add('hide');
    }
</script> -->
</body>
</html>
