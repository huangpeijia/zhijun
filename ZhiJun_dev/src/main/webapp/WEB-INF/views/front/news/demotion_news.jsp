<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../head.jsp" %>
     <script>
    document.title="新闻中心";
    </script>
    <link rel="stylesheet" href="${APP_PATH }/js/front/css/demotion.css"/>
    <style type="text/css">
        .ul_nav>li:nth-child(4)>a{/*头部的目录下划线  */
            border-bottom: 2px solid #FB8722;
        }       
    </style>
       <!--主体-->
<main>
	<!--轮播-->
	<div class="div_lunbo div_view div_mainly">
		<div id="intro" class="div_imgs div_display">
			<!--图1-->
			<div class="intro_item" target="_blank" style="background-image: url(${APP_PATH }/js/front/img/images/banner.png)">				
			</div>					
		</div>
	</div>
	<!--内容-->
	<div id="main" class="main_con">
		<div class="div_main1">
			<!--层-->
			<div class="condition">
				<!--总标题-->
				<div class="con_title">新闻中心</div>
				<!--滑动的动画效果-->
				<!--内容层-->
				<div class="con_content cf">
					<div class="div_slide float_l">
						<div class="slide"></div>
					</div>
					<!--左边导航栏-->
					<div class="left_nav invite_nav float_l">
						<ul>
							<a href="javascript:void(none);"><li>新闻中心</li></a>
						</ul>
					</div>
					<!--右边内容区 公司简介-->
					<div class="right_content float_r">	
							<div class="return_news"><a href="javascript:window.history.back();"><font class="fa fa-angle-double-left fa-lg"></font> 返回</a></div>			    			    	
							<div class="news_ct">
							   <c:forEach items="${requestScope.news}" var="news">
							   <div class="cf news_tt">		
							   		<h2 class="title" style="float:left;">${news.news_title}</h2>
							   		<p class="time" style="float:right;"><fmt:formatDate value="${news.news_time}" pattern="yyyy-MM-dd"/></p>
							   </div>
							   <span class="content">
							       ${news.news_constant}
							   </span>
							   </c:forEach>
							</div>
						</div>
					</div>
				
			</div>
		</div>
	</div>
</main>
<%@ include file="../footer.jsp" %>
<script></script>