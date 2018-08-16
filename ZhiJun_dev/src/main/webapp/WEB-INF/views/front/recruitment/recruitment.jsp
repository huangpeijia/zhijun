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
			<h1 class="h1_logo"><img src="${APP_PATH }/js/front/img/images/logo.png"> <!--<a href="index.html">智钧时代</a>--></h1>
		</div>
		<nav class="float_r">
			<ul class="ul_nav float_r">
				<li>
					<a href="index.html">首页</a>
					<!--<ul class="sub-menu">
						<li><a href="javascript:void(none);">产品&服务</a></li>
						<li><a href="javascript:void(none);">荣誉资质</a></li>
						<li><a href="javascript:void(none);">公司介绍</a></li>
					</ul>-->
				</li>
				<li>
					<a href="condition.html">公司概况</a>
					<!--<ul class="sub-menu s_news">
						<li><a href="javascript:void(none);">公司新闻</a></li>
						<li><a href="javascript:void(none);">行业动态</a></li>
					</ul>-->
				</li>
				<li>
					<a href="pro.html">产品服务
						<!--<i class="fa fa-chevron-down" aria-hidden="true"></i> -->
					</a>
					<!--<ul class="sub-menu s_pro">
						<li><a href="javascript:void(none);">智能头盔</a></li>
						<li><a href="javascript:void(none);">智能电梯</a></li>
						<li><a href="javascript:void(none);">智能消防</a></li>
					</ul>-->
				</li>
				<li>
					<a href="news.html">新闻中心</a>
					<!--<ul class="sub-menu blue">
						<li><a href="javascript:void(none);">产品服务</a></li>
						<li><a href="javascript:void(none);">产品服务</a></li>
						<li><a href="javascript:void(none);">产品服务</a></li>
					</ul>-->
				</li>
				<li>
					<a href="case.html">成功案例</a>
					<!--<ul class="sub-menu blue">
						<li><a href="javascript:void(none);">产品服务</a></li>
						<li><a href="javascript:void(none);">产品服务</a></li>
						<li><a href="javascript:void(none);">产品服务</a></li>
					</ul>-->
				</li>
				<li class="li_focus">
					<a href="invite.html">人才招聘</a>
					<!--<ul class="sub-menu blue">
						<li><a href="javascript:void(none);"></a></li>
						<li><a href="javascript:void(none);"></a></li>
						<li><a href="javascript:void(none);"></a></li>
					</ul>-->
				</li>
				<li>
					<a href="contact.html">联系我们</a>
					<!--<ul class="sub-menu blue">
						<li><a href="javascript:void(none);">产品服务</a></li>
						<li><a href="javascript:void(none);">产品服务</a></li>
						<li><a href="javascript:void(none);">产品服务</a></li>
					</ul>-->
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
						<!--<p class="wow fadeInDown delay-05s">d ddf asd asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf sdf aasdf asdf  adsf asdf asdf as,df asdf,a sdf ASDF ASD,F Adafd adsf, asdf a asdfa sdfasdfasd.</p>
						<a class="wow fadeInDown delay-09s"	 href="">更多</a>-->
					</div>
				</div>
			</div>
			<!--图2-->
			<div class="intro_item" target="_blank" style="background-image: url(${APP_PATH }/js/front/img/f2.jpg)">
				<div class="div_zz"><!--遮罩-->
					<div class="caption">
						<p class="wow fadeInDown delay-02s" style="font-family:pmzdtitlefont">我们是</p>
						<div class="div_hr1" style=""></div>
						<p class="wow fadeInDown delay-05s" style="font-family: pmzdtitlefont">智能管理解决方案的先锋队</p>
						<div class="div_hr2" style=""></div>
						<!--<p class="wow fadeInDown delay-05s">d ddf asd asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf sdf aasdf asdf  adsf asdf asdf as,df asdf,a sdf ASDF ASD,F Adafd adsf, asdf a asdfa sdfasdfasd.</p>
						<a class="wow fadeInDown delay-09s"	 href="">更多</a>-->
					</div>
				</div>
			</div>
			<!--图3-->
			<div class="intro_item" target="_blank" style="background-image: url(${APP_PATH }/js/front/img/f3.jpg)">
				<div class="div_zz"><!--遮罩-->
					<div class="caption">
						<p class="wow fadeInDown delay-02s" style="font-family:pmzdtitlefont">我们是</p>
						<div class="div_hr1" style=""></div>
						<p class="wow fadeInDown delay-05s" style="font-family: pmzdtitlefont">智能管理解决方案的先锋队</p>
						<div class="div_hr2" style=""></div>
						<!--<p class="wow fadeInDown delay-05s">d ddf asd asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf sdf aasdf asdf  adsf asdf asdf as,df asdf,a sdf ASDF ASD,F Adafd adsf, asdf a asdfa sdfasdfasd.</p>
						<a class="wow fadeInDown delay-09s"	 href="">更多</a>-->
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
	<div id="main" class="main_con">
		<div class="div_main1">
			<!--层-->
			<div class="condition">
				<!--总标题-->
				<div class="con_title">人才招聘</div>
				<!--内容层-->
				<div class="con_content cf">
					<!--滑动的动画效果-->
					<div class="div_slide float_l">
						<div class="slide"></div>
					</div>
					<!--左边导航栏-->
					<div class="left_nav invite_nav float_l">
						<ul>
							<a href="javascript:void(none);"><li>实习生招聘</li></a>
							<a href="javascript:void(none);"><li>应届生招聘</li></a>
							<a href="javascript:void(none);"><li>社会招聘</li></a>
						</ul>
					</div>
					<!--右边内容区 公司简介-->
					<div class="right_content invite float_r">
							<div>
								<span>岗位方向</span>
								<select class="invite_select">
									<option value="0">前端开发工程师</option>
									<option value="1">前端开发工程师1</option>
									<option value="2">前端开发工程师2</option>
									<option value="3">前端开发工程师3</option>
								</select>
							</div>
							<div>
								<span>招聘人数</span>
								<p>2人</p>
							</div>
							<div>
								<span>岗位描述</span>
								<p>
								·&nbsp;负责智钧时代的前端/客户端/小程序开发；<br/>
								·&nbsp;负责前端开发框架建设及优化、及前端通讯协议设计；<br/>
								·&nbsp;负责相关运营支持系统建设及开发流程优化；
								</p>
							</div>
							<div>
								<span>岗位要求</span>
								<p>
									·&nbsp;本科以上学历，2年以上工作经验；<br/>
									·&nbsp;精通HTML5/CSS3/JS等前端技能，理解web标准和兼容性；<br/>
									·&nbsp;能熟练使用主流的JavaScript框架，并精通其中的一种以上；<br/>
									·&nbsp;熟悉nodejs/php等任一种后端脚本语言优先，熟悉linux系统优先；<br/>
									·&nbsp;熟悉mongodb/redis/mysql等任一种数据库优先；<br/>
									·&nbsp;有android开发、IOS开发、微信小程序或其它移动端开发技能优先；<br/>
									·&nbsp;思路清晰，具备良好的沟通能力和团队协作精神；
								</p>
							</div>
							<div>
								<span>工作地点</span>
								<p>深圳市南山区南海大道海王大厦A座7F</p>
							</div>
							<div>
								<span>联系方式</span>
								<p>电话：(86-755)26416922</p>
								<p>传真：（08-755）26415322</p>
								<p>邮箱：sales@sunway-sz.com</p>
							</div>
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
			<iframe width="366" height="280" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://j.map.baidu.com/s/CtiXLV"></iframe>
			<%-- <img src="${APP_PATH }/js/front/img/images/map_haiwangdasha.png" usemap="#haiwangmap" class="img_haiwang"/>
			<map name="haiwangmap">
				<area shape ="rect" coords ="0,0,380,260" href ="https://map.baidu.com/?newmap=1&shareurl=1&l=19&tn=B_NORMAL_MAP&hb=B_SATELLITE_STREET&c=12683110,2557738&s=s%26da_src%3DsearchBox.button%26wd%3D%E6%B5%B7%E7%8E%8B%E5%A4%A7%E5%8E%A6-A%E5%BA%A7%26c%3D340%26src%3D0%26wd2%3D%E6%B7%B1%E5%9C%B3%E5%B8%82%E5%8D%97%E5%B1%B1%E5%8C%BA%26pn%3D0%26sug%3D1%26l%3D12%26from%3Dwebmap%26biz_forward%3D%7B%22scaler%22%3A2%2C%22styles%22%3A%22pl%22%7D%26sug_forward%3Da727d4e563e58aaaf4eafc79%26auth%3DzLcMxJTXYwNec1c5Og4wyR8CTXXdTzGYuxHBBRVEzTxtwi04vy77ucvY1SGpuztFHhxQ7E%40Z5Z3%40wWv1cv3uVtGccZcuVtPWv3GuxtVwi04960vy777777777uWvPYuxt8zv7u%40ZPuVteuVtegvcguxHBBRVEzRxtfiKKvyyuC00dEb%26device_ratio%3D2" target="_blank" />
			</map> --%>
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
	
		$(".left_nav ul a").each(
			function () {
				$(this).click(function () {
					$(this).css("color","#1551fc");
					$(this).siblings().css("color","#afafaf");
				});
			}
		);

		var div=$(".slide");
		$(".left_nav ul a:nth-child(1)").click(function () {
			div.animate({margin:'52px 0px 0px 0px'},'300ms');
		});
		$(".left_nav ul a:nth-child(2)").click(function () {
			div.animate({margin:'126px 0px 0px 0px'},'300ms');
		});
		$(".left_nav ul a:nth-child(3)").click(function () {
			div.animate({margin:'200px 0px 0px 0px'},'300ms');
		});
		$(".left_nav ul a:nth-child(4)").click(function () {
			div.animate({margin:'274px 0px 0px 0px'},'300ms');
		});
	});

</script>
</body>
</html>