<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
	<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
<script type="text/javascript" src="${APP_PATH }/js/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
$(function(){
	selectAll();
	upFile();
});
function selectAll(){
	$.ajax({
		url:"indexs",
		type:"POST",
		success:function(result){ 
			console.log(result);
		},
	error:function(e){
		alert("error:"+e);
	}
	});
}
function upFile(){
	alert("进来了");
	$.ajax({
		url:'document/select_video',
		type:'POST',
		success:function(result){
			alert(result);  //图片名称
			$("#docu_video").attr("src","/ZhiJun_dev/video/"+result);
		} 
	})
}
</script>
</head>
<body>
sdsd
</body>
</html>