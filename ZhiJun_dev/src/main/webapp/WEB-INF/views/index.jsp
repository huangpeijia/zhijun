<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>管理登录</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!-- Fonts -->
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
    
<!-- CSS Libs -->
<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/lib/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/lib/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/lib/css/animate.min.css">
<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/lib/css/bootstrap-switch.min.css">
<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/lib/css/checkbox3.min.css">
<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/lib/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/lib/css/dataTables.bootstrap.css">
<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/lib/css/select2.min.css">

<!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="${APP_PATH }/js/css/style.css">
    <link rel="stylesheet" type="text/css" href="${APP_PATH }/js/css/themes/flat-blue.css">
   
   <style type="text/css">
   .body_bg{
      background-color:#91d5fb;
   }
   .div_um1{
       background-color:rgba(255,255,255,0.2);
   }
		.red{border:2px solid red;}
		.orange{border:2px solid orange;}
		.yellow{border:2px solid yellow;}
		.green{border:2px solid green;}
		.blue{border:2px solid blue;}
		.indigo{border:2px solid indigo}
		.purple{border:2px solid purple;}
	</style> 
</head>

<body class="flat-blue login-page" style="background-color:#91d5fb;">
    <div class="container">
        <div class="login-box">
            <div>
                <div class="login-form row">
                    <div class="col-sm-12 text-center login-header">
                        <i class="login-logo fa fa-connectdevelop fa-5x"></i>
                        <h4 class="login-title">管理登录</h4>
                    </div>
                    <div class="col-sm-12" style="background-color:rgba(255,255,255,0.2);border-radius:10px">
                        <div class="login-body" style="background-color:transparent">
                            <div class="progress hidden" id="login-progress">
                                <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                    Log In...
                                </div>
                            </div>
                            <form id="myloginForm" action="${APP_PATH }/admin/home" method="post" class="form-horizontal" style="background-color:transparent">
                                <div class="control">
                                    <input type="text" class="form-control" id="username" name="username" placeholder="用户名" />
                                </div>
                                <div class="control">
                                    <input type="password" class="form-control" id="userpassword" name="userpassword" placeholder="密码"/>
                                </div>
                                <div class="login-button text-center">
                                    <button type="button" class="btn btn-primary btn-lg" id="loginBtn">登录</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Javascript Libs -->
    <script type="text/javascript" src="${APP_PATH }/js/lib/js/jquery.min.js"></script>
    <script type="text/javascript" src="${APP_PATH }/js/lib/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${APP_PATH }/js/lib/js/Chart.min.js"></script>
    <script type="text/javascript" src="${APP_PATH }/js/lib/js/bootstrap-switch.min.js"></script>
    
    <script type="text/javascript" src="${APP_PATH }/js/lib/js/jquery.matchHeight-min.js"></script>
    <script type="text/javascript" src="${APP_PATH }/js/lib/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${APP_PATH }/js/lib/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="${APP_PATH }/js/lib/js/select2.full.min.js"></script>
    <script type="text/javascript" src="${APP_PATH }/js/lib/js/ace/ace.js"></script>
    <script type="text/javascript" src="${APP_PATH }/js/lib/js/ace/mode-html.js"></script>
    <script type="text/javascript" src="${APP_PATH }/js/lib/js/ace/theme-github.js"></script>
    <script type="text/javascript" src="${APP_PATH }/js/jquery-3.2.1.js"></script>
    <!-- Javascript -->
    <script type="text/javascript" src="${APP_PATH }/js/js/app.js"></script>
    
    <script type="text/javascript">
        $(document).on("click","#loginBtn",function(){
        	var username = $("username").val();
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
