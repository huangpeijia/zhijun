<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>产品服务</title>
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
	   <%@ include file="../top.jsp" %> 
		<!-- 左边栏 -->
		<%@ include file="../left.jsp" %>
		
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
                       <div class="" id="upE" style="z-index:99999;width:600px;height:784px; background-color:rgba(0,0,0,0.5);position:absolute;display:none"><img src="${APP_PATH }/js/img/1.gif" style="position:absolute;left:230px;top:270px"></div>
                           <div class="modal-content">
                               <div class="modal-header">
                                   <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                   <h4 class="modal-title">产品编辑</h4>
                               </div>
                               <div class="modal-body">
                               <form class="form-horizontal" id="myEditForm" enctype="multipart/form-data">
		                           <div class="form-group">
		                               <label for="inputproId" class="col-sm-2 control-label">序号</label>	
		                              <div class="col-sm-9">
		                              <input type="text" class="form-control" id="EditproId" name="pro_id" readonly/>
		                              </div>
		                           </div>
		                           <div class="form-group">		
		                           <label for="inputproName" class="col-sm-2 control-label">产品名称</label>					  
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditproName" name="pro_name" placeholder="请输入产品名称">
								    </div>
								  </div>
								  <div class="form-group">
								  <label for="inputproPhoto" class="col-sm-2 control-label">照片路径</label>	
								    <div class="col-sm-9">
								      <img id="oldPhoto" style="width:100px;height:100px"/>
								      <input id="EditproPhoto" type="file" accept="image/*" name="pro_photo" />
								      <!-- <input type="text" class="form-control" id="EditproPhoto" name="pro_photo" placeholder="请输入照片路径"> -->
								    </div>
								  </div>								  
								   <div class="form-group">	
								   <label for="inputproConstant" class="col-sm-2 control-label">产品介绍</label>								  
								    <div class="col-sm-9">
								    	<div id="up_editor"></div> 
								      <textarea class="form-control textarea_a" id="EditproConstant" rows="3" name="pro_constant" style="display:none"></textarea>
								    </div>
								  </div>
								   <div class="form-group">	
								   <label for="inputproType" class="col-sm-2 control-label">产品类型</label>								  
								    <div class="col-sm-9">
								    	<select  id="update_type" name="pro_type">
										</select> 
								    </div>
								  </div>
								   <div class="form-group">	
								   <label for="inputproTime" class="col-sm-2 control-label">发布时间</label>								  
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditproTime" placeholder="请输入发布时间" readonly>
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
						  <div class="" id="upA" style="z-index:99999;width:600px;height:685px; background-color:rgba(0,0,0,0.5);position:absolute;display:none"><img src="${APP_PATH }/js/img/1.gif" style="position:absolute;left:230px;top:270px"></div>
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						        <h4 class="modal-title">添加产品信息</h4>
						      </div>
						      <div class="modal-body">
						        <form class="form-horizontal" id="myAddForm">
						      <div class="form-group">		
		                           <label for="inputproName" class="col-sm-2 control-label">产品名称</label>							  
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="AddproName" name="pro_name" placeholder="请输入产品名称">
								    </div>
								  </div>
								  <div class="form-group">
								  <label for="inputproPhoto" class="col-sm-2 control-label">照片路径</label>	
								    <div class="col-sm-9">
								      <img id="imgPhoto" style="width:100px;height:100px" src=""/>
								   	  <input id="AddproPhoto" type="file" accept="image/*" name="pro_photo" />
								      <!-- <input type="text" class="form-control" id="AddproPhoto" name="pro_photo" placeholder="请输入照片路径"> -->
								    </div>
								  </div>								  
								   <div class="form-group">	
								   <label for="inputproConstant" class="col-sm-2 control-label">产品介绍</label>								  
								    <div class="col-sm-9">
								   		<div id="editor"></div> 
								      <textarea class="form-control textarea_a" id="AddproConstant" rows="3" name="pro_constant"  style="display:none"></textarea>
								    </div>
								  </div>
								   <div class="form-group">	
								   <label for="inputproType" class="col-sm-2 control-label">产品类型</label>								  
								    <div class="col-sm-9">
								    	<select  id="insert_type" name="pro_type">
										</select> 
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
								   <table class="table" id="pro_table" >
								       <thead>
								          <tr>
								              <th>序号</th>
								              <th>产品名称</th>
								              <th>照片路径</th>
								              <th>产品介绍</th>
								              <th>产品类型</th>
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
var $text1 = $('#AddproConstant')
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
var $text2= $('#EditproConstant')
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
		url:"pro/all",
		type:"POST",
		data:"c_page="+c_page,
		success:function(result){ 
			//1、解析数据
			build_pro_table(result);
			pages("pro",c_page,7);
		},
	 error:function(e){
		 alert("error:"+e);
	 }
	});
}
//绑定编辑下拉框的类型
function protype(pro_type){  
	$.ajax({
		url:"protype/all_type",
		type:"POST",
		async: false,
		success:function(result){ 
			console.log(result); 
			$.each(result, function(index,item) { 
	            $("#update_type").append(  //此处向select中循环绑定数据
	    "<option value="+item.protype_id+">" + item.protype_name+ "</option>");
				if(pro_type==item.protype_id){
					$("#update_type option[value="+item.protype_id+"]").attr("selected",true);
				}
			});
			
			$('#update_type').next('span').remove();
			$('#update_type').removeAttr("tabindex class aria-hidden"); 
		},
	 error:function(e){
		 alert("error:"+e);
	 }
	}); 
}
//绑定显示的类型值
function protype_one(pro_id){
	var protype;
	$.ajax({
		url:"protype/one",
		type:"POST",
		data:"pro_id="+pro_id,
		async: false,
		success:function(result){ 
			$.each(result,function(index,item){
				protype=item.protype_name;
			}); 
		},
		error:function(e){
			alert("error:"+e);
		}
	});
	return protype;
}
//绑定新建下拉框的类型
function protype_insert(){  
	$.ajax({
		url:"protype/all_type",
		type:"POST",
		async: false,
		success:function(result){ 
			console.log(result); 
			$.each(result, function(index,item) { 
	            $("#insert_type").append(  //此处向select中循环绑定数据
	    "<option value="+item.protype_id+">" + item.protype_name+ "</option>");
			});
			
			$('#insert_type').next('span').remove();
			$('#insert_type').removeAttr("tabindex class aria-hidden"); 
		},
	 error:function(e){
		 alert("error:"+e);
	 }
	}); 
}
$('#AddproPhoto').on('change',function(){
	var filePath = window.URL.createObjectURL(this.files[0]);
	$('#imgPhoto').attr("src",filePath);
 });
 $('#EditproPhoto').on('change',function(){
		var filePath = window.URL.createObjectURL(this.files[0]);
		$('#oldPhoto').attr("src",filePath);
	 });
function build_pro_table(result){
	//构建先前情况table,empty掏空信息的方法
	$("#pro_table tbody").empty();
	$.each(result,function(index,item){
		var time=times(item.pro_time);
		item.pro_time=time;
		item.pro_type=protype_one(item.pro_type);
		var idTd=$("<td style='vertical-align:middle;'></td>").append(item.pro_id);
		var nameTd=$("<td style='vertical-align:middle;'></td>").append(item.pro_name);
		var photoTd=$("<td style='vertical-align:middle;'></td>").append($("<img ></img>").attr("src","/upload/"+item.pro_photo).attr("style","width:50px;height:50px;"));
		var constantTd=$("<td style='vertical-align:middle;'></td>").append(item.pro_constant.substring(0,20)+'...');
		var typeTd=$("<td style='vertical-align:middle;'></td>").append(item.pro_type);
		var timeTd=$("<td style='vertical-align:middle;'></td>").append(item.pro_time);
		var editBtn=$("<button id='editBtn'></button>").addClass("btn btn-info btn-sm edit_btn").append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append(" 编辑");
		editBtn.attr("edit-id",item.pro_id);
		
		var delBtn=$("<button id='delBtn'></button>").addClass("btn btn-danger btn-sm del_btn").append($("<span></span>").addClass("glyphicon glyphicon-trash")).append(" 删除");
		delBtn.attr("del-id",item.pro_id);
		
		/* var editBtn=$("<a id='editBtn' onclick='edit("+item.pro_id+")'>编辑</a>");
		
		var delBtn=$("<a id='delBtn' onclick='del("+item.pro_id+")'> 删除</a>"); */
		
		var btnTd=$("<td></td>").append(editBtn).append(" ").append(delBtn);
		//append方法执行完以后还是回到原来的元素,也就是一个一个加进tr
		$("<tr></tr>").append(idTd).append(nameTd).append(photoTd).append(constantTd).append(typeTd).append(timeTd)
		.append(btnTd).appendTo("#pro_table tbody");
	});
}
//编辑按钮绑定数据
function getEditDate(id){ 
	$.ajax({
		url:"pro/updatePro",
		type:"GET",
		data:"pro_id="+id,
		success:function(result){
			$.each(result,function(index,item){ 
				protype(item.pro_type);
				var time=times(item.pro_time);
				item.pro_time=time;
				$("#EditproId").val(item.pro_id);
				$("#EditproName").val(item.pro_name);
				$("#oldPhoto").attr("src","/upload/"+item.pro_photo);
				$("#EditproConstant").val(item.pro_constant);
				editor2.txt.html(item.pro_constant)
				$("#EditproTime").val(item.pro_time);
			});
		},
		error:function(result){
			alert("编辑绑定数据错误!");
		}
	});
}
//点击编辑按钮
$(document).on("click","#editBtn",function(){
	$("#EditproId").val("");
	$("#EditproName").val("");
	$("#EditproPhoto").val("");
	$("#EditproConstant").val("");
	$("#EditproTime").val("");
	$('#update_type').html("");
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
	var pro_photo = $('#EditproPhoto').get(0).files[0];
	var pro_id=$("#EditproId").val();
	pro_id=parseInt(pro_id);
	var pro_name=$("#EditproName").val();
	var pro_constant=$("#EditproConstant").val();
	var pro_type=$("#update_type").val();
	var pro_time=$("#EditproTime").val();
	var old_photo = $("#oldPhoto")[0].src;
	var index = old_photo .lastIndexOf("\/");  
	old_photo = old_photo.substring(index + 1, old_photo.length);
	formData.append("pro_id",pro_id);
	formData.append("pro_name",pro_name);
	formData.append("pro_constant",pro_constant);
	formData.append("pro_type",pro_type);
	formData.append("pro_time",pro_time); 
	formData.append("pro_photo",pro_photo);
	formData.append("old_photo",old_photo);
	if(pro_name == ""){
		alert("产品名称不能为空!");
	}else if(indexOf(pro_name)){
		alert("产品名称不能含有空白字符!");
	}else if(pro_constant==""){
		alert("产品介绍不能为空!");
	}else{
		 $.ajax({
			url:"pro/update",
			type:"POST",
			data:formData, 
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
	        	/* alert("上传等待中"); */
	        	$("#upE").show();
	        }, 
	        complete: function(){ 
	        	$("#upE").hide();
	        	/* alert("上传成功"); */
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
	$("#AddproName").val("");
	$("#AddproPhoto").val("");
	$("#imgPhoto").attr("src","${APP_PATH }/js/img/2.jpeg");
	$("#AddproConstant").val("");
	$('#insert_type').html("");
	$("#myAddModel").modal({
		backdrop:'static'
	});
	editor.txt.html(' ')
	protype_insert();
});
//点击保存按钮
$(document).on("click","#myAddBtn",function(){
	var formData = new FormData();
	var pro_upload = $('#AddproPhoto').get(0).files[0];
	var pro_name=$("#AddproName").val();
	var pro_constant=$("#AddproConstant").val();
	var pro_type=$("#insert_type").val();
	formData.append("pro_name",pro_name);
	formData.append("pro_upload",pro_upload);
	formData.append("pro_constant",pro_constant);
	formData.append("pro_type",pro_type);
	if(pro_name == ""){
		alert("产品名称不能为空!");
	}else if(indexOf(pro_name)){
		alert("产品名称不能含有空白字符!");
	}else if(pro_constant==""){
		alert("产品介绍不能为空!");
	}else{
		if("undefined" != typeof(pro_upload) && pro_upload != null && pro_upload != ""){
		 $.ajax({
			url:"pro/add",
			type:"POST",
			data:formData,
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
	            /* alert("上传等待中"); */
				$("#upA").show();
	        }, 
	        complete: function(){  
	        	$("#upA").hide();
	        	/* alert("上传成功"); */
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
			url:"pro/deleteById",
			type:"GET",
			data:"pro_id="+id,
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