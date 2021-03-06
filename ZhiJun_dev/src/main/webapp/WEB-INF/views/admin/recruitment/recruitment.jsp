<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>招聘信息</title>
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
                                   <h4 class="modal-title">招聘信息编辑</h4>
                               </div>
                               <div class="modal-body">
                               <form class="form-horizontal" id="myEditForm">
		                           <div class="form-group">
		                           <label for="inputrecId" class="col-sm-2 control-label">序号</label>
		                              <div class="col-sm-9">
		                              <input type="text" class="form-control" id="EditrecId" name="rec_id" readonly/>
		                              </div>
		                           </div>
		                           <div class="form-group">					
		                           <label for="inputrecName" class="col-sm-2 control-label">职位名称</label>				  
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditrecName" name="rec_name" placeholder="请输入职位名称">
								    </div>
								  </div>
								  <div class="form-group">
								  <label for="inputrecNum" class="col-sm-2 control-label">招聘人数</label>
								    <div class="col-sm-9">
								      <input type="number" class="form-control" id="EditrecNum" name="rec_num" placeholder="请输入招聘人数">
								    </div>
								  </div>								  
								   <div class="form-group">
								   <label for="inputrecAddress" class="col-sm-2 control-label">工作地点</label>								  
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditrecAddress" name="rec_address" placeholder="请输入工作地点">
								    </div>
								  </div>
								  <div class="form-group">	
								  <label for="inputrecClaim" class="col-sm-2 control-label">招聘要求</label>							  
								    <div class="col-sm-9">
								      <textarea class="form-control textarea_a" id="EditrecClaim" rows="3" name="rec_claim" placeholder="请输入招聘要求"></textarea>
								    </div>
								  </div>
								  <div class="form-group">	
								  <label for="inputrecSalary" class="col-sm-2 control-label">招聘薪资</label>							  
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditrecSalary" name="rec_salary" placeholder="请输入招聘薪资">
								    </div>
								  </div>
								   <div class="form-group">
								  <label for="inputrecClaim" class="col-sm-2 control-label">招聘类型</label>										  
								    <div class="col-sm-9">
								    	<select  id="rec_type_up" class="rec_type_up" style="height:25px" name="rec_type">
											<option value="0">校园招聘</option>
											<option value="1">社会招聘</option>
										</select> 
								    </div>
								  </div>
								   <div class="form-group">	
								   <label for="inputrecTime" class="col-sm-2 control-label">招聘时间</label>							  
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="EditrecTime" placeholder="请输入招聘时间" readonly>
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
						        <h4 class="modal-title">添加招聘信息</h4>
						      </div>
						      <div class="modal-body">
						        <form class="form-horizontal" id="myAddForm">
								  <div class="form-group">	
								  <label for="inputrecName" class="col-sm-2 control-label">职位名称</label>										  
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="AddrecName" name="rec_name" placeholder="请输入职位名称">
								    </div>
								  </div>
								  <div class="form-group">
								  <label for="inputrecNum" class="col-sm-2 control-label">招聘人数</label>
								    <div class="col-sm-9">
								      <input type="number" class="form-control" id="AddrecNum" name="rec_num" placeholder="请输入招聘人数">
								    </div>
								  </div>								   
								   <div class="form-group">	
								   <label for="inputrecAddress" class="col-sm-2 control-label">工作地点</label>										  
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="AddrecAddress" name="rec_address" placeholder="请输入工作地点">
								    </div>
								  </div>
								  <div class="form-group">
								  <label for="inputrecClaim" class="col-sm-2 control-label">招聘要求</label>										  
								    <div class="col-sm-9">
								      <textarea class="form-control textarea_a" id="AddrecClaim" rows="3" name="rec_claim" placeholder="请输入招聘要求"></textarea>
								    </div>
								  </div>
								   <div class="form-group">
								  <label for="inputrecClaim" class="col-sm-2 control-label">招聘类型</label>										  
								    <div class="col-sm-9">
								    	<select  id="rec_type" style="height:25px"  name="rec_type">
											<option value="0">校园招聘</option>
											<option value="1">社会招聘</option>
										</select> 
								    </div>
								  </div>
								  <div class="form-group">		
								  <label for="inputrecSalary" class="col-sm-2 control-label">招聘薪资</label>									  
								    <div class="col-sm-9">
								      <input type="text" class="form-control" id="AddrecSalary" name="rec_salary" placeholder="请输入招聘薪资">
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
					   <span class="title">招聘信息</span>
					   <!-- 添加按钮 -->
					   <button class="btn btn-primary btn-lg navbar-right" id="addpage" style="margin:0px"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加</button>
				   </div>
				   <div class="row">
					   <div class="col-xs-12">
						   <div class="card">							  
							   <div class="card-body">
								   <table class="table" id="index_table">
								       <thead>
								          <tr>
								              <th>序号</th>
								              <th>职位名称</th>
								              <th>招聘人数</th>
								              <th>招聘薪资</th>
								              <th>工作地点</th>
								              <th>招聘要求</th>
								              <th>招聘类型</th>
								              <th>招聘时间</th>
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
var c_page=1; //当前页数
$(function(){to_page(c_page);});
function to_page(c_page){
	$.ajax({
		url:"rec/all",
		type:"POST",
		data:"c_page="+c_page,
		success:function(result){  
			//1、解析数据
			build_rec_table(result);
			pages("rec",c_page,7); 
		},
	 error:function(e){
		 alert("error:"+e);
	 }
	});
}
function build_rec_table(result){
	//构建先前情况table,empty掏空信息的方法
	$("#index_table tbody").empty();
	$.each(result,function(index,item){
		var time=times(item.rec_time);
		item.rec_time=time;
		if(item.rec_type==0){
			item.rec_type='校园招聘';
		}else{
			item.rec_type='社会招聘';
		}
		var idTd=$("<td style='vertical-align:middle;'></td>").append(item.rec_id);
		var nameTd=$("<td style='vertical-align:middle;'></td>").append(item.rec_name);
		var numTd=$("<td style='vertical-align:middle;'></td>").append(item.rec_num);
		var timeTd=$("<td style='vertical-align:middle;'></td>").append(item.rec_salary);
		var addressTd=$("<td style='vertical-align:middle;'></td>").append(item.rec_address);
		var claimTd=$("<td style='vertical-align:middle;'></td>").append(item.rec_claim);
		var typeTd=$("<td style='vertical-align:middle;'></td>").append(item.rec_type);
		var salaryTd=$("<td style='vertical-align:middle;'></td>").append(item.rec_time);
		var editBtn=$("<button id='editBtn'></button>").addClass("btn btn-info btn-sm edit_btn").append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append(" 编辑");
		editBtn.attr("edit-id",item.rec_id);
		
		var delBtn=$("<button id='delBtn'></button>").addClass("btn btn-danger btn-sm del_btn").append($("<span></span>").addClass("glyphicon glyphicon-trash")).append(" 删除");
		delBtn.attr("del-id",item.rec_id);
		
		/* var editBtn=$("<a id='editBtn' onclick='edit("+item.rec_id+")'>编辑</a>");
		
		var delBtn=$("<a id='delBtn' onclick='del("+item.rec_id+")'> 删除</a>"); */
		
		var btnTd=$("<th></th>").append(editBtn).append(" ").append(delBtn);
		//append方法执行完以后还是回到原来的元素,也就是一个一个加进tr
		$("<tr></tr>").append(idTd).append(nameTd).append(numTd).append(timeTd).append(addressTd).append(claimTd).append(typeTd).append(salaryTd)
		.append(btnTd).appendTo("#index_table tbody");
	});
}
//编辑按钮绑定数据
function getEditDate(id){ 
	$.ajax({
		url:"rec/updateRec",
		type:"GET",
		data:"rec_id="+id,
		success:function(result){
			$.each(result,function(index,item){ 
				var time=times(item.rec_time);
				item.rec_time=time;
				$("#EditrecId").val(item.rec_id);
				$("#EditrecName").val(item.rec_name);
				$("#EditrecNum").val(item.rec_num);
				$("#EditrecTime").val(item.rec_time);
				$("#EditrecAddress").val(item.rec_address);
				$("#EditrecClaim").val(item.rec_claim); 
				$("#rec_type_up option[value="+item.rec_type+"]").attr("selected",true);
				$("#EditrecSalary").val(item.rec_salary);
			});
		},
		error:function(result){
			alert("编辑绑定数据错误!");
		}
	});
}
//点击编辑按钮
$(document).on("click","#editBtn",function(){
	$("#EditrecId").val("");
	$("#EditrecName").val("");
	$("#EditrecNum").val("");
	$("#EditrecTime").val("");
	$("#EditrecAddress").val("");
	$("#EditrecClaim").val("");
	$("#EditrecSalary").val("");
	$('#rec_type_up').next('span').remove();
	$('#rec_type_up').removeAttr("tabindex class aria-hidden"); 
	$('#rec_type_up').html("");
	$('#rec_type_up').append("<option value=0>校园招聘</option>");
	$('#rec_type_up').append("<option value=1>社会招聘</option>");
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
	var rec_id=$("#EditrecId").val();
	var rec_name=$("#EditrecName").val();
	var rec_num=$("#EditrecNum").val();
	var rec_address=$("#EditrecAddress").val();
	var rec_claim=$("#EditrecClaim").val();
	var rec_salary=$("#EditrecSalary").val();
	var rec_time=$("#EditrecTime").val();
	if(rec_name == ""){
		alert("职位名称不能为空!");
	}else if(indexOf(rec_name)){
		alert("职位名称不能含有空白字符!");
	}else if(rec_num < 0){
		alert("招聘人数不能小于零!");
	}else{
		 $.ajax({
			url:"rec/update",
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
	$("#AddrecName").val("");
	$("#AddrecNum").val("");
	$("#AddrecTime").val("");
	$("#AddrecAddress").val("");
	$("#AddrecClaim").val("");
	$("#AddrecSalary").val("");
	$('#rec_type').next('span').remove();
	$('#rec_type').removeAttr("tabindex class aria-hidden"); 
	$('#rec_type').html("");
	$('#rec_type').append("<option value=0>校园招聘</option>");
	$('#rec_type').append("<option value=1>社会招聘</option>");
	$("#myAddModel").modal({
		backdrop:'static'
	});
});
//点击保存按钮
$(document).on("click","#myAddBtn",function(){
	var rec_name=$("#AddrecName").val();
	var rec_num=$("#AddrecNum").val();
	var rec_time=$("#AddrecTime").val();
	var rec_address=$("#AddrecAddress").val();
	var rec_claim=$("#AddrecClaim").val();
	var rec_salary=$("#AddrecSalary").val();
	if(rec_name == ""){
		alert("职位名称不能为空!");
	}else if(indexOf(rec_name)){
		alert("职位名称不能含有空白字符!");
	}else if(rec_num < 0){
		alert("招聘人数不能小于零!");
	}else{ 
		 $.ajax({
			url:"rec/add",
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
			url:"rec/deleteById",
			type:"GET",
			data:"rec_id="+id,
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