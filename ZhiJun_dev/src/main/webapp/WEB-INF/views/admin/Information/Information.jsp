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
	<style type="text/css">
	table{
	   table-layout:fixed;width:100%;
	}
	td{
	   white-space:nowrap;overflow:hidden;text-overflow:ellipsis;
	}
	</style>
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
						   <li>公司信息</li>
						   <!-- <li class="active">个人信息</li> -->
					   </ol>
					   <!--???-->
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
						   <a class="navbar-brand" href="index">
							   <!--纸飞机字体图标-->
							   <div class="icon fa fa-paper-plane"></div>
							   <div class="title">智钧时代管理后台</div>
						   </a>
					   </div>
					   <!--蓝方框以下的导航-->
					   <ul class="nav navbar-nav">
					        <!--导航目录-->
							<li>
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
						   <li class="active">
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
								   <span class="icon fa fa-trophy"></span><span class="title">资质信息</span>
							   </a>
						   </li>
						   <!--导航目录7-->
						   <li>
							   <a href="about">
								   <span class="icon fa fa-phone"></span><span class="title">联系我们</span>
							   </a>
						   </li>
						   <!--导航目录8-->
						   <li>
							   <a href="document">
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
					   <span class="title">公司信息</span>					   
				   </div>
				   <div class="row">
					   <div class="col-xs-12">
				  
								   <!--编辑  -->				   
                           <div class="modal-content">                         
                               <div class="modal-body">
                               <form class="form-horizontal" id="myEditForm" style="margin-top:40px;">
		                           <div class="form-group">
		                               <label for="inputcomId" class="col-sm-2 control-label">序号</label>	
		                              <div class="col-sm-9">
		                              <input type="text" class="form-control" id="EditcomId" name="com_id" readonly/>
		                              </div>
		                           </div>
		                           <div class="form-group">		
		                           <label for="inputcomName" class="col-sm-2 control-label">公司名称</label>					  
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditcomName" name="com_name" placeholder="公司名称">
								    </div>
								  </div>
								  <div class="form-group">
								  <label for="inputcomLogo" class="col-sm-2 control-label">Logo</label>	
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditcomLogo" name="com_logo" placeholder="公司Logo路径">
								    </div>
								  </div>								  
								   <div class="form-group">
								  <label for="inputcomContact" class="col-sm-2 control-label">联系人</label>	
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditcomContact" name="com_contact" placeholder="联系人名称">
								    </div>
								  </div>	
								  <div class="form-group">
								  <label for="inputcomNumber" class="col-sm-2 control-label">联系电话</label>	
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditcomNumber" name="com_number" placeholder="联系电话">
								    </div>
								  </div>	
								  <div class="form-group">
								  <label for="inputcomAddress" class="col-sm-2 control-label">公司地址</label>	
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditcomAddress" name="com_address" placeholder="公司地址">
								    </div>
								  </div>	
								  <div class="form-group">
								  <label for="inputcomCode" class="col-sm-2 control-label">邮编</label>	
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditcomCode" name="com_code" placeholder="邮编号">
								    </div>
								  </div>
								  <div class="form-group">
								  <label for="inputcomFax" class="col-sm-2 control-label">传真</label>	
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditcomFax" name="com_fax" placeholder="传真地址">
								    </div>
								  </div>
								  <div class="form-group">
								  <label for="inputcomEmail" class="col-sm-2 control-label">E-mail</label>	
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditcomEmail" name="com_email" placeholder="E-mail">
								    </div>
								  </div>
								  <div class="form-group">
								  <label for="inputcomCopyright" class="col-sm-2 control-label">版权所有</label>	
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditcomCopyright" name="com_copyright" placeholder="版权信息">
								    </div>
								  </div>									 
								  <div class="form-group">	
								   <label for="inputcomProfile" class="col-sm-2 control-label">公司介绍</label>								  
								    <div class="col-sm-9">
								      <textarea class="form-control textarea_a" id="EditcomProfile" rows="3" name="com_profile" placeholder="公司介绍"></textarea>
								    </div>				    
								  </div>
								  <div class="form-group">	
								   <label for="inputcomProfile" class="col-sm-2 control-label">成立背景</label>								  
								    <div class="col-sm-9">
								      <textarea class="form-control textarea_a" id="EditcomBackdrop" rows="3" name="com_backdrop" placeholder="成立背景"></textarea>
								    </div>				    
								  </div>
								   <div class="form-group">	
								   <label for="inputcomTime" class="col-sm-2 control-label">成立时间</label>								  
								    <div class="col-sm-9">
								      <input type="date" class="form-control" id="EditcomTime" placeholder="成立时间">
								      <input type="hidden" class="form-control" id="EditcomTimes" name="com_time" placeholder="成立时间">
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
<script type="text/javascript" src="${APP_PATH }/js/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/js/js/times.js"></script>
<script type="text/javascript">
$(function(){inf_update();});
//执行编辑
function inf_update(){
	$("#EditcomId").val("");
	$("#EditcomName").val("");
	$("#EditcomLogo").val("");
    $("#EditcomContact").val("");
	$("#EditcomNumber").val("");	
	$("#EditcomAddress").val("");
	$("#EditcomCode").val("");
	$("#EditcomFax").val("");
	$("#EditcomEmail").val("");
	$("#EditcomCopyright").val("");
	$("#EditcomProfile").val("");
	$("#EditcomBackdrop").val("");
	$("#EditcomTime").val("");
	//获取编辑按钮自定义属性ID
	var id = $(this).attr("edit-id");
	//传递参数ID
	getEditDate(1);	
	
}
//编辑绑定数据
function getEditDate(id){
	$.ajax({
		url:"inf/updateAbout",
		type:"GET",
		data:"com_id="+id,
		success:function(result){
			$.each(result,function(index,item){
				var time=timest(item.com_time);
				item.com_time=time;
				$("#EditcomId").val(item.com_id);
				$("#EditcomName").val(item.com_name);	
				$("#EditcomLogo").val(item.com_logo);
			    $("#EditcomContact").val(item.com_contact);
				$("#EditcomNumber").val(item.com_number);
				$("#EditcomAddress").val(item.com_address);
				$("#EditcomCode").val(item.com_code);
				$("#EditcomFax").val(item.com_fax);
				$("#EditcomEmail").val(item.com_email);
				$("#EditcomCopyright").val(item.com_copyright);
				$("#EditcomProfile").val(item.com_profile);
				$("#EditcomBackdrop").val(item.com_backdrop);
				$("#EditcomTime").val(time);
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
	var com_id=$("#EditcomId").val();
	var com_name=$("#EditcomName").val();
	var com_logo=$("#EditcomLogo").val();
    var com_contact=$("#EditcomContact").val();
	var com_number=$("#EditcomNumber").val();
	var com_address=$("#EditcomAddress").val();
	var com_code=$("#EditcomCode").val();
	var com_fax=$("#EditcomFax").val();
	var com_email=$("#EditcomEmail").val();
	var com_copyright=$("#EditcomCopyright").val();
	var com_profile=$("#EditcomProfile").val();
	var com_backdrop=$("#EditcomBackdrop").val();
	var com_time=$("#EditcomTime").val();
	var time=timesU(com_time);
	if(com_name == ""){
		alert("公司名称不能为空!");
	}else if(indexOf(com_name)){
		alert("公司名称不能含有空白字符!");
	}else if(com_profile==""){
		alert("公司介绍不能为空!");
	}else if(com_time==""){
		alert("成立时间不能为空!");
	}else{		
		if(confirm("是否要修改?")){
			$("#EditcomTimes").val(time);
			//修改 
			 $.ajax({
					url:"inf/update",
					type:"POST",
					data:$("#myEditForm").serialize(),
					success:function(result){
						inf_update();
					},
					error:function(result){
						alert("编辑时发生错误!");
					}
				}); 
			}
		
		
	}
});
//判断有没有包含空白字符的字符串
function indexOf(str){
	if(str.indexOf(" ") == -1){
		return false;
	}
	return true;
}


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