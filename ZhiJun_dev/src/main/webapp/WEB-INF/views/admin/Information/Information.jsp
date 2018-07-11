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
					   <!--用户登出下拉列表-->
					   <li class="dropdown profile">
						   <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Admin<span class="caret"></span> </a>
						   <ul class="dropdown-menu animated fadeInDown">
							   <li class="profile-img">
								   <img src="${APP_PATH }/js/img/profile/picjumbo.jpg" class="profile-img">
							   </li>
							   <li>
								   <div class="profile-info">
									   <h4 class="username">Admin</h4>
									   <div class="btn-group " role="group">
										   <button type="button" class="btn btn-default" id="pass_reset1"><i class="fa fa-user"></i> &nbsp;&nbsp;密码重置</button>
										   <button type="button" class="btn btn-default"><i class="fa fa-sign-out"></i> 退出</button>
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
						   <a class="navbar-brand" href="#">
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
							   <a href="">
								   <!--图标和字-->
								   <span class="icon fa fa-user"></span><span class="title">招聘信息</span>
							   </a>							 
						   </li>
						   <!--导航目录2-->
						   <li  class="active">
							   <a href="">
								   <!--图标和字-->
								   <span class="icon fa fa-desktop"></span><span class="title">公司信息</span>
							   </a>
						   </li>
						   <!--导航目录3-->
						   <li>
							   <a href="">
								   <!--图标和字-->
								   <span class="icon fa fa-newspaper-o"></span><span class="title">新闻中心</span>
							   </a>
						   </li>
						   <!--导航目录4-->
						   <li>
							   <a href="service/service.html">
								   <span class="icon fa fa-book"></span><span class="title">产品服务</span>
							   </a>
						   </li>
						   <!--导航目录5-->
						   <li>
							   <a href="">
								   <span class="icon fa fa-thumbs-o-up"></span><span class="title">案例信息</span>
							   </a>
						   </li>
						   <!--导航目录6-->
						   <li>
							   <a href="">
								   <span class="icon fa fa-certificate"></span><span class="title">资质信息</span>
							   </a>
						   </li>
						   <!--导航目录7-->
						   <li>
							   <a href="">
								   <span class="icon fa fa-phone"></span><span class="title">联系我们</span>
							   </a>
						   </li>
						   <!--导航目录8-->
						   <li>
							   <a href="">
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
											   <input type="password" class="form-control" id="p1" name="userpassword" placeholder="请输入旧密码"/>
										   </div>
									   </div>
									   <div class="form-group">
										   <div class="col-sm-10 col-sm-offset-1">
											   <input type="password" class="form-control" id="p2" name="userpassword1" placeholder="请输入新密码"/>
										   </div>
									   </div>
									   <div class="form-group">
										   <div class="col-sm-10 col-sm-offset-1">
											   <input type="password" class="form-control" id="p3" name="userpassword2" placeholder="请确定新密码"/>
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
				   <!--编辑 模态框  -->
				   <div class="modal fade" id="myEditModel" tabindex="-1" role="dialog">
                       <div class="modal-dialog" role="document">
                           <div class="modal-content">
                               <div class="modal-header">
                                   <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                   <h4 class="modal-title">公司信息编辑</h4>
                               </div>
                               <div class="modal-body">
                               <form class="form-horizontal" id="myEditForm">
		                           <div class="form-group">
		                              <div class="col-sm-10">
		                              <input type="text" class="form-control" id="EditcomId" name="id" readonly/>
		                              </div>
		                           </div>
		                           <div class="form-group">								  
								    <div class="col-sm-10">
								      <input type="text" class="form-control" id="EditcomLogo" name="comlogo" placeholder="请输入logo地址">
								    </div>
								  </div>
								  <div class="form-group">
								    <div class="col-sm-10">
								      <input type="text" class="form-control" id="EditcomContact" name="comcontact" placeholder="请输入联系人">
								    </div>
								  </div>
								   <div class="form-group">								  
								    <div class="col-sm-10">
								      <input type="text" class="form-control" id="EditcomNumber" name="comNumber" placeholder="请输入联系电话">
								    </div>
								  </div>
								   <div class="form-group">								  
								    <div class="col-sm-10">
								      <input type="text" class="form-control" id="EditcomAddress" name="comaddress" placeholder="请输入地址">
								    </div>
								  </div>								 
								  <div class="form-group">								  
								    <div class="col-sm-10">
								      <input type="text" class="form-control" id="EditcomCode" name="comcode" placeholder="请输入邮编">
								    </div>
								  </div>
								  <div class="form-group">								  
								    <div class="col-sm-10">
								      <input type="text" class="form-control" id="EditcomFax" name="comfax" placeholder="请输入传真">
								    </div>
								  </div>
								  <div class="form-group">								  
								    <div class="col-sm-10">
								      <input type="email" class="form-control" id="EditcomEmail" name="comemail" placeholder="请输入E-mail">
								    </div>
								  </div>
								  <div class="form-group">								  
								    <div class="col-sm-10">
								      <input type="text" class="form-control" id="EditcomCopyright" name="comcopyright" placeholder="请输入版权所有">
								    </div>
								  </div>
								  <div class="form-group">								  
								    <div class="col-sm-10">
								      <textarea class="form-control textarea_a" id="EditcomProfile" rows="3" name="comprofile" placeholder="请输入公司介绍"></textarea>
								    </div>
								  </div>
								  <div class="form-group">								  
								    <div class="col-sm-10">
								      <input type="date" class="form-control" id="EditcomTime" name="comtime" placeholder="请输入成立时间">
								    </div>
								  </div>
								</form>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						        <button type="button" class="btn btn-primary" id="myEditBtn">保存</button>
						      </div>
						    </div><!-- /.modal-content -->
						  </div><!-- /.modal-dialog -->
						</div><!-- /.modal -->
					<!-- 添加模态框 -->
					<div class="modal fade" id="myAddModel" tabindex="-1" role="dialog">
							  <div class="modal-dialog" role="document">
							    <div class="modal-content">
							      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							        <h4 class="modal-title">添加公司信息</h4>
							      </div>
							      <div class="modal-body">
							        <form class="form-horizontal" id="myAddForm">
									  <div class="form-group">								  
								         <div class="col-sm-10">
								           <input type="text" class="form-control" id="AddcomLogo" name="comlogo" placeholder="请输入logo地址">
								         </div>
								      </div>
									  <div class="form-group">
									    <div class="col-sm-10">
									      <input type="text" class="form-control" id="AddcomContact" name="comcontact" placeholder="请输入联系人">
									    </div>
									  </div>
									   <div class="form-group">								  
									    <div class="col-sm-10">
									      <input type="text" class="form-control" id="AddcomNumber" name="comNumber" placeholder="请输入联系电话">
									    </div>
									  </div>
									   <div class="form-group">								  
									    <div class="col-sm-10">
									      <input type="text" class="form-control" id="AddcomAddress" name="comaddress" placeholder="请输入地址">
									    </div>
									  </div>								 
									  <div class="form-group">								  
									    <div class="col-sm-10">
									      <input type="text" class="form-control" id="AddcomCode" name="comcode" placeholder="请输入邮编">
									    </div>
									  </div>
									  <div class="form-group">								  
									    <div class="col-sm-10">
									      <input type="text" class="form-control" id="AddcomFax" name="comfax" placeholder="请输入传真">
									    </div>
									  </div>
									  <div class="form-group">								  
									    <div class="col-sm-10">
									      <input type="email" class="form-control" id="AddcomEmail" name="comemail" placeholder="请输入E-mail">
									    </div>
									  </div>
									  <div class="form-group">								  
									    <div class="col-sm-10">
									      <input type="text" class="form-control" id="AddcomCopyright" name="comcopyright" placeholder="请输入版权所有">
									    </div>
									  </div>
									  <div class="form-group">								  
									    <div class="col-sm-10">
									      <textarea class="form-control textarea_a" id="AddcomProfile" rows="3" name="comprofile" placeholder="请输入公司介绍"></textarea>
									    </div>
									  </div>
									  <div class="form-group">								  
									    <div class="col-sm-10">
									      <input type="date" class="form-control" id="AddcomTime" name="comtime" placeholder="请输入成立时间">
									    </div>
									  </div>
									</form>
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
							        <button type="button" class="btn btn-primary" id="myAddBtn">添加</button>
							      </div>
							    </div><!-- /.modal-content -->
							  </div><!-- /.modal-dialog -->
							</div><!-- /.modal -->
					   					   
				   
				   <div class="page-title">
					   <span class="title">公司信息</span>
					   <!-- 添加按钮 -->
					   <button class="btn btn-primary btn-lg navbar-right" id="addpage" style="margin:0px"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加</button>	
				   </div>
				   <div class="row">
					   <div class="col-xs-12">
						   <div class="card">
							   <div class="card-body">
								   <table class="table" id="information_table">
								       <thead>
								          <tr>
								              <th>序号</th>
								              <th>公司名称</th>
								              <th>Logo</th>
								              <th>联系人</th>
								              <th>联系电话</th>
								              <th>地址</th>
								              <th>邮编</th>
								              <th>传真</th>
								              <th>E-mail</th>
								              <th>版权所有</th>
								              <th>公司介绍</th>
								              <th>成立时间</th>
								              <th>操作</th>
								          </tr>
								       </thead>
								       <tbody>
								       
								       </tbody>
								   </table>
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
<script type="text/javascript">
	$(function(){to_page();});
	function to_page(){
		$.ajax({
			url:"inf/all",
			type:"POST",
			success:function(result){
				alert(result);
				//1、解析数据
				build_information_table(result);
			},
		 error:function(e){
			 alert("error:"+e);
		 }
		});
	}
	function build_information_table(result){
		//构建先前情况table,empty掏空信息的方法
		$("#information_table tbody").empty();
		$.each(result,function(index,item){
			/* alert(item.name); */
			var idTd=$("<td></td>").append(item.com_id);
			var logoTd=$("<td></td>").append(item.com_logo);
			var contactTd=$("<td></td>").append(item.com_contact);
			var numberTd=$("<td></td>").append(item.com_number);
			var addressTd=$("<td></td>").append(item.com_address);
			var codeTd=$("<td></td>").append(item.com_code);
			var faxTd=$("<td></td>").append(item.com_fax);
			var emailTd=$("<td></td>").append(item.com_email);
			var copyrightTd=$("<td></td>").append(item.com_copyright);
			var profileTd=$("<td></td>").append(item.com_profile);
			var timeTd=$("<td></td>").append(item.com_time);
			var editBtn=$("<button id='editBtn'></button>").addClass("btn btn-info btn-sm edit_btn").append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append(" 编辑");
			editBtn.attr("edit-id",item.com_id);
			
			var delBtn=$("<button id='delBtn'></button>").addClass("btn btn-danger btn-sm del_btn").append($("<span></span>").addClass("glyphicon glyphicon-trash")).append(" 删除");
			delBtn.attr("del-id",item.com_id);
			
			/* var editBtn=$("<a id='editBtn' onclick='edit("+item.rec_id+")'>编辑</a>");
			
			var delBtn=$("<a id='delBtn' onclick='del("+item.rec_id+")'> 删除</a>"); */
			
			var btnTd=$("<td></td>").append(editBtn).append(" ").append(delBtn);
			//append方法执行完以后还是回到原来的元素,也就是一个一个加进tr
			$("<tr></tr>").append(idTd).append(logoTd).append(contactTd).append(numberTd).append(addressTd).append(codeTd)
			.append(faxTd).append(emailTd).append(copyrightTd).append(profileTd).append(timeTd)
			.append(btnTd).appendTo("#information_table tbody");
		});
	}
	//编辑按钮绑定数据
	function getEditDate(id){
		$.ajax({
			url:"updateCom",
			type:"GET",
			data:"id="+id,
			success:function(result){
				$.each(result,function(index,item){
					$("#EditcomId").val(item.com_id);
					$("#EditcomLogo").val(item.com_logo);
					$("#EditcomContact").val(item.com_contact);
					$("#EditcomNumber").val(item.com_number);
					$("#EditcomAddress").val(item.com_address);
					$("#EditcomCode").val(item.com_code);
					$("#EditcomFax").val(item.com_fax);
					$("#EditcomEmail").val(item.com_email);
					$("#EditcomCopyright").val(item.com_copyright);
					$("#EditcomProfile").val(item.com_profile);
					$("#EditcomTime").val(item.com_time);
					
				});
			},
			error:function(result){
				alert("编辑时绑定数据错误!");
			}
		});
	}
	//点击编辑按钮
	$(document).on("click","#editBtn",function(){
		$("#EditcomId").val("");
		$("#EditcomLogo").val("");
		$("#EditcomContact").val("");
		$("#EditcomNumber").val("");
		$("#EditcomAddress").val("");
		$("#EditcomCode").val("");
		$("#EditcomFax").val("");
		$("#EditcomEmail").val("");
		$("#EditcomCopyright").val("");
		$("#EditcomProfile").val("");
		$("#EditcomTime").val("");
		//获取编辑按钮自定义属性ID
		var id = $(this).attr("edit-id");
		//传递参数ID
		getEditDate(id);
		//打开模特卡 并设置背景点击无效
		$("#myEditModel").modal({
			backdrop:'static'
		});
	});
	//点击编辑模态框的保存按钮
	$(document).on("click","#myEditBtn",function(){
		var id=$("#EditcomId").val("");
		var logo=$("#EditcomLogo").val("");
		var contact=$("#EditcomContact").val("");
		var number=$("#EditcomNumber").val("");
		var address=$("#EditcomAddress").val("");
		var code=$("#EditcomCode").val("");
		var fax=$("#EditcomFax").val("");
		var email$("#EditcomEmail").val("");
		var copyright=$("#EditcomCopyright").val("");
		var profile$("#EditcomProfile").val("");
		var time=$("#EditcomTime").val("");
		if(logo == ""){
			alert("logo地址不能为空!");
		}else if(indexOf(logo)){
			alert("logo地址不能含有空白字符!");
		}else{
			 $.ajax({
				url:"update",
				type:"POST",
				data:$("#myEditForm").serialize(),
				success:function(result){
					$("#myEditModel").modal('hide');
					to_page();
				},
				error:function(result){
					alert("编辑时发生错误!");
				}
			}); 
		}
	});
	//判断有没有包含空白字符的字符串
	function indexOf(str){
		if(str.indexOf(" ") == -1){
			return false;
		}
		return true;
	}
	//打开添加模态框
	$(document).on("click","#addpage",function(){
		$("#AddcomLogo").val("");
		$("#AddcomContact").val("");
		$("#AddcomNumber").val("");
		$("#AddcomAddress").val("");
		$("#AddcomCode").val("");
		$("#AddcomFax").val("");
		$("#AddcomEmail").val("");
		$("#AddcomCopyright").val("");
		$("#AddcomProfile").val("");
		$("#AddcomTime").val("");
		$("#myAddModel").modal({
			backdrop:'static'
		});
	});
	//点击保存按钮
	$(document).on("click","#myAddBtn",function(){
		var logo=$("#AddcomLogo").val("");
		var contact=$("#AddcomContact").val("");
		var number=$("#AddcomNumber").val("");
		var address=$("#AddcomAddress").val("");
		var code=$("#AddcomCode").val("");
		var fax=$("#AddcomFax").val("");
		var email=$("#AddcomEmail").val("");
		var copyright$("#AddcomCopyright").val("");
		var profile=$("#AddcomProfile").val("");
		var time=$("#AddcomTime").val("");
		if(logo == ""){
			alert("logo地址不能为空!");
		}else if(indexOf(logo)){
			alert("logo地址不能含有空白字符!");
		}else{
			 $.ajax({
				url:"add",
				type:"POST",
				data:$("#myAddForm").serialize(),
				success:function(result){
					$("#myAddModel").modal('hide');
					to_page();
				},
				error:function(result){
					alert("添加时发生错误!");
				}
			}); 
		}
	});
	//删除
	$(document).on("click","#delBtn",function(){
		var id = $(this).attr("del-id");
		$.ajax({
			url:"deleteById",
			type:"GET",
			data:"id="+id,
			success:function(result){
				to_page();
			},
			error:function(result){
				alert("删除时错误，请重新尝试!");
			}
		});
	});
	/*打开重置密码的模态框*/
	$(document).on("click","#pass_reset1",function(){

		$("#passModel").modal({
			backdrop:'static'
		});
	});
</script>
</body>
</html>