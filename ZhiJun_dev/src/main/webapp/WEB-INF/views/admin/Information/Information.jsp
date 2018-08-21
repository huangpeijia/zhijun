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
				    
				   
				   
				  <!--  <div class="page-title">
					   <span class="title">公司信息</span>					   
				   </div> -->
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
								  <label for="inputcomLogo" class="col-sm-2 control-label">Logo路径</label>	
								    <div class="col-sm-9">
								      <img id="oldPhoto" style="width:100px;height:100px"/><br/>原文件名：<span id="span_logo"></span>
								      <input id="EditcomLogo" type="file" accept="image/*" name="com_logo" />
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

$('#EditcomLogo').on('change',function(){
	var filePath = window.URL.createObjectURL(this.files[0]);
	$('#oldPhoto').attr("src",filePath);
 });
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
				$("#oldPhoto").attr("src","/upload/"+item.com_logo);
				$("#span_logo").html(item.com_logo);
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
	var formData = new FormData();
	var pro_photo = $('#EditcomLogo').get(0).files[0];
	var com_id=$("#EditcomId").val();
	com_id=parseInt(com_id);
	var com_name=$("#EditcomName").val();
	var old_photo = $("#oldPhoto")[0].src;
	var index = old_photo.lastIndexOf("\/");  
	old_photo = old_photo.substring(index + 1, old_photo.length);
    var com_contact=$("#EditcomContact").val();
	var com_number=$("#EditcomNumber").val();
	var com_address=$("#EditcomAddress").val();
	var com_code=$("#EditcomCode").val();
	var com_fax=$("#EditcomFax").val();
	var com_eamil=$("#EditcomEmail").val();
	var com_copyright=$("#EditcomCopyright").val();
	var com_profile=$("#EditcomProfile").val();
	var com_backdrop=$("#EditcomBackdrop").val();
	var com_time=$("#EditcomTime").val();
	var time=timesU(com_time);
	formData.append("com_id",com_id);
	formData.append("com_name",com_name);
	formData.append("old_photo",old_photo);
	formData.append("com_contact",com_contact);
	formData.append("com_number",com_number);
	formData.append("com_address",com_address);
	formData.append("com_code",com_code);
	formData.append("com_fax",com_fax);
	formData.append("com_eamil",com_eamil);
	formData.append("com_copyright",com_copyright);
	formData.append("com_profile",com_profile);
	formData.append("com_backdrop",com_backdrop);
	formData.append("com_time",com_time);
	formData.append("pro_photo",pro_photo);
	console.log(formData);
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
					data:formData,
					cache: false, 
					contentType: false, //不设置内容类型
					processData: false, //不处理数据
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