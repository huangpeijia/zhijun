<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored ="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	$.ajax({
		url:'document/select_video',
		type:'POST',
		success:function(result){ 
			$("#docu_video").attr("src","/ZhiJun_dev/video/"+result);
		} 
	})
}
</script>
</head>
<body>
<h1>${video_path}</h1>
<c:forEach items="${requestScope.pro}" var="p">
<span>${p.pro_id}</span>
</c:forEach>
asa
</body>
</html>