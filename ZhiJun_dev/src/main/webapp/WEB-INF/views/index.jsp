<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="front/head.jsp" %>
    <style type="text/css">
        .ul_nav>li:nth-child(1)>a{
            border-bottom: 2px solid #FB8722;
        }
    </style>
	<!--内容-->
	<div id="main" class="">
		<div class="div_main">
			<!--层1-->
			<div>
				<div class="div_title">智钧特色</div>
				<div class="div_content cf">
					<ul class="ul_feature">
						<li class=" ">
							<a href="javascript:void(none)">
								<img src="${APP_PATH }/js/front/img/images/ts1.png">
								<div class="wow pulse delay-04s"><span>专业核心竞争力</span></div>
							</a>
						</li>
						<li class="">
							<a href="#">
								<img src="${APP_PATH }/js/front/img/images/ts2.png">
								<div class="wow pulse delay-04s"><span>工业级互联网思维</span></div>
							</a>
						</li>
						<li class="">
							<a href="#">
								<img src="${APP_PATH }/js/front/img/images/ts3.png">
								<div class="wow pulse delay-04s"><span>极致化服务</span></div>
							</a>
						</li>
						<li class="">
							<a href="#">
								<img src="${APP_PATH }/js/front/img/images/ts4.png">
								<div class="wow pulse delay-04s"><span>工业领域大数据挖掘</span></div>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<!--层2-->
			<div>
				<div class="div_title">公司产品</div>
				<div class="div_content pro cf">
					<div class="div_pro1 div_title_opacity">
						<img src="${APP_PATH }/upload/${pro[0].pro_photo}"/>
						<div class="pro_span">
							<div class="" >
								<span>${pro[0].pro_constant}</span>
							</div>
						</div>
						<div class="pro_span_title">${pro[0].pro_name}</div>
					</div>
					<div class="">
						<div class="div_pro2 div_title_opacity">
							<img src="${APP_PATH }/upload/${pro[1].pro_photo}"/>
							<div class="pro_span">
								<div class="">
									<span>${pro[1].pro_constant}</span>
								</div>
							</div>
							<div class="pro_span_title">${pro[1].pro_name}</div>
						</div>
						<div class="div_pro3 div_title_opacity">
							<img src="${APP_PATH }/upload/${pro[2].pro_photo}"/>
							<div class="pro_span">
								<div class="">
									<span>${pro[2].pro_constant}</span>

								</div>
							</div>
							<div class="pro_span_title">${pro[2].pro_name}</div>
						</div>
					</div>
					<div class="">
						<div class="div_pro4 div_title_opacity">
							<img src="${APP_PATH }/upload/${pro[3].pro_photo}"/>
							<div class="pro_span">
								<div class="">
									<span>${pro[3].pro_constant}</span>
								</div>
							</div>
							<div class="pro_span_title">${pro[3].pro_name}</div>
						</div>
						<div class="pro_more">
							<a href="#">更多</a>
						</div>
					</div>
				</div>
			</div>
			<!--层3-->
			<div>
				<div class="div_title">公司新闻</div>
				<div class="div_content cf">
					<div class="float_l">
						<ul class="ul_news cf">
						<c:forEach items="${requestScope.news}" var="news">
							<li><a href="#"><span>${news.news_title}</span>
							<span><fmt:formatDate value="${news.news_time}" pattern="yyyy-MM-dd"/></span>
							</a></li>
							</c:forEach>
						</ul>
						<a href="#" class="news_more float_r ">更多>></a>
					</div>
					<video id="media" class="div_video float_r" poster="${APP_PATH }/js/front/img/images/video_index.png" controls>
						<source src="${APP_PATH }/video/${video_path}" type="video/mp4">
					</video>
				</div>
			</div>
			<!--层4-->
			<div class="">
				<div class="div_title">成功案例</div>
				<div class="div_content cf">
					<ul class="ul_case">
					<c:forEach items="${requestScope.cases}" var="cases">
						<a href="#" class="">
							<li class="">
								<img src="${APP_PATH }/upload/${cases.case_photo}" class=""/>
								<div class="div_case float_r">
									<div class="case_title cf"><span>${cases.case_name}</span>
									<span class=""><fmt:formatDate value="${cases.case_time}" pattern="yyyy-MM-dd"/></span></div>
									<div class="case_content">${cases.case_constant}</div>
								</div>
							</li>
						</a>
						</c:forEach> 
					</ul>
					<div class="case_more">
						<a href="#" class="">查看更多</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
   <%@ include file="front/footer.jsp" %>
   <script>
   $(function(){
		$(".pro_span>div>span").each(function(){
			var maxwidth=60;
			if($(this).text().length>maxwidth){
				$(this).text($(this).text().substring(0,maxwidth));
				$(this).html($(this).html()+'...');
			}
		});
	});
   </script>