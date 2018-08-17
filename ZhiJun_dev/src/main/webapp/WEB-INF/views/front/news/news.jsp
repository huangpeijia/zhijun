<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../head.jsp" %>
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
							<a href="javascript:void(none)"><li>新闻中心</li></a>
						</ul>
					</div>
					<!--右边内容区 公司简介-->
					<div class="right_content float_r">
						<div>
							<ul class="ul_news news">
								<li><p>改革创新 再创辉煌--2017年度年会隆重召开</p><p>2018-08-14</p></li>
								<li><p>我司与中海油信息科技有限公司共同研发工业领域特种作业人员安全态势智能物联网项目</p><p>2018-08-14</p></li>
								<li><p>荣获国家多项专利</p><p>2018-08-14</p></li>
								<li><p>我司荣获中海油信科技术有限公司“优秀供应商”殊荣</p><p>2018-08-14</p></li>
								<li><p>我司与深圳大学电子科学与技术学院院长签署战略合作协议书</p><p>2018-08-14</p></li>
								<li><p>我司与上海交通大学信息安全工程学院签署战略合作协议书</p><p>2018-08-14</p></li>
								<li><p>喜讯！热烈祝贺我公司获得高新技术企业证书</p><p>2018-08-14</p></li>
								<li><p>2013新产品介绍会顺利举办</p><p>2018-08-14</p></li>
								<li><p>关爱员工，倡导健康</p><p>2018-08-14</p></li>
								<li><p>改革创新 再创辉煌--2017年度年会隆重召开</p><p>2018-08-14</p></li>
								<li><p>我司与中海油信息科技有限公司共同研发工业领域特种作业人员安全态势智能物联网项目</p><p>2018-08-14</p></li>
								<li><p>荣获国家多项专利</p><p>2018-08-14</p></li>
								<li><p>2013新产品介绍会顺利举办</p><p>2018-08-14</p></li>
								<li><p>关爱员工，倡导健康</p><p>2018-08-14</p></li>
							</ul>
						</div>
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
	});
</script>