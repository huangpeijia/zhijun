<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>类型管理</title>
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
	   <%@ include file="../top.jsp" %> 
		<!-- 左边栏 -->
		<%@ include file="../left.jsp" %>
		   
		   
		   <!--内容-->
		  <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title"></span>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">类型管理</div>
                                    </div>
                                </div>
                                <div class="card-body no-padding">
                                    <div role="tabpanel">
                                        <!-- Nav tabs -->
                                        <ul class="nav nav-tabs" role="tablist"> 
                                            <li role="presentation" class="active"><a href="#new" aria-controls="new" role="tab" data-toggle="tab">新闻</a></li>
                                            <li role="presentation"><a href="#product" aria-controls="product" role="tab" data-toggle="tab">产品</a></li>
                                            <li role="presentation"><a href="#case" aria-controls="case" role="tab" data-toggle="tab">案例</a></li>
                                        </ul>
                                        <!-- Tab panes -->
                                        <div class="tab-content"> 
                                        	<!-- 新闻类型 -->
                                            <div role="tabpanel" class="tab-pane active">
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
										                           <label for="inputnewtypeId" class="col-sm-3 control-label">新闻类型编号</label>					  
																    <div class="col-sm-8">
																      <input type="number" class="form-control" id="EditnewtypeId" name="newtype_id"  readonly>
																    </div>
																  </div> 								  
																   <div class="form-group">	
																   <label for="inputnewtypeName" class="col-sm-3 control-label">新闻类型名称</label>								  
																    <div class="col-sm-8"> 
																    <div id="up_editor"></div> 
																    	<input type="text" class="form-control" id="EditnewtypeName" name="newtype_name" placeholder="请输入新闻类型名称">
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
													        <h4 class="modal-title">添加新闻类型</h4>
													      </div>
													      <div class="modal-body">
													        <form class="form-horizontal" id="myAddForm">
													      <div class="form-group">		
									                           <label for="inputnewtypeName" class="col-sm-3 control-label">新闻类型编号</label>							  
															    <div class="col-sm-8">
															      <input type="number" class="form-control" id="AddnewtypeId" name="newtype_id" placeholder="请输入新闻类型编号">
															    </div>
															  </div> 							  
															   <div class="form-group">	
															   <label for="inputnewsConstant" class="col-sm-3 control-label">新闻类型名称</label>								  
															    <div class="col-sm-8">
															     <div id="editor"></div> 
															       <input type="text" class="form-control" id="AddnewtypeName" name="newtype_name" placeholder="请输入新闻类型名称">
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
													   <span class="title"></span>
													   <!-- 添加按钮 -->
													   <button class="btn btn-primary btn-lg navbar-right" id="addpage" style="margin:0px"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加</button>
												   </div> 
												   <div class="row">
													   <div class="col-xs-12">
														   <div class="card">							  
															   <div class="card-body">
																   <table class="table" id="newtype_table" >
																       <thead>
																          <tr>
																              <th>序号</th>
																              <th>新闻类型编号</th> 					          
																              <th>新闻类型名称</th> 
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
                                              
                                              
                                            <!-- 产品类型 -->  
                                            <div role="tabpanel" class="tab-pane" id="product">
                                           	试试撒大声地所                                          
                                           	  </div>
                                           	  
                                           	  
                                           	  
                                           	<!-- 案例类型 -->  
                                            <div role="tabpanel" class="tab-pane" id="case">
                                                in futurum.
                                            </div>
                                        </div>
                                    </div>
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
    <div>
<script type="text/javascript" src="${APP_PATH }/js/js/jquery-3.2.1.js"></script>
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

var c_page=1;//当前页数 
$(function(){to_page();});
function to_page(){
	newtype_all(c_page);
}

function newtype_all(c_page){
	$.ajax({
		url:"type/all",
		type:"POST",
		data:"c_page="+c_page,
		success:function(result){  
			//1、解析数据
			console.log(result); 
			newtype_table(result);
			pages("newtype",c_page);
		},
	 error:function(e){
		 alert("error:"+e);
	 }
	});
}
//绑定数据
function newtype_table(result){
	//构建先前情况table,empty掏空信息的方法
	$("#newtype_table tbody").empty();
	$.each(result,function(index,item){ 
		var idTd=$("<td style='vertical-align:middle;'></td>").append(++index);  
		var typeTd=$("<td style='vertical-align:middle;'></td>").append(item.newtype_id);  
		var nameTd=$("<td style='vertical-align:middle;'></td>").append(item.newtype_name.substring(0,20)+'...'); 
		var editBtn=$("<button id='editBtn'></button>").addClass("btn btn-info btn-sm edit_btn").append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append(" 编辑");
		editBtn.attr("edit-id",item.newtype_id);
		
		var delBtn=$("<button id='delBtn'></button>").addClass("btn btn-danger btn-sm del_btn").append($("<span></span>").addClass("glyphicon glyphicon-trash")).append(" 删除");
		delBtn.attr("del-id",item.id);
		
		/* var editBtn=$("<a id='editBtn' onclick='edit("+item.news_id+")'>编辑</a>");
		
		var delBtn=$("<a id='delBtn' onclick='del("+item.news_id+")'> 删除</a>"); */
		
		var btnTd=$("<td></td>").append(editBtn).append(" ").append(delBtn);
		//append方法执行完以后还是回到原来的元素,也就是一个一个加进tr
		$("<tr></tr>").append(idTd).append(typeTd).append(nameTd)
		.append(btnTd).appendTo("#newtype_table tbody");
	});
}
//打开新闻添加模态框
$(document).on("click","#addpage",function(){
	$("#AddnewtypeId").val("");
	$("#AddnewtypeName").val(""); 
	$("#myAddModel").modal({
		backdrop:'static'
	});  
});
//点击新闻保存按钮
$(document).on("click","#myAddBtn",function(){ 
	var newtype_id=$("#AddnewtypeId").val();
	var newtype_name=$("#AddnewtypeName").val();
	if(newtype_id == ""){
		alert("新闻标题不能为空!");
	}else if(indexOf(newtype_id)){
		alert("新闻标题不能含有空白字符!");
	}else if(newtype_name==""){
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
//点击新闻编辑按钮
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
//编辑新闻按钮绑定数据
function getEditDate(id){  
	$.ajax({
		url:"newtype/one",
		type:"POST",
		data:"new_id="+id,
		success:function(result){
			$.each(result,function(index,item){ 
				$("#EditId").val(item.id);
				$("#EditnewtypeId").val(item.newtype_id); 
				$("#EditnewtypeName").val(item.newtype_name);   
			});
		},
		error:function(result){
			alert("编辑绑定数据错误!");
		}
	});
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
		var replace_user_pass=replacement(user_pass); 
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
						if(replace_user_pass!=item.userpassword){
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
	var replaces;
	function replacement(replace){
		$.ajax({
			url:"user/replacement",
			type:"POST", 
			async:false,
			data:"replacement="+replace,
			success:function(result){
				replaces=result;
			},
			error:function(result){
				alert("添加时发生错误!");
			}
		}); 
		return replaces;
	}
</script>
</body>
</html>