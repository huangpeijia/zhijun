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
 <%@ include file="../footer.jsp" %>
	<script>
	$(function(){
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