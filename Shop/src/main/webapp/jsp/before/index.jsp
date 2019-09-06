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
	<div class="blank"></div>
	<div class="block clearfix">
		<div class="AreaL">
			<!--销售排行-->
			<div class="box">
				<div class="box_2">
					<div class="top10Tit">
						<span>销售排行</span>
					</div>
					<div class="top10List clearfix">
							<ul class="clearfix">
								<li class="topimg">
								<img class="iteration" src="<%=basePath %>images/before/top_1.gif" />
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp"> 
									<img class="samllimg" alt="" src="<%=basePath %>images/before/103.jpg" /></a></li>
								<li class="iteration1">
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a><br />
								 售价：<font class="f1">￥10元</font><br /></li>
							</ul>
							<ul class="clearfix">
								<li class="topimg">
								<img class="iteration" src="<%=basePath %>images/before/top_2.gif" />
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp"> 
									<img class="samllimg" alt="" src="<%=basePath %>images/before/103.jpg" /></a></li>
								<li class="iteration1">
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a><br />
								 售价：<font class="f1">￥10元</font><br /></li>
							</ul>
							<ul class="clearfix">
								<li class="topimg">
								<img class="iteration" src="<%=basePath %>images/before/top_3.gif" />
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp"> 
									<img class="samllimg" alt="" src="<%=basePath %>images/before/103.jpg" /></a></li>
								<li class="iteration1">
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a><br />
								 售价：<font class="f1">￥10元</font><br /></li>
							</ul>
							<ul class="clearfix">
								<li class="topimg">
								<img class="iteration" src="<%=basePath %>images/before/top_4.gif" />
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp"> 
									<img class="samllimg" alt="" src="<%=basePath %>images/before/103.jpg" /></a></li>
								<li class="iteration1">
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a><br />
								 售价：<font class="f1">￥10元</font><br /></li>
							</ul>
														<ul class="clearfix">
								<li class="topimg">
								<img class="iteration" src="<%=basePath %>images/before/top_1.gif" />
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp"> 
									<img class="samllimg" alt="" src="<%=basePath %>images/before/103.jpg" /></a></li>
								<li class="iteration1">
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a><br />
								 售价：<font class="f1">￥10元</font><br /></li>
							</ul>
					</div>
				</div>
			</div>
			<!--销售排行 end -->
			<!--人气排行-->
			<div class="blank5"></div>
			<div class="box">
				<div class="box_2">
					<div class="top10Tit">
						<span>人气排行</span>
					</div>
					<div class="top10List clearfix">
						<ul class="clearfix">
								<li class="topimg">
								<img class="iteration" src="<%=basePath %>images/before/top_1.gif" />
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp"> 
									<img class="samllimg" alt="" src="<%=basePath %>images/before/103.jpg" /></a></li>
								<li class="iteration1">
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a><br />
								 售价：<font class="f1">￥10元</font><br /></li>
							</ul>
							<ul class="clearfix">
								<li class="topimg">
								<img class="iteration" src="<%=basePath %>images/before/top_2.gif" />
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp"> 
									<img class="samllimg" alt="" src="<%=basePath %>images/before/103.jpg" /></a></li>
								<li class="iteration1">
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a><br />
								 售价：<font class="f1">￥10元</font><br /></li>
							</ul>
							<ul class="clearfix">
								<li class="topimg">
								<img class="iteration" src="<%=basePath %>images/before/top_3.gif" />
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp"> 
									<img class="samllimg" alt="" src="<%=basePath %>images/before/103.jpg" /></a></li>
								<li class="iteration1">
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a><br />
								 售价：<font class="f1">￥10元</font><br /></li>
							</ul>
							<ul class="clearfix">
								<li class="topimg">
								<img class="iteration" src="<%=basePath %>images/before/top_4.gif" />
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp"> 
									<img class="samllimg" alt="" src="<%=basePath %>images/before/103.jpg" /></a></li>
								<li class="iteration1">
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a><br />
								 售价：<font class="f1">￥10元</font><br /></li>
							</ul>
														<ul class="clearfix">
								<li class="topimg">
								<img class="iteration" src="<%=basePath %>images/before/top_1.gif" />
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp"> 
									<img class="samllimg" alt="" src="<%=basePath %>images/before/103.jpg" /></a></li>
								<li class="iteration1">
								<a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a><br />
								 售价：<font class="f1">￥10元</font><br /></li>
							</ul>
					</div>
				</div>
			</div>
			<!--人气排行 end -->
		</div>
		<div class="AreaR">
			<div class="AreaR">
				<div class="AreaM clearfix">
					<div id="focus">
						<img src="<%=basePath %>images/before/540.jpg" />
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
									<li><a href="javascript:openNotice('noticeDetail.jsp');">公告1</a></li>
									<li><a href="javascript:openNotice('noticeDetail.jsp');">公告2</a></li>
									<li><a href="javascript:openNotice('noticeDetail.jsp');">公告3</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!--公告栏 end-->
				</div>
			</div>
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
									<li>
										<div>
											<p class="pic">
												<a href="<%=basePath %>jsp/before/goodsDetail.jsp">
												<img src="<%=basePath %>images/before/103.jpg" /></a>
											</p>
											<p class="wz">
												<strong><a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a></strong>
												<em>现价:<span>￥10</span></em>
											</p>
										</div>
									</li>
									<li>
										<div>
											<p class="pic">
												<a href="<%=basePath %>jsp/before/goodsDetail.jsp">
												<img src="<%=basePath %>images/before/103.jpg" /></a>
											</p>
											<p class="wz">
												<strong><a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a></strong>
												<em>现价:<span>￥10</span></em>
											</p>
										</div>
									</li>
									<li>
										<div>
											<p class="pic">
												<a href="<%=basePath %>jsp/before/goodsDetail.jsp">
												<img src="<%=basePath %>images/before/103.jpg" /></a>
											</p>
											<p class="wz">
												<strong><a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a></strong>
												<em>现价:<span>￥10</span></em>
											</p>
										</div>
									</li>
									<li>
										<div>
											<p class="pic">
												<a href="<%=basePath %>jsp/before/goodsDetail.jsp">
												<img src="<%=basePath %>images/before/103.jpg" /></a>
											</p>
											<p class="wz">
												<strong><a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a></strong>
												<em>现价:<span>￥10</span></em>
											</p>
										</div>
									</li>
									<li>
										<div>
											<p class="pic">
												<a href="<%=basePath %>jsp/before/goodsDetail.jsp">
												<img src="<%=basePath %>images/before/103.jpg" /></a>
											</p>
											<p class="wz">
												<strong><a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a></strong>
												<em>现价:<span>￥10</span></em>
											</p>
										</div>
									</li>
									<li>
										<div>
											<p class="pic">
												<a href="<%=basePath %>jsp/before/goodsDetail.jsp">
												<img src="<%=basePath %>images/before/103.jpg" /></a>
											</p>
											<p class="wz">
												<strong><a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a></strong>
												<em>现价:<span>￥10</span></em>
											</p>
										</div>
									</li>
									<li>
										<div>
											<p class="pic">
												<a href="<%=basePath %>jsp/before/goodsDetail.jsp">
												<img src="<%=basePath %>images/before/103.jpg" /></a>
											</p>
											<p class="wz">
												<strong><a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a></strong>
												<em>现价:<span>￥10</span></em>
											</p>
										</div>
									</li>
									<li>
										<div>
											<p class="pic">
												<a href="<%=basePath %>jsp/before/goodsDetail.jsp">
												<img src="<%=basePath %>images/before/103.jpg" /></a>
											</p>
											<p class="wz">
												<strong><a href="<%=basePath %>jsp/before/goodsDetail.jsp">水果1</a></strong>
												<em>现价:<span>￥10</span></em>
											</p>
										</div>
									</li>
							</ul>
						</div>  
					</div>
				</div>
				<!--最新商品列表end-->
			</div>
		</div>
	</div>
</body>
</html>
