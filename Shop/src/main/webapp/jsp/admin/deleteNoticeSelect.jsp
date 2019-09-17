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
    <title>deleteNoticeSelect.jsp</title>
	<link href="<%=basePath %>css/admin/common.css" type="text/css" rel="stylesheet">
	<style type="text/css">
		table{
			text-align: center;
			border-collapse: collapse;
		}
		.bgcolor{
		  	background-color: #F08080;
		}
	</style>
	<script type="text/javascript">
		function changeColor(obj){
			obj.className = "bgcolor";
		}
		function changeColor1(obj){
			obj.className = "";
		}
	</script>
	<script type="text/javascript">
  		function checkDel(id){
  			if(window.confirm("真的删除？")){
  				window.location.href = "/ch20/adminNotice/deleteNotice?id="+id;
  			}
  		}
  </script>
</head>
<body>
		<table border="1" bordercolor="PaleGreen">
			<tr>
				<th width="200px">ID</th>
				<th width="200px">标题</th>
				<th width="200px">时间</th>
				<th width="100px">详情</th>
				<th width="100px">删除</th>
			</tr>
			<c:forEach items="${noticeList}" var="notice">
			<tr>
				<td>${notice.noticeid}</td>
				<td>${notice.noticetitle}</td>
				<td>${notice.noticecontent}</td>
				<td>${notice.noticetime}</td>
				<td>
				<a href="<%=basePath %>admin/deleteNotice?noticeid=${notice.noticeid}">删除</a>
				</td>
			</tr>
		</c:forEach>
		</table>
</body>
</html>