<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../head.jsp" %>
     <script>
    document.title+="-公司概况";
    </script>
    <style type="text/css">
        .ul_nav>li:nth-child(2)>a{
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
				<div class="con_title">公司概况</div>
				<!--内容层-->
				<div class="con_content cf">
					<!--滑动的动画效果-->
					<div class="div_slide float_l">
						<div class="slide"></div>
					</div>
					<!--左边导航栏-->
					<div class="left_nav nav_tabs float_l">
						<ul>
							<a href="javascript:void(0)" data="1"><li>公司简介</li></a>
							<a href="javascript:void(0)" data="2"><li>基本情况</li></a>
							<a href="javascript:void(0)" data="3"><li>发展历程</li></a>
							<a href="javascript:void(0)" data="4"><li>背景优势</li></a>
						</ul>
					</div>
					<div class="tab-content">
					<c:forEach items="${requestScope.info}" var="info">
						<!--右边内容区 公司简介-->
						<div class="right_content tab-pane active float_r">
							<div>${info.com_profile}</div>
						</div>
						
						<!--右边内容区 基本情况-->
						<div class="right_content tab-pane float_r">
							<div>${info.com_backdrop}</div>
						</div>
					</c:forEach>
	
						<!--右边内容区 发展历程-->
						<div class="right_content tab-pane float_r">
							<div class="div_timer_shaft cf">
								<ul>
								<c:forEach items="${requestScope.qua}" var="qua">
								
									<li class="">
										<span class="fa fa-dot-circle-o fa-lg"></span>
										<div class="timer_shaft_content">
											<h2>${qua.qua_date}年</h2>
											<span>${qua.qua_constant}</span>
										</div>
									</li>
								</c:forEach>
									
								</ul>
							</div>
						</div>
						
						
						<!--右边内容区 背景优势-->
						<c:forEach items="${requestScope.about}" var="about">
						<div class="right_content tab-pane float_r">
						${about.about_prospects}					
						</div>					
                        </c:forEach>
                    </div>
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