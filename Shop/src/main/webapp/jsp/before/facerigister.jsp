<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>demo01</title>

<script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
<script src="<%=basePath%>js/jquery-1.9.1.min.js"></script>
<style type="text/css">
.line {
	position: absolute;
	top: 300px;
	left: 8px;
	z-index: 2;
	height: 8px;
	width: 250px;
	opacity: 0.7 /* 标准的语法 */

    /*动画效果*/

    animation: myScan 3s infinite alternate;
	-webkit-animation: myScan 3s infinite alternate;
}

@
keyframes  myScan {from { top:8px;
	
}

to {
	top: 250px;
}

}
-webkit- @keyframes  myScan {from { top:5px;
	
}

to {
	top: 600px;
}

}
.box {
	background-image: url('<%=basePath%>images/face/bg2.jpg');
	width: 100%;
	height: 640px;
	background-size: 100%, 100%;
}

.video {
	width: 250px;
	height: 250px;
	margin: auto;
	position: absolute;
	z-index: 996;
}

.mark {
	position: fixed;
	opacity: .5;
	background-image: url('<%=basePath%>images/face/faceBorder.png');
	z-index: 997;
}

.mark1 {
	position: fixed;
	opacity: .5;
	background-image: url('<%=basePath%>images/face/line1.gif');
	z-index: 998;
}
</style>
</head>
<body>
	<!-- <div class="box">
<div class="right"> -->
	<div class="video">

		<div class="mark1 line"></div>
		<div class="mark video"></div>
		<video id="myVideo" style="object-fit: fill" src="" class="video"></video>

	</div>
	<canvas id="myCanvas" width="600" height="600" hidden="hidden"></canvas>
	<script>
  var myVideo = document.getElementById('myVideo');
  navigator.mediaDevices.getUserMedia({
    video: true
  }).then(function (mediaStream) {
    myVideo.srcObject = mediaStream;
    myVideo.onloadedmetadata = function () {
      /* myVideo.controls = "controls"; 不显示控件*/
      myVideo.play();
    }
  });
  setTimeout(jiance,1500);
 
 function jiance(){
	 var canvas = document.getElementById('myCanvas').getContext('2d');
	 canvas.drawImage(myVideo, 0, 0);
	    var imgSrc = document.getElementById("myCanvas").toDataURL(
		"images/face/png").split("base64,")[1];
	    $.ajax({
			type: "POST",
	        url:'<%=basePath%>addFace',
			data : {message:imgSrc},
			success : function(score) {
				//1、转化为JSON对象，var rsdata=JSON.parse(data);然后对比“1”==rsdata，结果为true。
				//2、直接在if判断里写“1”==eval(data)，结果也为true。
				var rsdata=typeof score=='string' ? JSON.stringify(score):score;
				//rsdata = rsdata.replace("\"","");
				if ("\"EXIST!\""==rsdata) {
					//clearInterval(id);
					window.location="<%=basePath%>jsp/before/userexist.jsp";
				} else {
					window.location="<%=basePath%>jsp/before/success.jsp";
				}
			}
		})
	}
		//var id = setInterval("jiance()", "8100"); //每隔一秒执行一次函数截图

		//将图片Base64 转成文件
	</script>
	<!-- <script type="text/javascript" color="120,148,255" opacity='0.8' zIndex="1" count="100" src="https://cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.js"></script> -->
	<div id="iframe"></div>
	<!--  </div>
 </div> -->
</body>
</html>