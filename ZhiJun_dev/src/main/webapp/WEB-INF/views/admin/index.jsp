<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>首页</title>
	<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--Fonts (字体)-->
	<link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet" type="text/css">
	<!--CSS Libs(css库)-->
	<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/lib/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/lib/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/lib/css/animate.min.css">
	<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/lib/css/bootstrap-switch.min.css">
	<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/lib/css/checkbox3.min.css">
	<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/lib/css/jquery.dataTables.min.css">
	<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/lib/css/dataTables.bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/lib/css/select2.min.css">

	<!--CSS App-->
	<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/css/style.css">
	<link rel="stylesheet" type="text/css" href="${APP_PATH }/js/css/themes/flat-blue.css"><!--设置颜色样式-->
	<link rel="stylesheet" type="text/css" href="${APP_PATH}/js/css/table.css"><!-- 自定义的表格样式和分页的样式 -->	
</head>
<body class="flat-blue">
   <div class="app-container">
	   <!--顶部-->
	   <div class="row content-container">
		   <!--顶部导航白条1-->
		   <nav class="navbar navbar-default navbar-fixed-top navbar-top">
			   <!--top导航条2-->
			   <div class="container-fluid">
				   <!--左边 小图标+字-->
				   <div class="navbar-header">
					   <!--图标按钮-->
					   <button type="button" class="navbar-expand-toggle">
						   <!--"三"字体图标(收缩)-->
						   <i class="fa fa-bars icon"></i>
					   </button>
					   <!--左边字体提示词-->
					   <ol class="breadcrumb navbar-breadcrumb">
						   <li>首页</li>
						   <!-- <li class="active">个人信息</li> -->
					   </ol>
					   <!--响应式导航键-->
					   <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
					       <i class="fa fa-th icon"></i>
				       </button>
				   </div>
				   <!--右边-->
				   <ul class="nav navbar-nav navbar-right ">
				   <!-- 缩小的关闭键 -->
				   <button type="button" class="navbar-right-expand-toggle pull-right visible-xs ">
						<i class="fa fa-times icon"></i>
					</button>
					   <!--用户登出下拉列表-->
					   <li class="dropdown profile">
						   <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">${sessionScope.username}<span class="caret"></span> </a>
						   <ul class="dropdown-menu animated fadeInDown">
							   <li class="profile-img">
								   <img src="${APP_PATH }/js/img/profile/picjumbo.com_HNCK4153_resize.jpg" class="profile-img">
							   </li>
							   <li>
								   <div class="profile-info">
									   <h4 class="username">${sessionScope.username}</h4>
									   <div class="btn-group " role="group">
										   <button type="button" class="btn btn-default" id="pass_reset"><i class="fa fa-user"></i> &nbsp;&nbsp;密码重置</button>
										   <button type="button" class="btn btn-default" onclick="exituser();"><i class="fa fa-sign-out"></i> 退出</button>
									   </div>
								   </div>
							   </li>
						   </ul>
					   </li>
				   </ul>
			   </div>
		   </nav>



		   <!--左边垂直导航目录-->
		   <div class="side-menu sidebar-inverse">
			   <!--垂直导航条-->
			   <nav class="navbar navbar-default " role="navigation">
				   <!--垂直顶部-->
				   <div class="side-menu-container">
					   <!--顶部蓝色正方形div-->
					   <div class="navbar-header">
						   <a class="navbar-brand" href="rec">
							   <!--纸飞机字体图标-->
							   <div class="icon fa fa-paper-plane"></div>
							   <div class="title">智钧时代管理后台</div>
						   </a>
					   </div>
					   <!--蓝方框以下的导航-->
					   <ul class="nav navbar-nav">
						   <!--导航目录-->
							<li class="active">
								<a href="index">
									<span class="icon fa fa-home"></span><span class="title">首页</span>
								</a>
							</li>
						   <!--导航目录1-->
						   <li>
							   <!--图标和字-->
							   <a href="rec">
								   <!--图标和字-->
								   <span class="icon fa fa-user"></span><span class="title">招聘信息</span>
							   </a>							 
						   </li>
						   <!--导航目录2-->
						   <li>
							   <a href="inf">
								   <!--图标和字-->
								   <span class="icon fa fa-desktop"></span><span class="title">公司信息</span>
							   </a>
						   </li>
						   <!--导航目录3-->
						   <li>
							   <a href="news">
								   <!--图标和字-->
								   <span class="icon fa fa-newspaper-o"></span><span class="title">新闻中心</span>
							   </a>
						   </li>
						   <!--导航目录4-->
						   <li>
							   <a href="pro">
								   <span class="icon fa fa-book"></span><span class="title">产品服务</span>
							   </a>
						   </li>
						   <!--导航目录5-->
						   <li>
							   <a href="case">
								   <span class="icon fa fa-thumbs-o-up"></span><span class="title">案例信息</span>
							   </a>
						   </li>
						   <!--导航目录6-->
						   <li>
							   <a href="qua">
								   <span class="icon fa fa-certificate"></span><span class="title">资质信息</span>
							   </a>
						   </li>
						   <!--导航目录8-->
						   <li>
							   <a href="about">
								   <span class="icon fa fa-phone"></span><span class="title">联系我们</span>
							   </a>
						   </li>
						   <!--导航目录9-->
						   <li>
							   <a href="file">
								   <span class="icon fa fa-folder"></span><span class="title">文件管理</span>
							   </a>
						   </li>
					   </ul>
				   </div>
			   </nav>
		   </div>
		   
		   
		   <!--内容-->
		<div class="container-fluid">
			<div class="side-body padding-top">
			
			<!--密码重置 模态框 -->
				   <div class="modal fade" id="passModel" tabindex="-1" role="dialog">
					   <div class="modal-dialog" role="document">
						   <div class="modal-content">
							   <div class="modal-header">
								   <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								   <h4 class="modal-title">密码重置</h4>
							   </div>
							   <div class="modal-body">
								   <form class="form-horizontal " id="passForm">
									   <div class="form-group ">
										   <div class="col-sm-10 col-sm-offset-1">
											   <input type="password" class="form-control" id="UserPass" name="userpassword" placeholder="请输入旧密码"/>
										   </div>
									   </div>
									   <div class="form-group">
										   <div class="col-sm-10 col-sm-offset-1">
											   <input type="password" class="form-control" id="UserPass1" name="userpassword1" placeholder="请输入新密码"/>
										   </div>
									   </div>
									   <div class="form-group">
										   <div class="col-sm-10 col-sm-offset-1">
											   <input type="password" class="form-control" id="UserPass2" name="userpassword2" placeholder="请确定新密码"/>
										   </div>
									   </div>
								   </form>
							   </div>
							   <div class="modal-footer">
								   <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
								   <button type="button" class="btn btn-primary" id="mypassBtn">确定</button>
							   </div>
						   </div>
					   </div>
				   </div>
			
			
				<div class="row">
					<!--方框1-->
					<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
						<a href="news">
							<div class="card yellow summary-inline">
								<div class="card-body">
									<i class="icon fa fa-newspaper-o fa-4x"></i>
									<div class="content">
										<div class="title" id="news_count">0</div>
										<div class="sub-title">新闻动态</div>
									</div>
									<div class="clear-both"></div>
								</div>
							</div>
						</a>
					</div>
					<!--方框2；col-lg-3：调width;-->
					<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
						<a href="pro">
							<div class="card red summary-inline">
								<div class="card-body">
									<i class="icon fa fa-book fa-4x"></i>
									<div class="content">
										<div class="title" id="pro_count">0</div>
										<div class="sub-title">产品服务</div>
									</div>
									<div class="clear-both"></div>
								</div>
							</div>
						</a>
					</div>
					<!--方框3-->
					<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
						<a href="case">
							<div class="card green summary-inline">
								<div class="card-body">
									<i class="icon fa fa-thumbs-o-up fa-4x"></i>
									<div class="content">
										<div class="title" id="case_count">0</div>
										<div class="sub-title">成功案例</div>
									</div>
									<div class="clear-both"></div>
								</div>
							</div>
						</a>
					</div>
					<!--方框4-->
					<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
						<a href="qua">
							<div class="card blue summary-inline">
								<div class="card-body">
									<i class="icon fa fa-trophy fa-4x"></i>
									<div class="content">
										<div class="title" id="qua_count">0</div>
										<div class="sub-title">荣誉资质</div>
									</div>
									<div class="clear-both"></div>
								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="row no-margin-bottom">
					<!--左-->
					<div class="col-sm-6 col-xs-12">
						<!--线型图-->
						<div class="row">
							<div class="col-xs-12">
								<div class="card primary">
									<div class="card-jumbotron no-padding">
										<canvas id="jumbotron-line-chart" class="chart no-padding"></canvas>
									</div>
									<div class="card-body half-padding">
										<h3 class="float-left no-margin font-weight-300">访问量</h3>
										<h2 class="float-right no-margin font-weight-300">3000</h2>
										<div class="clear-both"></div>
									</div>
								</div>
							</div>
						</div>
						<!--图文-->
						<div class="row">
							<!--图文1-->
							<div class="col-md-6 col-sm-12">
								<div class="thumbnail no-margin-bottom">
									<img src="${APP_PATH }/js/img/thumbnails/picjumbo.com_IMG_4566.jpg" class="img-responsive">
									<div class="caption">
										<h3 id="thumbnail-label1">Thumbnail label<a class="anchorjs-link" href="#thumbnail-label"><span class="anchorjs-icon"></span></a></h3>
										<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
										<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
									</div>
								</div>
							</div>
							<!--图文2-->
							<div class="col-md-6 col-sm-12">
								<div class="thumbnail no-margin-bottom">
									<img src="${APP_PATH }/js/img/thumbnails/picjumbo.com_IMG_3241.jpg" class="img-responsive">
									<div class="caption">
										<h3 id="thumbnail-label">Thumbnail label<a class="anchorjs-link" href="#thumbnail-label"><span class="anchorjs-icon"></span></a></h3>
										<p>似的顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶的顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶</p>
										<p><a href="#" class="btn btn-success" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--右-->
					<div class="col-sm-6 col-xs-12">
						<!--类型图-->
						<div class="row">
							<!--条形图-->
							<div class="col-md-6 col-sm-12">
								<div class="card primary">
									<div class="card-jumbotron no-padding">
										<canvas id="jumbotron-bar-chart" class="chart no-padding"></canvas>
									</div>
									<div class="card-body half-padding">
										<h4 class="float-right no-margin font-weight-300">Orders</h4>
										<div class="clear-both"></div>
									</div>
								</div>
							</div>
							<!--折线图-->
							<div class="col-md-6 col-sm-12">
								<div class="card primary">
									<div class="card-jumbotron no-padding">
										<canvas id="jumbotron-line-2-chart" class="chart no-padding"></canvas>
									</div>
									<div class="card-body half-padding">
										<h4 class="float-left no-margin font-weight-300">Pages view</h4>
										<div class="clear-both"></div>
									</div>
								</div>
							</div>
						</div>
						<!--图文-->
						<div class="card card-success">
							<div class="card-header">
								<div class="card-title">
									<div class="title"><i class="fa fa-comment-o"></i> Last Message </div>
								</div>
								<div class="clear-both"></div>
							</div>
							<div class="card-body no-padding">
								<ul class="message-list">
									<!--信息1-->
									<a href="#">
										<li>
											<img src="${APP_PATH }/js/img/profile/profile-1.jpg" class="profile-img pull-left">
											<div class="message-block">
												<div><span class="username">Tui2Tone</span> <span class="message-datetime">12 min ago</span> </div>
											    <div class="message">dasdfa df asdf asdf asdf, asdf asdf asdf aaasd fasd fasd fasd fasd f,dfasdf asdf asdf , sdsf asdf asdf .</div>
											</div>
										</li>
									</a>
									<!--信息2-->
									<a href="#">
										<li>
											<img src="${APP_PATH }/js/img/profile/profile-1.jpg" class="profile-img pull-left">
											<div class="message-block">
												<div><span class="username">Tui2Tone</span> <span class="message-datetime">12 min ago</span> </div>
												<div class="message">dasdfa df asdf asdf asdf, asdf asdf asdf aaasd fasd fasd fasd fasd f,dfasdf asdf asdf , sdsf asdf asdf .</div>
											</div>
										</li>
									</a>
									<!--信息3-->
									<a href="#">
										<li>
											<img src="${APP_PATH }/js/img/profile/profile-1.jpg" class="profile-img pull-left">
											<div class="message-block">
												<div><span class="username">Tui2Tone</span> <span class="message-datetime">12 min ago</span> </div>
												<div class="message">dasdfa df asdf asdf asdf, asdf asdf asdf aaasd fasd fasd fasd fasd f,dfasdf asdf asdf , sdsf asdf asdf .</div>
											</div>
										</li>
									</a>
									<!--信息4-->
									<a href="#">
										<li>
											<img src="${APP_PATH }/js/img/profile/profile-1.jpg" class="profile-img pull-left">
											<div class="message-block">
												<div><span class="username">Tui2Tone</span> <span class="message-datetime">12 min ago</span> </div>
												<div class="message">dasdfa df asdf asdf asdf, asdf asdf asdf aaasd fasd fasd fasd fasd f,dfasdf asdf asdf , sdsf asdf asdf .</div>
											</div>
										</li>
									</a>
									<a href="#" id="message-load-more">
										<li class="text-center load-more">
											<i class="fa fa-refresh"></i> load more..
										</li>
									</a>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	   </div>
	   <footer class="app-footer">
		   <div class="wrapper">
			   <span class="pull-right">1<a href="#"><i class="fa fa-long-arrow-up"></i></a></span>
		   </div>
	   </footer>
   </div>
<%-- <script type="text/javascript" src="${APP_PATH }/js/lib/js/jquery.min.js"></script> --%>
<script type="text/javascript" src="${APP_PATH }/js/js/jquery-3.2.1.js"></script>
<!--<script type="text/javascript" src="${APP_PATH }/js/lib/js/bootstrap.min.js"></script>-->
<script type="text/javascript" src="${APP_PATH }/js/lib/js/Chart.min.js"></script>
<script type="text/javascript" src="${APP_PATH }/js/lib/js/bootstrap-switch.min.js"></script>
<script type="text/javascript" src="${APP_PATH }/js/lib/js/jquery.matchHeight-min.js"></script>
<script type="text/javascript" src="${APP_PATH }/js/lib/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${APP_PATH }/js/lib/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="${APP_PATH }/js/lib/js/select2.full.min.js"></script>
<script type="text/javascript" src="${APP_PATH }/js/lib/js/ace/ace.js"></script>
<script type="text/javascript" src="${APP_PATH }/js/lib/js/ace/mode-html.js"></script>
<script type="text/javascript" src="${APP_PATH }/js/lib/js/ace/theme-github.js"></script>
<!--Javascript-->
<script type="text/javascript" src="${APP_PATH }/js/js/app.js"></script>
<script type="text/javascript" src="${APP_PATH }/js/js/index.js"></script>
<script type="text/javascript" src="${APP_PATH }/js/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/js/js/times.js"></script>
<script type="text/javascript" src="${APP_PATH}/js/js/pagination.js"></script>
<script type="text/javascript">
	/*打开重置密码的模态框*/
	$(document).on("click","#pass_reset",function(){
		$("#UserPass").val("");
		$("#UserPass1").val("");
		$("#UserPass2").val("");
		$("#passModel").modal({
			backdrop:'static'
		});
	});
	
	//用户登出
	function exituser(){
		if(confirm("是否退出？")){
			window.location.href="login";
		}
	}
	
	//点击密码模态框的确定按钮
	$(document).on("click","#mypassBtn",function(){
		var user_pass=$("#UserPass").val();
		var user_pass1=$("#UserPass1").val();
		var user_pass2=$("#UserPass2").val();
		if(user_pass==""){
			alert("旧密码不能为空!");
		}else if(user_pass1==""){
			alert("新密码不能为空!");
		}else if(user_pass2==""){
			alert("请确定新密码!");
		}else if(user_pass1!=user_pass2){
			alert("确定密码和新密码不一致，请重新确定！");
		}else{

			$.ajax({
				url:"user/updateUser",
				type:"GET",
				data:"user_id="+1,
				success:function(result){
					$.each(result,function(index,item){
						if(user_pass!=item.userpassword){
							alert("旧密码输入错误,请重新输入!");
						}else if(user_pass==user_pass1){
							alert("新密码不能与旧密码相同，请重新输入!");
						}else{
							if(confirm("是否要修改?")){
								updateUser(user_pass1);
							}
							
						}
					});
				},
				error:function(result){
					alert("验证旧密码错误，请重新尝试!");
				}
			});
					
		}
	});
	/* 密码修改 */
	function updateUser(userpassword){		
		$.ajax({
			url:"user/update",
			type:"POST",
			data:"userpassword="+userpassword,
			success:function(result){
				alert("修改成功");
				window.location.href="login";//登出
			},
			error:function(result){
				alert("添加时发生错误!");
			}
		}); 
	}
	
</script>
</body>
</html>