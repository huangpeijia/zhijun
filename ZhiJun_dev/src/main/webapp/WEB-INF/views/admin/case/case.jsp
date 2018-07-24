<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>案例信息</title>
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

<script type="text/javascript" src="${APP_PATH }/js/js/release/wangEditor.min.js"></script> 
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
						   <li>案例信息</li>
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
						   <li class="active">
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
				    <!--编辑 模态框  -->
				   <div class="modal fade" id="myEditModel" tabindex="-1" role="dialog">
                       <div class="modal-dialog" role="document">
                           <div class="modal-content">
                               <div class="modal-header">
                                   <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                   <h4 class="modal-title">案例编辑</h4>
                               </div>
                               <div class="modal-body">
                               <form class="form-horizontal" id="myEditForm" enctype="multipart/form-data">
		                           <div class="form-group">
		                               <label for="inputcaseId" class="col-sm-2 control-label">序号</label>	
		                              <div class="col-sm-9">
		                              <input type="text" class="form-control" id="EditcaseId" name="case_id" readonly/>
		                              </div>
		                           </div>
		                           <div class="form-group">		
		                           <label for="inputcaseName" class="col-sm-2 control-label">案例名称</label>					  
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditcaseName" name="case_name" placeholder="请输入案例名称">
								    </div>
								  </div>
								  <div class="form-group">
								  <label for="inputcasePhoto" class="col-sm-2 control-label">照片路径</label>	
								    <div class="col-sm-9">
								     <img id="oldPhoto" style="width:100px;height:100px"/>
								      <input id="EditcasePhoto" type="file" name="case_photo" />
								     <!--  <input type="text" class="form-control" id="EditcasePhoto" name="case_photo" placeholder="请输入照片路径"> -->
								    </div>
								  </div>								  
								   <div class="form-group">	
								   <label for="inputcaseConstant" class="col-sm-2 control-label">案例内容</label>								  
								    <div class="col-sm-9">
								    	<div id="up_editor"></div>
								      <textarea class="form-control textarea_a" id="EditcaseConstant" rows="3" name="case_constant" style="display:none" ></textarea>
								    </div>
								  </div>
								   <div class="form-group">	
								   <label for="inputcaseTime" class="col-sm-2 control-label">发布时间</label>								  
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditcaseTime" placeholder="请输入发布时间" readonly>
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
						        <h4 class="modal-title">添加案例信息</h4>
						      </div>
						      <div class="modal-body">
						        <form class="form-horizontal" id="myAddForm" enctype="multipart/form-data">
						      <div class="form-group">		
		                           <label for="inputcaseName" class="col-sm-2 control-label">案例名称</label>							  
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="AddcaseName" name="case_name" placeholder="请输入案例名称">
								    </div>
								  </div>
								  <div class="form-group">
								  <label for="inputcasePhoto" class="col-sm-2 control-label">照片路径</label>	
								    <div class="col-sm-9">
								      <img id="imgPhoto" style="width:100px;height:100px"/>
								   	  <input id="AddcasePhoto" type="file" name="case_photo" />
								      <!-- <input type="text" class="form-control" id="AddcasePhoto" name="case_photo" placeholder="请输入照片路径"> -->
								    </div>
								  </div>								  
								   <div class="form-group">	
								   <label for="inputcaseConstant" class="col-sm-2 control-label">案例内容</label>								  
								    <div class="col-sm-9">
								    <div id="editor"></div>
								      <textarea class="form-control textarea_a" id="AddcaseConstant" rows="3" name="case_constant" style="display:none" ></textarea>
								    </div>
								  </div>
								</form>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						        <button type="button" class="btn btn-primary" id="myAddBtn">添加</button>						      
						     </div><!-- /.modal-content -->
						  </div><!-- /.modal-dialog -->
					</div>
				   </div>
				   
				   
				   
				   <div class="page-title">
					   <span class="title">产品信息</span>
					   <!-- 添加按钮 -->
					   <button class="btn btn-primary btn-lg navbar-right" id="addpage" style="margin:0px"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加</button>
				   </div>
				   <div class="row">
					   <div class="col-xs-12">
						   <div class="card">							  
							   <div class="card-body">
								   <table class="table" id="case_table" >
								       <thead>
								          <tr>
								              <th>序号</th>
								              <th>案例名称</th>
								              <th>照片路径</th>
								              <th>案例内容</th>
								              <th>发布时间</th>
								              <th>操作</th>
								          </tr>
								       </thead>
								       <tbody>
								       
								       </tbody>
								   </table>
								   <div id="page"></div>
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
<script type="text/javascript" src="${APP_PATH}/js/js/pagination.js"></script>
<script type="text/javascript">

var E = window.wangEditor
var editor = new E('#editor')
var $text1 = $('#AddcaseConstant')
editor.customConfig.onchange = function (html) {
    // 监控变化，同步更新到 textarea
    $text1.val(html)
}
// 或者 var editor = new E( document.getElementById('editor') )
 editor.customConfig.uploadImgServer = 'editFile/upload' 
   editor.customConfig.showLinkImg = false
   	editor.customConfig.uploadFileName = 'file';
   	// 设置:限制一次最多上传 1 张图片
editor.customConfig.uploadImgMaxLength = 1;
   // 设置：监听事件
editor.customConfig.uploadImgHooks = {

customInsert: function (insertImg, result, editor) {
    // 图片上传并返回结果，自定义插入图片的事件（而不是编辑器自动插入图片！！！）
    // insertImg 是插入图片的函数，editor 是编辑器对象，result 是服务器端返回的结果
    // result 必须是一个 JSON 格式字符串！！！否则报错
    // 举例：假如上传图片成功后，服务器端返回的是 {url:'....'} 这种格式，即可这样插入图片：
	var ulr=result.data; 
    insertImg(ulr); 
}
} 
editor.create() 

var editor2 = new E('#up_editor')
var $text2 = $('#EditcaseConstant')
editor2.customConfig.onchange = function (html) {
    // 监控变化，同步更新到 textarea
    $text2.val(html)
}
// 或者 var editor = new E( document.getElementById('editor') )
 editor2.customConfig.uploadImgServer = 'editFile/upload' 
   editor2.customConfig.showLinkImg = false
   	editor2.customConfig.uploadFileName = 'file';
   	// 设置:限制一次最多上传 1 张图片
editor2.customConfig.uploadImgMaxLength = 1;
   // 设置：监听事件
editor2.customConfig.uploadImgHooks = {

customInsert: function (insertImg, result, editor2) {
    // 图片上传并返回结果，自定义插入图片的事件（而不是编辑器自动插入图片！！！）
    // insertImg 是插入图片的函数，editor 是编辑器对象，result 是服务器端返回的结果
    // result 必须是一个 JSON 格式字符串！！！否则报错
    // 举例：假如上传图片成功后，服务器端返回的是 {url:'....'} 这种格式，即可这样插入图片：
	var ulr=result.data; 
    insertImg(ulr); 
}
} 
editor2.create() 

var c_page=1;//当前页数
$(function(){to_page(c_page);});
function to_page(c_page){
	$.ajax({
		url:"case/all",
		type:"POST",
		data:"c_page="+c_page,
		success:function(result){ 
			//1、解析数据
			build_case_table(result);
			pages("case",c_page);
		},
	 error:function(e){
		 alert("error:"+e);
	 }
	});
}

$('#AddcasePhoto').on('change',function(){
	var filePath = window.URL.createObjectURL(this.files[0]);
	$('#imgPhoto').attr("src",filePath);
 });
 $('#EditcasePhoto').on('change',function(){
		var filePath = window.URL.createObjectURL(this.files[0]);
		$('#oldPhoto').attr("src",filePath);
	 });
function build_case_table(result){
	//构建先前情况table,empty掏空信息的方法
	$("#case_table tbody").empty();
	$.each(result,function(index,item){
		var time=times(item.case_time);
		item.case_time=time;
		var idTd=$("<td style='vertical-align:middle;'></td>").append(item.case_id);
		var nameTd=$("<td style='vertical-align:middle;'></td>").append(item.case_name);
		var photoTd=$("<td style='vertical-align:middle;'></td>").append($("<img ></img>").attr("src","/ZhiJun_dev/upload/"+item.case_photo).attr("style","width:50px;height:50px;"));
		var constantTd=$("<td style='vertical-align:middle;'></td>").append(item.case_constant.substring(0,20)+'...');
		var timeTd=$("<td style='vertical-align:middle;'></td>").append(item.case_time);
		var editBtn=$("<button id='editBtn'></button>").addClass("btn btn-info btn-sm edit_btn").append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append(" 编辑");
		editBtn.attr("edit-id",item.case_id);
		
		var delBtn=$("<button id='delBtn'></button>").addClass("btn btn-danger btn-sm del_btn").append($("<span></span>").addClass("glyphicon glyphicon-trash")).append(" 删除");
		delBtn.attr("del-id",item.case_id);
		
		/* var editBtn=$("<a id='editBtn' onclick='edit("+item.case_id+")'>编辑</a>");
		
		var delBtn=$("<a id='delBtn' onclick='del("+item.case_id+")'> 删除</a>"); */
		
		var btnTd=$("<td></td>").append(editBtn).append(" ").append(delBtn);
		//append方法执行完以后还是回到原来的元素,也就是一个一个加进tr
		$("<tr></tr>").append(idTd).append(nameTd).append(photoTd).append(constantTd).append(timeTd)
		.append(btnTd).appendTo("#case_table tbody");
	});
}
//编辑按钮绑定数据
function getEditDate(id){ 
	$.ajax({
		url:"case/updateCase",
		type:"GET",
		data:"case_id="+id,
		success:function(result){
			$.each(result,function(index,item){ 
				var time=times(item.case_time);
				item.case_time=time;
				$("#EditcaseId").val(item.case_id);
				$("#EditcaseName").val(item.case_name);
				$("#oldPhoto").attr("src","/ZhiJun_dev/upload/"+item.case_photo);
				$("#EditcaseConstant").val(item.case_constant);
				editor2.txt.html(item.case_constant)
				$("#EditcaseTime").val(item.case_time);
			});
		},
		error:function(result){
			alert("编辑绑定数据错误!");
		}
	});
}
//点击编辑按钮
$(document).on("click","#editBtn",function(){
	$("#EditcaseId").val("");
	$("#EditcaseName").val("");
	$("#EditcasePhoto").val("");
	$("#EditcaseConstant").val("");
	$("#EditcaseTime").val("");
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
	var formData = new FormData();
	var case_photo = $('#EditcasePhoto').get(0).files[0];
	var case_id=$("#EditcaseId").val();
	case_id=parseInt(case_id);
	var case_name=$("#EditcaseName").val();
	var case_constant=$("#EditcaseConstant").val();
	var case_time=$("#EditcaseTime").val();
	var old_photo = $("#oldPhoto")[0].src;
	var index = old_photo .lastIndexOf("\/");  
	old_photo = old_photo.substring(index + 1, old_photo.length);
	formData.append("case_id",case_id);
	formData.append("case_name",case_name);
	formData.append("case_constant",case_constant);
	formData.append("case_time",case_time); 
	formData.append("case_photo",case_photo);
	formData.append("old_photo",old_photo);
	if(case_name == ""){
		alert("案例名称不能为空!");
	}else if(indexOf(case_name)){
		alert("案例名称不能含有空白字符!");
	}else if(case_constant==""){
		alert("案例内容不能为空!");
	}else{
		 $.ajax({
			url:"case/update",
			type:"POST",
			data:formData,
			async: false,  
			cache: false, 
			contentType: false, //不设置内容类型
			processData: false, //不处理数据
			success:function(result){
				$("#myEditModel").modal('hide');//隐藏模态框
				to_page(c_page);//显示全部
			},
			error:function(result){
				alert("编辑时发生错误!");
			},
	        beforeSend: function(){
	        	alert("上传等待中");
	        }, 
	        complete: function(){  
	        	alert("上传成功");
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
	$("#AddcaseName").val("");
	$("#AddcasePhoto").val("");
	$("#AddcaseConstant").val(""); 
	$("#imgPhoto").attr("src","");
	$("#myAddModel").modal({
		backdrop:'static'
	});
	editor.txt.html(' ')
});
//点击保存按钮
$(document).on("click","#myAddBtn",function(){
	var formData = new FormData();
	var case_upload = $('#AddcasePhoto').get(0).files[0];
	var case_name=$("#AddcaseName").val();
	var case_constant=$("#AddcaseConstant").val();
	formData.append("case_name",case_name);
	formData.append("case_upload",case_upload);
	formData.append("case_constant",case_constant);
	if(case_name == ""){
		alert("案例名称不能为空!");
	}else if(indexOf(case_name)){
		alert("案例名称不能含有空白字符!");
	}else if(case_constant==""){
		alert("案例内容不能为空!");
	}else{
		if("undefined" != typeof(case_upload) && case_upload != null && case_upload != ""){
		 $.ajax({
			url:"case/add",
			type:"POST",
			data:formData,
			async: false,  
			cache: false, 
			contentType: false, //不设置内容类型
			processData: false, //不处理数据
			success:function(result){
				$("#myAddModel").modal('hide');
				to_page(c_page);
			},
			error:function(result){
				alert("添加时发生错误!");
			},
			beforeSend: function(){  
	            alert("上传等待中");
	        }, 
	        complete: function(){  
	        	alert("上传成功");
	        }
		}); 
		}else{
			alert("选择的文件无效！请重新选择");
		}
	}
});
//删除
$(document).on("click","#delBtn",function(){
	var id = $(this).attr("del-id");
	if(confirm("是否要删除?")){
		//删除 
		$.ajax({
			url:"case/deleteById",
			type:"GET",
			data:"case_id="+id,
			success:function(result){
				to_page(c_page);
			},
			error:function(result){
				alert("删除时错误，请重新尝试!");
			}
		});
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