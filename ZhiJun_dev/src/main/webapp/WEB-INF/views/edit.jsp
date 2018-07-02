<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Edit Page</title>
</head>
<body>
<h1 align="center">学生信息编辑</h1>
<form action="update" method="post">
	<table border="1" width="100%">
		<tr>
			<th>ID</th>
			<th>学生名称</th>
			<th>学生学号</th>
		</tr>
		<c:forEach items="${StudentById }" var="student">
			<tr>
		    <td><input type="text" readonly = "readonly" id="stuid" name="id" value="${student.id }"/></td>
		    <td><input type="text" id="stuname" name="name" value="${student.name }"/></td>
		    <td><input type="text" id="stunumber" name="numbers" value="${student.numbers }"/></td>
		    </tr>
		</c:forEach>
		<tr><td></td><td></td><td><input type="submit" value="提交"> <input type="reset" value="重置"></tr>
	</table>
</form>
</body>
</html>