<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student list Page</title>
<%
	pageContext.setAttribute("APP_PATH",request.getContextPath());
%>
<script type="text/javascript" src="${APP_PATH }/js/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="${APP_PATH }/js/js/bootstrap.min.js"></script>
<link type="text/css" href="${APP_PATH }/js/lib/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
a{
cursor: pointer;
}
table{
border-collapse:collapse;
}
</style>
</head>
<body>
<div class="modal fade" id="myEditModel" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">学生编辑</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" id="myEditForm">
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">ID</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="EditstuId" name="id" readonly/>
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputPassword3" class="col-sm-2 control-label">学生姓名</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="EditstuName" name="stuname" placeholder="学生姓名必须，填写">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputPassword3" class="col-sm-2 control-label">学生学号</label>
		    <div class="col-sm-10">
		      <input type="number" class="form-control" id="EditstuNumber" name="stunumbers" placeholder="学生学号必须，只能填入数字，填写">
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
        <h4 class="modal-title">添加学生</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" id="myAddForm">
		  <div class="form-group">
		    <label for="inputPassword3" class="col-sm-2 control-label">学生姓名</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="AddstuName" name="stuname" placeholder="学生姓名必须，填写">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputPassword3" class="col-sm-2 control-label">学生学号</label>
		    <div class="col-sm-10">
		      <input type="number" class="form-control" id="AddstuNumber" name="stunumbers" placeholder="学生学号必须，只能填入数字，填写">
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
<h1 align="center">学生列表</h1>
<button class="btn btn-primary btn-lg" id="addpage"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加</button>
<table class="table table-hover" id="student_table">
		<thead>
		<tr>
			<th>ID</th>
			<th>学生名称</th>
			<th>学生学号</th>
			<th>操作</th>
		</tr>
		</thead>
		<tbody>
		
		</tbody>
</table>

<script type="text/javascript">
$(function(){to_page();});
function to_page(){
	$.ajax({
		url:"all",
		type:"POST",
		success:function(result){
			//1、解析数据
			build_student_table(result);
		},
	 error:function(e){
		 alert("error:"+e);
	 }
	});
}
function build_student_table(result){
	//构建先前情况table,empty掏空信息的方法
	$("#student_table tbody").empty();
	$.each(result,function(index,item){
		/* alert(item.name); */
		var idTd=$("<td></td>").append(item.id);
		var nameTd=$("<td></td>").append(item.stuname);
		var numbersTd=$("<td></td>").append(item.stunumbers);
		var editBtn=$("<button id='editBtn'></button>").addClass("btn btn-info btn-sm edit_btn").append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append(" 编辑");
		editBtn.attr("edit-id",item.id);
		
		var delBtn=$("<button id='delBtn'></button>").addClass("btn btn-danger btn-sm del_btn").append($("<span></span>").addClass("glyphicon glyphicon-trash")).append(" 删除");
		delBtn.attr("del-id",item.id);
		
		/* var editBtn=$("<a id='editBtn' onclick='edit("+item.id+")'>编辑</a>");
		
		var delBtn=$("<a id='delBtn' onclick='del("+item.id+")'> 删除</a>"); */
		
		var btnTd=$("<td></td>").append(editBtn).append(" ").append(delBtn);
		//append方法执行完以后还是回到原来的元素,也就是一个一个加进tr
		$("<tr></tr>").append(idTd).append(nameTd).append(numbersTd)
		.append(btnTd).appendTo("#student_table tbody");
	});
}
//编辑按钮绑定数据
function getEditDate(id){
	$.ajax({
		url:"updateStu",
		type:"GET",
		data:"id="+id,
		success:function(result){
			$.each(result,function(index,item){
				$("#EditstuId").val(item.id);
				$("#EditstuName").val(item.stuname);
				$("#EditstuNumber").val(item.stunumbers);
			});
		},
		error:function(result){
			alert("编辑学生绑定数据错误!");
		}
	});
}
//点击编辑按钮
$(document).on("click","#editBtn",function(){
	$("#EditstuId").val("");
	$("#EditstuName").val("");
	$("#EditstuNumber").val("");
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
	var id = $("#EditstuId").val();
	var name = $("#EditstuName").val();
	var number = $("#EditstuNumber").val();
	if(name == ""){
		alert("学生名称不能为空!");
	}else if(indexOf(name)){
		alert("学生名称不能含有空白字符!");
	}else if(number == 0 || number < 0){
		alert("学生学号不能小于或等于零!");
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
				alert("编辑学生学生时发生错误!");
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
	$("#AddstuName").val("");
	$("#AddstuNumber").val("");
	$("#myAddModel").modal({
		backdrop:'static'
	});
});
//点击保存按钮
$(document).on("click","#myAddBtn",function(){
	var name = $("#AddstuName").val();
	var number = $("#AddstuNumber").val();
	if(name == ""){
		alert("学生名称不能为空!");
	}else if(indexOf(name)){
		alert("学生名称不能含有空白字符!");
	}else if(number == 0 || number < 0){
		alert("学生学号不能小于或等于零!");
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
				alert("添加学生时发生错误!");
			}
		}); 
	}
});
//删除一个学生
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
			alert("删除学生错误，请重新尝试!");
		}
	});
});
</script>
<script type="text/javascript">
	/* function del(id){
		var result = confirm("是否删除?");
		if(result){
			window.location.href = "deleteById?id="+id;
		}
	}
	function edit(id){
		window.location.href = "updateStu?id="+id;
	} */
</script>
</body>
</html>