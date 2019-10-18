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
<script type="text/javascript">
		function openNotice(url){
			window.open (url, '站内公告', 'height=400, width=400, top=100, left=100, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=n o, status=no');
		}
</script>
</head>
<body>
	<iframe src="<%=basePath %>jsp/before/head.jsp" width="100%"> </iframe>
	<%-- <iframe src="<%=basePath %>jsp/before/head.jsp" name="main" width="100%"></iframe> --%>
 	<div class="blank"></div>
	<div class="block clearfix">
		<%--<div class="AreaL">
			<!--销售排行-->
			<div class="box">
				<div class="box_2">
					
				</div>
			</div>
			<!--销售排行 end -->
		</div>
		<div class="AreaR">
			<div class="AreaR">
				<div class="AreaM clearfix">
					<div id="focus">
						<img src="<%=basePath%>images/before/540.jpg" />
					</div>
				</div>
				<div class="AreaRR clearfix">
					<!--公告栏-->
					<div class="box">
						<div class="box_1">
							<div class="title_bt">
								<h3>公告栏</h3>
							</div>
							<div class="post_list ared">
								<ul>
									<c:forEach items="${noticeList}" var="notice">
										<li><a href="javascript:openNotice('noticeDetail.jsp');">${notice.noticetitle}</a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
					<!--公告栏 end-->
				</div>
			</div> --%>
			<div class="AreaR">
				<!--最新商品列表-->
				<div class="blank5"></div>
				<div class="box">
					<div class="box_color ared">
						<div class="title_bt">
							<span><a href="#">更多</a></span>
							<h3>最新商品</h3>
						</div>
						<div class="itemgood_nr clearfix">
							<ul>
								<c:forEach items="${goodsList}" var="newgoods">
									<li>
										<div>
											<input type="text" value="${k=k+1}" style="display:none"/>
											<p class="pic">
												<a href="<%=basePath %>user/goodsDetail?goodsid=${newgoods.goodsid}">
												<img src="/shop2/${newgoods.goodspicture}" /></a>
											</p>
											<p class="wz">
												<strong><a href="<%=basePath %>jsp/before/goodsDetail.jsp">${newgoods.goodsname}</a></strong>
												<em>原价:<span>${newgoods.goodsoriginal}</span></em>
												<em>现价:<span>${newgoods.goodscurrent}</span></em>
											</p>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>  
					</div>
				</div>
				<!--最新商品列表end-->
			</div>
		</div>
</body>
</html>
