<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored ="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试首页</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
<link rel="stylesheet" href="${APP_PATH }/js/front/css/font-awesome-4.7.0/css/font-awesome.min.css">
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
				<li class="li_focus">
					<a href="index">首页</a>
					
				</li>
				<li>
					<a href="Information">公司概况</a>
					
				</li>
				<li>
					<a href="product">产品服务</a>
					
				</li>
				<li>
					<a href="news">新闻中心</a>
					
				</li>
				<li>
					<a href="case">成功案例</a>
					
				</li>
				<li>
					<a href="recruitment">人才招聘</a>
					
				</li>
				<li>
					<a href="about">联系我们</a>
					
				</li>
			</ul>
		</nav>
	</div>
</header>
<!--主体-->
<main>
	<!--轮播-->
	<div class="div_lunbo div_mainly">
		<div id="intro" class="div_imgs div_display">
			<!--图1-->
			<div class="intro_item" target="_blank" style="background-image: url(${APP_PATH }/js/front/img/images/banner1.png)">
				<div class="div_zz"><!--遮罩-->
					<div class="caption">
						<p class="wow fadeInDown delay-02s" style="font-family:pmzdtitlefont">我们是</p>
						<div class="div_hr1" style=""></div>
						<p class="wow fadeInDown delay-05s" style="font-family: pmzdtitlefont">智能管理解决方案的先锋队</p>
						<div class="div_hr2" style=""></div>
						
					</div>
				</div>
			</div>
			<!--图2-->
			<div class="intro_item" target="_blank" style="background-image: url(${APP_PATH }/js/front/img/images/artificial.jpg)">
				<div class="div_zz"><!--遮罩-->
					<div class="caption">
						<p class="wow fadeInDown delay-02s" style="font-family:pmzdtitlefont">我们是</p>
						<div class="div_hr1" style=""></div>
						<p class="wow fadeInDown delay-05s" style="font-family: pmzdtitlefont">智能管理解决方案的先锋队</p>
						<div class="div_hr2" style=""></div>
						
					</div>
				</div>
			</div>
			<!--图3-->
			<div class="intro_item" target="_blank" style="background-image: url(${APP_PATH }/js/front/img/images/oil.jpg)">
				<div class="div_zz"><!--遮罩-->
					<div class="caption">
						<p class="wow fadeInDown delay-02s" style="font-family:pmzdtitlefont">我们是</p>
						<div class="div_hr1" style=""></div>
						<p class="wow fadeInDown delay-05s" style="font-family: pmzdtitlefont">智能管理解决方案的先锋队</p>
						<div class="div_hr2" style=""></div>
					
					</div>
				</div>
			</div>
		</div>
		<!--轮播底部按钮-->
		<div class="div_btn">
			<ul class="div_ul">
				<li id="first">1</li><li>2</li><li>3</li>
			</ul>
		</div>
	</div>