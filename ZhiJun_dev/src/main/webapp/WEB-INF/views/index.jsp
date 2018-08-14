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
				<li>
					<a href="index.html">首页</a>
					
				</li>
				<li>
					<a href="index.html">公司概况</a>
					
				</li>
				<li>
					<a href="index.html">产品服务</a>
					
				</li>
				<li>
					<a href="index.html">新闻中心</a>
					
				</li>
				<li>
					<a href="index.html">成功案例</a>
					
				</li>
				<li>
					<a href="index.html">人才招聘</a>
					
				</li>
				<li>
					<a href="index.html">联系我们</a>
					
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
	<!--内容-->
	<div id="main" class="">
		<div class="div_main">
			<!--层1-->
			<div>
				<div class="div_title">智钧特色</div>
				<div class="div_content cf">
					<ul class="ul_feature">
						<li class=" ">
							<a href="javascript:void(none)">
								<img src="${APP_PATH }/js/front/img/images/ts1.png">
								<div class="wow pulse delay-04s"><span>专业核心竞争力</span></div>
							</a>
						</li>
						<li class="">
							<a href="#">
								<img src="${APP_PATH }/js/front/img/images/ts2.png">
								<div class="wow pulse delay-04s"><span>工业级互联网思维</span></div>
							</a>
						</li>
						<li class="">
							<a href="#">
								<img src="${APP_PATH }/js/front/img/images/ts3.png">
								<div class="wow pulse delay-04s"><span>极致化服务</span></div>
							</a>
						</li>
						<li class="">
							<a href="#">
								<img src="${APP_PATH }/js/front/img/images/ts4.png">
								<div class="wow pulse delay-04s"><span>工业领域大数据挖掘</span></div>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<!--层2-->
			<div>
				<div class="div_title">公司产品</div>
				<div class="div_content pro cf">
					<div class="div_pro1 div_title_opacity">
						<img src="${APP_PATH }/upload/${pro[0].pro_photo}"/>
						<div class="pro_span">
							<div class="" >
								<span>${pro[0].pro_constant}</span>
							</div>
						</div>
						<div class="pro_span_title">${pro[0].pro_name}</div>
					</div>
					<div class="">
						<div class="div_pro2 div_title_opacity">
							<img src="${APP_PATH }/upload/${pro[1].pro_photo}"/>
							<div class="pro_span">
								<div class="">
									<span>${pro[1].pro_constant}</span>
								</div>
							</div>
							<div class="pro_span_title">${pro[1].pro_name}</div>
						</div>
						<div class="div_pro3 div_title_opacity">
							<img src="${APP_PATH }/upload/${pro[2].pro_photo}"/>
							<div class="pro_span">
								<div class="">
									<span>${pro[2].pro_constant}</span>

								</div>
							</div>
							<div class="pro_span_title">${pro[2].pro_name}</div>
						</div>
					</div>
					<div class="">
						<div class="div_pro4 div_title_opacity">
							<img src="${APP_PATH }/upload/${pro[3].pro_photo}"/>
							<div class="pro_span">
								<div class="">
									<span>${pro[3].pro_constant}</span>
								</div>
							</div>
							<div class="pro_span_title">${pro[3].pro_name}</div>
						</div>
						<div class="pro_more">
							<a href="#">更多</a>
						</div>
					</div>
				</div>
			</div>
			<!--层3-->
			<div>
				<div class="div_title">公司新闻</div>
				<div class="div_content cf">
					<div class="float_l">
						<ul class="ul_news cf">
						<c:forEach items="${requestScope.news}" var="news">
							<li><a href="#"><span>${news.news_title}</span>
							<span><fmt:formatDate value="${news.news_time}" pattern="yyyy-MM-dd"/></span>
							</a></li>
							</c:forEach>
						</ul>
						<a href="#" class="news_more float_r ">更多>></a>
					</div>
					<video id="media" class="div_video float_r" poster="${APP_PATH }/js/front/img/images/video_index.png" controls>
						<source src="${APP_PATH }/video/${video_path}" type="video/mp4">
					</video>
				</div>
			</div>
			<!--层4-->
			<div class="">
				<div class="div_title">成功案例</div>
				<div class="div_content cf">
					<ul class="ul_case">
					<c:forEach items="${requestScope.cases}" var="cases">
						<a href="#" class="">
							<li class="">
								<img src="${APP_PATH }/upload/${cases.case_photo}" class=""/>
								<div class="div_case float_r">
									<div class="case_title cf"><span>${cases.case_name}</span>
									<span class=""><fmt:formatDate value="${cases.case_time}" pattern="yyyy-MM-dd"/></span></div>
									<div class="case_content">${cases.case_constant}</div>
								</div>
							</li>
						</a>
						</c:forEach> 
					</ul>
					<div class="case_more">
						<a href="#" class="">查看更多</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
<!--尾部-->
<div class="div_footer">
	<!--上-->
	<div class="top_footer cf">
		<div class="">
			<ul>
				<li><a href="#">网站首页</a></li>
				
			</ul>
		</div>
		<div class="">
			<ul>
				<li><a href="#">成功案例</a></li>
				
			</ul>
		</div>
		<div class="">
			<ul>
				<li><a href="condition.html">公司概况</a></li>
				
			</ul>
		</div>
		<div class="">
			<ul>
				<li><a href="#">人才招聘</a></li>
				
			</ul>
		</div>
		<div class="">
			<ul>
				<li><a href="#">产品服务</a></li>
			
			</ul>
		</div>
		<div class="">
			<ul>
				<li><a href="#">联系我们</a></li>
			
			</ul>
		</div>
	</div>
	<!--中-->
	<c:forEach items="${requestScope.info}" var="info">
	<div class="center_footer cf">
		<div class="footer_img float_l">
			
			<img src="${APP_PATH }/js/front/img/images/map_haiwangdasha.png" usemap="#haiwangmap" class="img_haiwang"/>
			<map name="haiwangmap">
				<area shape ="rect" coords ="0,0,380,260" href ="https://map.baidu.com/?newmap=1&shareurl=1&l=19&tn=B_NORMAL_MAP&hb=B_SATELLITE_STREET&c=12683110,2557738&s=s%26da_src%3DsearchBox.button%26wd%3D%E6%B5%B7%E7%8E%8B%E5%A4%A7%E5%8E%A6-A%E5%BA%A7%26c%3D340%26src%3D0%26wd2%3D%E6%B7%B1%E5%9C%B3%E5%B8%82%E5%8D%97%E5%B1%B1%E5%8C%BA%26pn%3D0%26sug%3D1%26l%3D12%26from%3Dwebmap%26biz_forward%3D%7B%22scaler%22%3A2%2C%22styles%22%3A%22pl%22%7D%26sug_forward%3Da727d4e563e58aaaf4eafc79%26auth%3DzLcMxJTXYwNec1c5Og4wyR8CTXXdTzGYuxHBBRVEzTxtwi04vy77ucvY1SGpuztFHhxQ7E%40Z5Z3%40wWv1cv3uVtGccZcuVtPWv3GuxtVwi04960vy777777777uWvPYuxt8zv7u%40ZPuVteuVtegvcguxHBBRVEzRxtfiKKvyyuC00dEb%26device_ratio%3D2" target="_blank" />
			</map>
		</div>
		<div class="footer_center float_r">
			<ul>
				<li>地址：${info.com_address}</li>
				<li>电话：${info.com_number}</li>
				<li>传真：${info.com_fax}</li>
				<li>Email：${info.com_email}</li>
			</ul>
		</div>
	</div>
	<!--下 版权信息-->
	<div class="bottom_footer">
		<p class="">${info.com_name}&nbsp;&copy;版权所有 ${info.com_copyright}</p>
	</div>
	</c:forEach>
</div>
<div class="arrows_top"><a href="#transparent"><span class="fa fa-chevron-up"></span></a></div><!--置顶-->

<script src="${APP_PATH }/js/front/js/wow.js"></script>
<script src="${APP_PATH }/js/front/js/jquery-3.3.1.min.js"></script>
<script src="${APP_PATH }/js/front/js/lunbo.js"></script>
<script>
	wow = new WOW({
		animateClass: 'animated',
	});
	wow.init();
	
	$(function(){
		$(".pro_span>div>span").each(function(){
			var maxwidth=60;
			if($(this).text().length>maxwidth){
				$(this).text($(this).text().substring(0,maxwidth));
				$(this).html($(this).html()+'...');
			}
		});
	});

</script>
</body>
</html>