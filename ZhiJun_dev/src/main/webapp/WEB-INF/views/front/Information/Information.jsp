<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../head.jsp" %>
     <script>
    document.title="公司概况";
    </script>
    <style type="text/css">
        .ul_nav>li:nth-child(2)>a{
            border-bottom: 2px solid #FB8722;
        }
    </style>
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
							<a href="javascript:void(none)" data="1"><li>公司简介</li></a>
							<a href="javascript:void(none)" data="2"><li>基本情况</li></a>
							<a href="javascript:void(none)" data="3"><li>发展历程</li></a>
							<a href="javascript:void(none)" data="4"><li>背景优势</li></a>
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
	
	
						<!--右边内容区 发展历程-->
						<div class="right_content tab-pane float_r">
							<div class="div_timer_shaft cf">
								<ul>
									<li class="">
										<span class="fa fa-dot-circle-o fa-lg"></span>
										<div class="timer_shaft_content">
											<h2>2015年</h2>
											<span>成为中国石油总公司供应商建立华北、华南地区办事处</span>
										</div>
									</li>
									<li class="">
										<span class="fa fa-dot-circle-o fa-lg"></span>
										<div class="timer_shaft_content">
											<h2>2012年</h2>
											<span>成功申请成为国家高新技术企业</span>
										</div>
									</li>
									<li class="">
										<span class="fa fa-dot-circle-o fa-lg"></span>
										<div class="timer_shaft_content">
											<h2>2011年</h2>
											<span>与上海交大建立产学研合作关系与美国联邦信号、披克等各大品牌签订战略合作协议</span>
										</div>
									</li>
									<li class="">
										<span class="fa fa-dot-circle-o fa-lg"></span>
										<div class="timer_shaft_content">
											<h2>2010年</h2>
											<span>公司通过ISO9001:2008的国际质量认证<br/>进军海洋石油行业<br/>成为中国海洋石油集团一级供应商</span>
										</div>
									</li>
								</ul>
							</div>
						</div>
						</c:forEach>
						
						<!--右边内容区 背景优势-->
						<c:forEach items="${requestScope.about}" var="about">
						<div class="right_content tab-pane float_r">
						${about.about_prospects}
							<!-- <p>智钧时代的前身公司，在十年前就已经承接了国家级大型海上油田项目，从而展示了我们雄厚的技术优势。我们汇集了一批专业信息系统集成技术精英，秉承真诚、严谨、以客户为中心的服务宗旨，以良好的客户服务意识为客户提供优质的专业服务。</p>
	
							<p>我们与上海交通大学、深圳大学电子科技与技术学院建立了紧密的战略合作关系，以强大的技术优势、人才优势为智钧时代提供坚实的技术支持平台。</p>
	
							<p>对外，公司不断研发新技术，将拥有更多的自主知识产权，确保我们提供给客户的方案最具市场竞争力并符合客户发展规划。</p>
	
							<p>对内，公司推行先进的企业管理理念，合理完善员工的激励晋升制度，建构了信息化的办公管理系统提高工作效率，确保为客户创造更高的价值。</p>
	
							<p>重点业绩（是智钧时代前身公司盛思维的业绩）</p> -->
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
			var numm=$(this).attr('data');
			var i=52+(numm-1)*74;
			div.animate({margin:''+i+'px 0px 0px 0px'},'300ms');
		});
	});
</script>