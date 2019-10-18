<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
 
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>demo01</title>
  
  <script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
  <script src="<%=basePath %>js/jquery-1.9.1.min.js"></script>
  <style type="text/css">
	.line{ 

    position: absolute; 

    top: 300px; left: -80px; 

    z-index: 2; 

    height: 15px; width: 300px; 

     background: linear-gradient(#33ffff, #66cccc,#99cccc); opacity: 0.7  /* 标准的语法 */

    /*动画效果*/

    animation: myScan 3s infinite alternate; 

    -webkit-animation: myScan 3s infinite alternate; 

}
@keyframes  myScan{

    from { top:5px; }

    to { top: 300px; }

}

-webkit-@keyframes  myScan{

    from { top:5px; }

    to { top: 600px; }

}
.box{background-image: url('<%=basePath %>images/face/bg2.jpg');width: 100%;height: 640px;background-size:100%, 100%;}
.video{width:250px;height:250px;margin:auto;background-image: url('<%=basePath %>images/face/faceBorder.png')}

</style>
</head>
<body>
<div class="box">
<div class="right">
<div class="video">

<!-- <div class="line"></div> -->

 <video id="myVideo" src="" class="video" ></video>

</div>
 <canvas id="myCanvas" width="600" height="400" hidden="hidden"></canvas>
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
 
 function jiance(){
	 var canvas = document.getElementById('myCanvas').getContext('2d');
	 canvas.drawImage(myVideo, 0, 0);
	    var imgSrc = document.getElementById("myCanvas").toDataURL(
		"image/png").split("base64,")[1];
	    $.ajax({
			type: "POST",
	        url:'<%=basePath %>loginServlet',
	        data:{
	            message:imgSrc
	        },
	      	success:function(result){
	      		var id = result.split("user_list")[1].split(",")[1].split(":")[1].split("\"")[1];
	      		var score = result.split("user_list")[1].split(",")[3].split(":")[1].split(".")[0];
	          	if(score>80){
	          		document.write("<form action='<%=basePath %>faceLogin' method='post' name='form1' style='display:none'>");
	          	    document.write("<input type='hidden' name='userid' value='"+id+"'/>");
	          	    document.write("</form>");
	          	    document.form1.submit();
	          		return;
	          	}
	          	return;
	        }
	    });
	}
 setInterval("jiance()","5100");  //每隔一秒执行一次函数截图
	

    //将图片Base64 转成文件
 </script>
 <script type="text/javascript" color="120,148,255" opacity='0.8' zIndex="1" count="100" src="https://cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.js"></script><!-- https://files.cnblogs.com/files/lfri/canvas-nest.js -->
 <div id="iframe">
 </div>
 </div>
 </div>
</body>
</html>