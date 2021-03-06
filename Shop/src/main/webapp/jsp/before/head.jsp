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
<title>首页</title>
<link href="<%=basePath %>css/before/daohang.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/common.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/style.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
	function clearValue(){
		document.myForm.username.value = "";
	}
	/* $(function() {
		$("li").click(function() {
			$('li').each(function(){
				$(this).removeClass("");
			});
		});
	}) */
</script>
</head>
<body>
	<div class="all_zong">
		<!--最上面 灰色条部分-->
		<div class="all_zong_top">
			<div class="all_zong_top_right a8c">
				<table border="0" cellspacing="0" cellpadding="0" class="main_login">
					<tr>
						<td>
							<p id="content">
								<a href="<%=basePath %>user/login" target="_top">登录</a>
							</p>
						</td>
						<td>
							<p id="content">
								<a href="<%=basePath %>user/facelogin" target="_top">人脸登录</a>
							</p>
						</td>
						<td>
							<p>
								<a href="<%=basePath %>user/register" target="_top">注册</a>
							</p>
						</td>
						<td><span class="xx">|</span><a href="userCenter.jsp" target="_top">用户中心</a><span
							class="xx">|</span></td>
						<!-- 没有登录 -->
						<td><a href="<%=basePath %>doLogout" target="_top">退出</a><span
							class="xx">|</span></td>
					</tr>
				</table>
			</div>
		</div>
		<!--end-->
		<!--logo 搜索-->
		<div class="all_zong_logo">
			<div class="all_zong_logo2">
				<img src="<%=basePath %>images/before/mylogo.png" />
			</div>
			<div class="back_search">
				<div class="back_search_red">
					<form action="<%=basePath %>user/searchGoods" name="myForm" method="post" target="_top">
						<div class="div2">
							<input type="text" name="username" class="txt" value="请输入您要查询的内容"  onfocus="clearValue()" />
						</div>
						<div class="div1">
							<input type="submit" class="an"  value="搜索" />
						</div>
					</form>
				</div>
			</div>
			<!--end-->
		</div>
		<!--红色 导航-->
		<div class="skin_a">
			<div class="front_daohangbj">
				<div class="all_zong">
					<div class="front_daohang">
						<ul>
							<li class="backbj"><a href="<%=basePath %>user/index" target="_top">首页</a></li>
							<!-- 显示商品类型 -->
							<c:forEach items="${typeList}" var="type">
								<li><a href="<%=basePath %>user/showGoodsList?typeid=${type.typeid}" target="_top">${type.typename}</a></li>
							</c:forEach>
							<li class="buy">
								<p class="car">
									<a href="<%=basePath %>user/goShopCart?userid=${uid}" target="_top">购物车</a>
								</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--红色 导航 end-->
	</div>
</body>
</html>
