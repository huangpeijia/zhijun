<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>公司信息</title>
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
						   <li>关于我们</li>
						   <!-- <li class="active">个人信息</li> -->
					   </ol>
					   <!--???-->
					   <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
					       <i class="fa fa-th icon"></i>
				       </button>
				   </div>
				   <!--右边-->
				   <ul class="nav navbar-nav navbar-right ">
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
							   <a href="rec">
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
						   <!--导航目录7-->
						   <li class="active">
							   <a href="about">
								   <span class="icon fa fa-phone"></span><span class="title">联系我们</span>
							   </a>
						   </li>
						   <!--导航目录8-->
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
			   <div class="side-body">
			   
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
				    
				   
				   
				   <div class="page-title">
					   <span class="title">关于我们</span>					   
				   </div>
				   <div class="row">
					   <div class="col-xs-12">

								   <!--编辑  -->				   
                           <div class="modal-content">                              
                               <div class="modal-body">
                               <form class="form-horizontal" id="myEditForm" style="margin-top:40px;">
		                           <div class="form-group">
		                               <label for="inputaboutId" class="col-sm-2 control-label">序号</label>	
		                              <div class="col-sm-9">
		                              <input type="text" class="form-control" id="EditaboutId" name="about_id" readonly/>
		                              </div>
		                           </div>
		                           <div class="form-group">	
								   <label for="inputaboutProfile" class="col-sm-2 control-label">公司介绍</label>								  
								    <div class="col-sm-9">
								      <textarea class="form-control textarea_a" id="EditaboutProfile" rows="3" name="about_profile" placeholder="请输入公司介绍"></textarea>
								    </div>				    
								  </div>		                           
								  <div class="form-group">
								  <label for="inputaboutScope" class="col-sm-2 control-label">经营范围</label>	
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditaboutScope" name="about_scope" placeholder="请输入公司经营范围">
								    </div>
								  </div>								  
								   <div class="form-group">
								  <label for="inputaboutProducts" class="col-sm-2 control-label">主要产品</label>	
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditaboutProducts" name="about_products" placeholder="请输入公司主要产品">
								    </div>
								  </div>	
								  <div class="form-group">
								  <label for="inputaboutCulture" class="col-sm-2 control-label">公司文化</label>	
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditaboutCulture" name="about_culture" placeholder="请输入公司文化">
								    </div>
								  </div>	
								  <div class="form-group">
								  <label for="inputaboutProspects" class="col-sm-2 control-label">发展前景</label>	
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditaboutProspects" name="about_prospects" placeholder="请输入公司发展前景">
								    </div>
								  </div>									  
								   <div class="form-group">	
								   <label for="inputaboutTime" class="col-sm-2 control-label">成立时间</label>								  
								    <div class="col-sm-9">
								      <input type="date" class="form-control" id="EditaboutTime" placeholder="请输入成立时间">
								      <input type="hidden" class="form-control" id="EditaboutTimes" name="about_time" placeholder="请输入成立时间">
								    </div>
								  </div>
								</form>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" id="reduction" >还原</button>
						        <button type="button" class="btn btn-primary" id="myEditBtn">修改</button>
						      </div>
						    </div>
				
				   
					   </div>
				   </div>
			   </div>
		   </div>
		   <div>

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
<script type="text/javascript">
$(function(){about_update();});
//执行编辑
function about_update(){
	$("#EditaboutId").val("");
	$("#EditaboutProfile").val("");
	$("#EditaboutScope").val("");
    $("#EditaboutProducts").val("");
	$("#EditaboutCulture").val("");	
	$("#EditaboutProspects").val("");	
	$("#EditaboutTime").val("");
	//获取编辑按钮自定义属性ID
	var id = $(this).attr("edit-id");
	//传递参数ID
	getEditDate(1);	
	
}
//编辑绑定数据
function getEditDate(id){
	$.ajax({
		url:"about/updateAbout",
		type:"GET",
		data:"about_id="+id,
		success:function(result){
			$.each(result,function(index,item){
				var time=timest(item.about_time);
				item.about_time=time;
				$("#EditaboutId").val(item.about_id);
				$("#EditaboutProfile").val(item.about_profile);
				$("#EditaboutScope").val(item.about_scope);
			    $("#EditaboutProducts").val(item.about_products);
				$("#EditaboutCulture").val(item.about_culture);	
				$("#EditaboutProspects").val(item.about_prospects);	
				$("#EditaboutTime").val(item.about_time);
			});
		},
		error:function(result){
			alert("编辑绑定数据错误!");
		}
	});
}

function timesU(value){
	var date = new Date(value);
	return date;
}
//点击还原按钮
$(document).on("click","#reduction",function(){
	inf_update();
});
//点击编辑按钮
$(document).on("click","#myEditBtn",function(){
	var about_id=$("#EditaboutId").val();
	var about_profile=$("#EditaboutProfile").val();
	var about_scope=$("#EditaboutScope").val();
    var about_products=$("#EditaboutProducts").val();
	var about_culture=$("#EditaboutCulture").val();	
	var about_prospects=$("#EditaboutProspects").val();	
	var about_time=$("#EditaboutTime").val();
	var time=timesU(about_time);
	if(about_profile == ""){
		alert("公司介绍不能为空!");
	}else if(about_scope==""){
		alert("公司经营范围不能为空!");
	}else if(about_products==""){
		alert("公司主要产品不能为空!");
	}else if(about_time==""){
		alert("成立时间不能为空!");
	}else{		
		if(confirm("是否要修改?")){
			$("#EditaboutTimes").val(time);
			//修改 
			 $.ajax({
					url:"about/update",
					type:"POST",
					data:$("#myEditForm").serialize(),
					success:function(result){
						about_update();
					},
					error:function(result){
						alert("编辑时发生错误!");
					}
				}); 
			}
		
		
	}
});


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
		window.location.href="exit_user";
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
			window.location.href="exit_user";//登出
		},
		error:function(result){
			alert("添加时发生错误!");
		}
	}); 
}

</script>
</body>
</html>