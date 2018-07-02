<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Add Page</title>
<script type="text/javascript" src="./js/jquery-3.2.1.js"></script>
</head>
<body>
<h1 align="center">学生添加</h1>
<form action="add" method="post">
<table border="1" width="100%">
<tr><td>学生姓名</td><td><input type="text" name="stuname" id="stuname"></td></tr>
<tr><td>学生学号</td><td><input type="text" name="stunumber" id="stunumber"></td></tr>
<tr><td></td><td><input type="submit" value="提交">  <input type="reset" value="重置"></td></tr>
</table>
</form>
<script type="text/javascript">
	function reset(){
		$("#stuname").val("");
		$("#stunumber").val("");
	}
</script>
</body>
</html>