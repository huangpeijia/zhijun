<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../head.jsp" %>
     <script>
    document.title="联系我们";
    </script>
    <style type="text/css">
        .ul_nav>li:nth-child(7)>a{
            border-bottom: 2px solid #FB8722;
        }
    </style>
    <!-- 联系我们 -->
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
				<div class="con_title">联系我们</div>
				<!--内容层-->
				<div class="con_content cf">
					<!--滑动的动画效果-->
					<div class="div_slide float_l">
						<div class="slide"></div>
					</div>
					<!--左边导航栏-->
					<div class="left_nav float_l">
						<ul>
							<a href="javascript:void(none)"><li>深圳总部</li></a>
						</ul>
					</div>
					<!--右边内容区 公司简介-->
					<div class="right_content float_r">
					<c:forEach items="${requestScope.info}" var="info">
						<div class="con_info">
							<span>地址：${info.com_address}</span><br/>
							<span>邮编：${info.com_code}</span><br/>
							<span>电话：${info.com_number}</span><br/>
							<span>传真：${info.com_fax}</span><br/>
							<span>E-mail：${info.com_email}</span>
						</div>
					</c:forEach>
						<div class="con_map">
							<iframe width="604" height="485" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://j.map.baidu.com/s/fsiXLV"></iframe>
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
</body>
</html>