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
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<link href="<%=basePath %>css/before/daohang.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/common.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/before/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	//刷新验证码
	function refreshCode(){
		document.getElementById("code").src = "validateCode?" + Math.random();
    }
	//表单验证
	function checkForm(){
		var th = document.form;
		var regpostbox = new RegExp(/^([a-zA-Z0-9._-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/);
		if (th.useremail.value == ""){
			alert("请填写E-mail!");
			return false;
		}
		if (!regpostbox.test(th.useremail.value)) {
			alert("E-mail格式错误！");
			return false;
		}
		if(th.userpwd.value == ""){
			alert("请填写密码！");
			return false;
		}
		if(th.userpwd.value != th.rebpwd.value){
			alert("两次密码不一致！");
			return false;
		}
		if(th.code.value == ""){
			alert("请填写验证码！");
			return false;
		}
		th.submit();
		return true;
	}
	window.onload = function() {
		var msg="${msg}";
		if(msg!=""&&msg!=null){
			alert(msg);
		}
		changeCode();
	}
	function changeCode() {
        $("#code").attr("src", "<%=basePath %>user/checkCode?t="+Math.random());
    }
    function openFace() {
    	document.getElementById("face").src="<%=basePath %>jsp/before/facerigister.jsp";
    }
</script>
</head>
<body>
 <iframe src="<%=basePath %>jsp/before/head.jsp" width="100%"> </iframe>
	<div class="clearfix">
		<div class="blank20"></div>
		<div class="box4">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="100%" valign="bottom">
						<h2>普通会员注册</h2>
					</td>
				</tr>
			</table>
		</div>
		<div class="blank10"></div>
		<div class="box4">
			<div class="case_ll clearfix">
				<div class="regist">
					<form name="form" action="<%=basePath %>user/userRegister" method="post"  name="registerForm">
						<table width="100%" border="0" cellspacing="0" cellpadding="0"
							class="ttbb2">
							<tr>
								<td width="16%" align="right"><span class="cl_f30">*</span>
									E-mail：</td>
								<td width="46%" colspan="3"><input type="text" name="useremail"
									id="textfield" class="my_txt_350" value="" /></td>
								<td width="38%" rowspan="10" valign="top">
									<a href="#" onclick="openFace()">录入人脸</a>
									<iframe id="face" name="face" src="" frameBorder="0" scrolling="no" width="100%" height="260px"></iframe>
								</td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td colspan="3" style="font-size: 12px; padding-bottom: 25px;">
									提示：。。。</td>
							</tr>
							<tr>
								<td align="right"><span class="cl_f30">*</span> 密码：</td>
								<td colspan="3"><input type="password" name="userpwd" id="textfield2"
									class="my_txt_350" /></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td colspan="3" style="font-size: 12px; padding-bottom: 25px;">
									提示：。。。</td>
							</tr>
							<tr>
								<td align="right"><span class="cl_f30">*</span> 重复密码：</td>
								<td colspan="3"><input type="password" name="rebpwd" id="textfield3"
									class="my_txt_350" /></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td colspan="3" style="font-size: 12px; padding-bottom: 25px;">
									（确保您记住密码。）</td>
							</tr>				
							<tr>
								<td align="right"><span class="cl_f30">*</span> 验证码：</td>
								<td class="ared">
									<input type="text" name="code" id="textfield5" class="my_txt_120" />
								</td>
								<td  class="ared" style="width:100px;height:35px;">
									<a href="#" onclick="changeCode()">
										<font color="blue">看不清，换一个！</font></a>
								</td>
								<td style="width:50px">
									<img id="code" src=""/>
								</td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td colspan="2" class="cl_f30" style="font-size: 12px; padding-bottom: 25px;"></td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td height="50"><input type="button" name="button" id="button" onclick="checkForm()" value="注册账号" class="my_ann1" /></td>
								<td>&nbsp;</td>
							</tr>
						</table>
					</form>
					<div class="blank20"></div>
				</div>
			</div>
		</div>
		<div class="blank10"></div>
	</div>
</body>
</html>
