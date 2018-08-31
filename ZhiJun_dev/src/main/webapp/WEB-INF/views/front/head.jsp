<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored ="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:forEach items="${requestScope.info}" var="info">
<title>${info.com_name}</title>
</c:forEach>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<link rel="shortcut icon" href="${APP_PATH }/js/front/img/images/icon_logo.png"><!-- 标题小图标 -->
<link rel="stylesheet" href="${APP_PATH }/js/front/css/font-awesome-4.7.0/css/font-awesome.min.css"/>
<link rel="stylesheet" href="${APP_PATH }/js/front/css/index.css"/>
<link rel="stylesheet" href="${APP_PATH }/js/front/css/animate.css"/>
<link rel="stylesheet" href="${APP_PATH }/js/front/lib/fonts/pmzdtitlefont/pmzdtitlefont.css"/>
<link rel="stylesheet" href="${APP_PATH }/js/front/lib/fonts/SourceHanSansCN-Bold/SourceHanSansCN-Bold.css"/>
</head>
<body style="background-color:#eeeeee">
<!--头部-->
<header class="transparent" id="transparent">
	<div class="div_header cf">
		<div class="div_logo float_l">
			<c:forEach items="${requestScope.info}" var="logo">
			<h1 class="h1_logo"><img src="${APP_PATH }/upload/${logo.com_logo}" style="width:116px;height:26px;"> <!--<a href="index.html">智钧时代</a>--></h1>
		    </c:forEach>
		</div>
		<nav class="float_r">
			<ul class="ul_nav float_r">
				<li>
					<a href="/index">首页</a>
					
				</li>
				<li>
					<a href="/Information">公司概况</a>
					
				</li>
				<li>
					<a href="/product">产品服务</a>
					
				</li>
				<li>
					<a href="/news">新闻中心</a>
					
				</li>
				<li>
					<a href="/case">成功案例</a>
					
				</li>
				<li>
					<a href="/recruitment">人才招聘</a>
					
				</li>
				<li>
					<a href="/about">联系我们</a>
					
				</li>
			</ul>
		</nav>
	</div>
</header>
