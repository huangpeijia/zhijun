<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../head.jsp" %>
     <script>
    document.title="产品服务";
    </script>
    <style type="text/css">
        .ul_nav>li:nth-child(3)>a{
            border-bottom: 2px solid #FB8722;
        }
    </style>
	<!--内容-->
	<div id="main" class="main_con">
		<div class="div_main1">
			<!--层-->
			<div class="condition">
				<!--总标题-->
				<div class="con_title">产品服务</div>
				<!--内容层-->
				<div class="con_content cf">
				</div>
			</div>
		</div>
		<div class="product">
			<ul>
				<li>
					<div class="pro_img_content cf">
						<img src="${APP_PATH }/js/front/img/pro/product1.png">
						<div class="product_main">
							<span>工业互联网</span>
							<p>工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网
							工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网
							工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网</p>
						</div>
					</div>
				</li>
				<li>
					<div class="pro_img_content cf">
						<img src="${APP_PATH }/js/front/img/pro/product2.png">
						<div class="product_main">
							<span>工业互联网</span>
							<p>工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网
								工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网
								工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网</p>
						</div>
					</div>
				</li>
				<li>
					<div class="pro_img_content cf">
						<img src="${APP_PATH }/js/front/img/pro/product3.png">
						<div class="product_main">
							<span>工业互联网</span>
							<p>工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网
								工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网
								工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网工业互联网</p>
						</div>
					</div>
				</li>
			</ul>
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