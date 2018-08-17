<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../head.jsp" %>
	<!--内容-->
	<div id="main" class="main_con">
		<div class="div_main1">
			<!--层-->
			<div class="condition">
				<!--总标题-->
				<div class="con_title">成功案例</div>
				<!--内容层-->
				<div class="con_content cf">
					<!--滑动的动画效果-->
					<div class="div_slide float_l">
						<div class="slide"></div>
					</div>
					<!--左边导航栏-->
					<div class="left_nav case_nav float_l">
						<ul>
							<a href="javascript:void(none)"><li>智能排水整体解决方案</li></a>
							<a href="javascript:void(none)"><li>智能排水整体解决方案</li></a>
							<a href="javascript:void(none)"><li>智能排水整体解决方案</li></a>
							<a href="javascript:void(none)"><li>智能排水整体解决方案</li></a>
						</ul>
					</div>
					<!--右边内容区 成功案例-->
					<div class="right_content case_img float_r">
						<ul>
							<li>
								<img src="img/case/案例一.png"/>
								<span>污水厂运营信息管理化系统</span>
							</li>
							<li>
								<img src="img/case/案例二.png"/>
								<span>污水厂运营信息管理化系统</span>
							</li>
							<li>
								<img src="img/case/案例三.png"/>
								<span>污水厂运营信息管理化系统</span>
							</li>
							<li>
								<img src="img/case/案例四.png"/>
								<span>污水厂运营信息管理化系统</span>
							</li>
							<li>
								<img src="img/case/案例五.png"/>
								<span>污水厂运营信息管理化系统</span>
							</li>
							<li>
								<img src="img/case/案例六.png"/>
								<span>污水厂运营信息管理化系统</span>
							</li>
							<li>
								<img src="img/case/案例七.png"/>
								<span>污水厂运营信息管理化系统</span>
							</li>
							<li>
								<img src="img/case/案例八.png"/>
								<span>污水厂运营信息管理化系统</span>
							</li>
						</ul>








					</div>

				</div>
			</div>
		</div>
	</div>
</main>
<%@ include file="../footer.jsp" %>
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
