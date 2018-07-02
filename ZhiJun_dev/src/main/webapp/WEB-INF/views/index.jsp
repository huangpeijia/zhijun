<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index Login Page</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<script type="text/javascript" src="${APP_PATH }/js/jquery-3.2.1.js"></script>
<script type="text/javascript"
	src="${APP_PATH }/js/bootstrap/js/bootstrap.min.js"></script>
<link type="text/css"
	href="${APP_PATH }/js/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
#loginModel{
width:400px;
height:200px;
margin:0px auto;/*居中 这个是必须的*/
padding:40px 0px 0px 0px;
}
body{text-align:center;} 
button{margin:0px 30px;}
</style>
</head>
<body>
	<h1>学生登陆系统</h1>
	<div id="loginModel">
		<form id="myloginForm" action="home" method="post" class="form-horizontal">
			<div class="form-group">
				<label class="col-sm-3 control-label">登陆名称</label>
				<div class="col-sm-9">
					<input type="text" class="form-control"
						id="username" name="username" placeholder="登陆名称，必填" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">登陆密码</label>
				<div class="col-sm-9">
					<input type="password" class="form-control"
						id="userpassword" name="userpassword" placeholder="登陆密码，必填" />
				</div>
			</div>
			<button type="button" id="loginBtn" class="btn btn-primary btn-lg">登陆</button>
			<button type="reset" id="resetBtn" class="btn btn-warning btn-lg">重置</button>
		</form>
	</div>
<script type="text/javascript">
	$(document).on("click","#loginBtn",function(){
		var username = $("#username").val();
		var userpassword = $("#userpassword").val();
		if(username == ""){
			alert("用户名不能为空!");
		}else if(userpassword==""){
			alert("用户密码不能为空!");
		}else if(userpassword.length < 6){
			alert("用户密码长度不能小于6位!");
			$("#userpassword").val("");
		}else{
			alert("我提交了!")
			$("#myloginForm").submit();
		}
	});
</script>
</body>
</html>