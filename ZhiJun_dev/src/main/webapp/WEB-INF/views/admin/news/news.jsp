<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>新闻中心</title>
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
                           <div class="modal-content">
                               <div class="modal-header">
                                   <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                   <h4 class="modal-title">新闻信息编辑</h4>
                               </div>
                               <div class="modal-body">
                               <form class="form-horizontal" id="myEditForm">
		                           <div class="form-group">
		                               <label for="inputnewsId" class="col-sm-2 control-label">序号</label>	
		                              <div class="col-sm-9">
		                              <input type="text" class="form-control" id="EditnewsId" name="news_id" readonly/>
		                              </div>
		                           </div>
		                           <div class="form-group">		
		                           <label for="inputnewsTitle" class="col-sm-2 control-label">新闻标题</label>					  
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditnewsTitle" name="news_title" placeholder="请输入新闻标题">
								    </div>
								  </div>
								 <!--  <div class="form-group">
								  <label for="inputnewsPhoto" class="col-sm-2 control-label">照片路径</label>	
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditnewsPhoto" name="news_photo" placeholder="请输入照片路径">
								    </div>
								  </div> -->								  
								   <div class="form-group">	
								   <label for="inputnewsConstant" class="col-sm-2 control-label">新闻内容</label>								  
								    <div class="col-sm-9"> 
								    <div id="up_editor"></div> 
								      <textarea class="form-control textarea_a" id="EditnewsConstant" rows="3" name="news_constant" style="display:none" ></textarea>
								    </div>
								  </div>
								  <div class="form-group">	
								   <label for="inputnewType" class="col-sm-2 control-label">产品类型</label>								  
								    <div class="col-sm-9">
								    	<select  id="update_type" name="news_type">
										</select> 
								    </div>
								  </div>
								   <div class="form-group">	
								   <label for="inputnewsTime" class="col-sm-2 control-label">发布时间</label>								  
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditnewsTime" placeholder="请输入发布时间" readonly>
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
						        <h4 class="modal-title">添加新闻信息</h4>
						      </div>
						      <div class="modal-body">
						        <form class="form-horizontal" id="myAddForm">
						      <div class="form-group">		
		                           <label for="inputnewsTitle" class="col-sm-2 control-label">新闻标题</label>							  
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="AddnewsTitle" name="news_title" placeholder="请输入新闻标题">
								    </div>
								  </div> 							  
								   <div class="form-group">	
								   <label for="inputnewsConstant" class="col-sm-2 control-label">新闻内容</label>								  
								    <div class="col-sm-9">
								     <div id="editor"></div> 
								      <textarea class="form-control textarea_a" id="AddnewsConstant" rows="3" name="news_constant" style="display:none" ></textarea>
								    </div>
								  </div>
								 <div class="form-group">	
								   <label for="inputnewType" class="col-sm-2 control-label">产品类型</label>								  
								    <div class="col-sm-9">
								    	<select  id="insert_type" name="news_type">
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
					   <span class="title">新闻中心</span>
					   <!-- 添加按钮 -->
					   <button class="btn btn-primary btn-lg navbar-right" id="addpage" style="margin:0px"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加</button>
				   </div> 
				   <div class="row">
					   <div class="col-xs-12">
						   <div class="card">							  
							   <div class="card-body">
								   <table class="table" id="news_table" >
								       <thead>
								          <tr>
								              <th>序号</th>
								              <th>新闻标题</th>
								              <!-- <th>照片路径</th> -->
								              <th>新闻内容</th>							          
								              <th>新闻类型</th>
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
var $text1 = $('#AddnewsConstant')
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
var $text2 = $('#EditnewsConstant')
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
		url:"news/all",
		type:"POST",
		data:"c_page="+c_page,
		success:function(result){ 
			//1、解析数据
			build_news_table(result);
			pages("news",c_page,7);
		},
	 error:function(e){
		 alert("error:"+e);
	 }
	});
}
//绑定编辑下拉框的类型
function newtype(new_type){  
	$.ajax({
		url:"newtype/all_type",
		type:"POST",
		async: false,
		success:function(result){ 
			console.log(result); 
			$.each(result, function(index,item) { 
	            $("#update_type").append(  //此处向select中循环绑定数据
	    "<option value="+item.newtype_id+">" + item.newtype_name+ "</option>");
				if(new_type==item.newtype_id){
					$("#update_type option[value="+item.newtype_id+"]").attr("selected",true);
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
function newtype_one(new_id){
	var newtype; 
	$.ajax({
		url:"newtype/one",
		type:"POST",
		data:"new_id="+new_id,
		async: false,
		success:function(result){ 
			$.each(result,function(index,item){
				newtype=item.newtype_name;
			}); 
		},
		error:function(e){
			alert("error:"+e);
		}
	});
	return newtype;
}
//绑定新建下拉框的类型
function newtype_insert(){  
	$.ajax({
		url:"newtype/all_type",
		type:"POST",
		async: false,
		success:function(result){ 
			console.log(result); 
			$.each(result, function(index,item) { 
	            $("#insert_type").append(  //此处向select中循环绑定数据
	    "<option value="+item.newtype_id+">" + item.newtype_name+ "</option>");
			});
			
			$('#insert_type').next('span').remove();
			$('#insert_type').removeAttr("tabindex class aria-hidden"); 
		},
	 error:function(e){
		 alert("error:"+e);
	 }
	}); 
}
function build_news_table(result){
	//构建先前情况table,empty掏空信息的方法
	$("#news_table tbody").empty();
	$.each(result,function(index,item){
		var time=times(item.news_time);
		item.news_time=time;
		item.news_type=newtype_one(item.news_type);
		var idTd=$("<td style='vertical-align:middle;'></td>").append(item.news_id);
		var titleTd=$("<td style='vertical-align:middle;'></td>").append(item.news_title);
		/* var photoTd=$("<td style='vertical-align:middle;'></td>").append(item.news_photo); */
		var constantTd=$("<td style='vertical-align:middle;'></td>").append(item.news_constant.substring(0,20)+'...');
		var timeTd=$("<td style='vertical-align:middle;'></td>").append(item.news_time);
		var typeTd=$("<td style='vertical-align:middle;'></td>").append(item.news_type);
		var editBtn=$("<button id='editBtn'></button>").addClass("btn btn-info btn-sm edit_btn").append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append(" 编辑");
		editBtn.attr("edit-id",item.news_id);
		
		var delBtn=$("<button id='delBtn'></button>").addClass("btn btn-danger btn-sm del_btn").append($("<span></span>").addClass("glyphicon glyphicon-trash")).append(" 删除");
		delBtn.attr("del-id",item.news_id);
		
		/* var editBtn=$("<a id='editBtn' onclick='edit("+item.news_id+")'>编辑</a>");
		
		var delBtn=$("<a id='delBtn' onclick='del("+item.news_id+")'> 删除</a>"); */
		
		var btnTd=$("<td></td>").append(editBtn).append(" ").append(delBtn);
		//append方法执行完以后还是回到原来的元素,也就是一个一个加进tr
		$("<tr></tr>").append(idTd).append(titleTd).append(constantTd).append(typeTd).append(timeTd)
		.append(btnTd).appendTo("#news_table tbody");
	});
}
//编辑按钮绑定数据
function getEditDate(id){ 
	$.ajax({
		url:"news/updateNews",
		type:"GET",
		data:"news_id="+id,
		success:function(result){
			$.each(result,function(index,item){ 
				newtype(item.news_type);
				var time=times(item.news_time);
				item.news_time=time;
				$("#EditnewsId").val(item.news_id);
				$("#EditnewsTitle").val(item.news_title);
				/* $("#EditnewsPhoto").val(item.qua_photo); */
				$("#EditnewsConstant").val(item.news_constant);
				editor2.txt.html(item.news_constant) 
				$("#EditnewsTime").val(item.news_time);
			});
		},
		error:function(result){
			alert("编辑绑定数据错误!");
		}
	});
}
//点击编辑按钮
$(document).on("click","#editBtn",function(){
	$("#EditnewsId").val("");
	$("#EditnewsTitle").val("");
	/* $("#EditnewsPhoto").val(""); */
	$("#EditnewsConstant").val("");	
	$("#EditnewsTime").val("");
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
	var news_id=$("#EditnewsId").val();
	var news_title=$("#EditnewsTitle").val();
	var news_constant=$("#EditnewsConstant").val();
	var news_type=$("#update_type").val();
	var news_time=$("#EditnewsTime").val();
	if(news_title == ""){
		alert("新闻标题不能为空!");
	}else if(indexOf(news_title)){
		alert("新闻标题不能含有空白字符!");
	}else if(news_constant==""){
		alert("新闻内容不能为空!");
	}else{
		 $.ajax({
			url:"news/update",
			type:"POST",
			data:$("#myEditForm").serialize(),
			success:function(result){
				$("#myEditModel").modal('hide');//隐藏模态框
				to_page(c_page);//显示全部
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
	$("#AddnewsTitle").val("");
	/* $("#AddnewsPhoto").val(""); */
	$("#AddnewsConstant").val("");
	$('#insert_type').html("");
	$("#myAddModel").modal({
		backdrop:'static'
	});
	editor.txt.html(' ')
	newtype_insert();
});
//点击保存按钮
$(document).on("click","#myAddBtn",function(){ 
	var news_title=$("#AddnewsTitle").val();
	var news_constant=$("#AddnewsConstant").val();
	var news_type=$("#insert_type").val(); 
	if(news_title == ""){
		alert("新闻标题不能为空!");
	}else if(indexOf(news_title)){
		alert("新闻标题不能含有空白字符!");
	}else if(news_constant==""){
		alert("新闻内容不能为空!");
	}else{
		 $.ajax({
			url:"news/add",
			type:"POST",
			data:$("#myAddForm").serialize(),
			success:function(result){
				$("#myAddModel").modal('hide');
				to_page(c_page);
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
	if(confirm("是否要删除?")){
		//删除 
		$.ajax({
			url:"news/deleteById",
			type:"GET",
			data:"news_id="+id,
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