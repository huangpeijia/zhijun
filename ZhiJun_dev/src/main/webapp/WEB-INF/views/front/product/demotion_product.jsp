<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../head.jsp" %>
     <script>
    document.title="公司产品";
    </script>
    <link rel="stylesheet" href="${APP_PATH }/js/front/css/demotion.css"/>
    <style type="text/css">
        .ul_nav>li:nth-child(3)>a{/*头部的目录下划线  */
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
				<div class="con_title">工业智能</div>
				<!--滑动的动画效果-->
				<!--内容层-->
				<div class="con_content cf">
					<div class="div_slide float_l">
						<div class="slide"></div>
					</div>
					<!--左边导航栏-->
					<div class="left_nav nav_tabs float_l">
						<ul>
							<a href="javascript:void(none);"><li>智能头盔</li></a>
							<a href="javascript:void(none);"><li>智能电梯</li></a>
						</ul>
					</div>
					
					<div class="tab-content">
					<%-- <c:forEach items="${requestScope.pro}" var="pro">
						<!--右边内容区 产品介绍--> --%>
						<div class="right_content tab-pane active float_r">
							<div>aaaa</div>
						</div>	
						
						<!--右边内容区 基本情况-->
						<div class="right_content tab-pane float_r">
							<div>bbbb</div>
						</div>
						
						<!--右边内容区 基本情况-->
						<div class="right_content tab-pane float_r">
							<div>ccccc</div>
						</div>											
					<%-- </c:forEach> --%>
				    </div>
				    
			</div>
		</div>
	</div>
</main>
<%@ include file="../footer.jsp" %>
<script src="${APP_PATH }/js/front/js/index.js"></script>
	<script>

	$(function () {
		$(".left_nav ul a").each(
			function () {
				$(this).click(function () {
					$(this).css("color","#1551fc");
					$(this).siblings().css("color","#afafaf");
				});
			}
		);

		var div=$(".slide");
		$(".left_nav ul a").click(function () {
			var numm=$(this).index();
			var i=52+numm*74;
			div.animate({margin:''+i+'px 0px 0px 0px'},'300ms');
		});
	});
</script>