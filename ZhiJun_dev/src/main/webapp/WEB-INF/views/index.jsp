<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="front/head.jsp" %>
    <style type="text/css">
        .ul_nav>li:nth-child(1)>a{
            border-bottom: 2px solid #FB8722;
        }
    </style>
    <!--主体-->
<main>
	<!--轮播-->
	<div class="div_lunbo div_mainly">
		<div id="intro" class="div_imgs div_display">
			<!--图1-->
			<div class="intro_item" target="_blank" style="background-image: url(${APP_PATH }/js/front/img/images/banner1.png)">
				<div class="div_zz"><!--遮罩-->
					<div class="caption">
						<p class="wow fadeInDown delay-02s" style="font-family:pmzdtitlefont">我们是</p>
						<div class="div_hr1" style=""></div>
						<p class="wow fadeInDown delay-05s" style="font-family: pmzdtitlefont">智能管理解决方案的先锋队</p>
						<div class="div_hr2" style=""></div>
						
					</div>
				</div>
			</div>
			<!--图2-->
			<div class="intro_item" target="_blank" style="background-image: url(${APP_PATH }/js/front/img/images/artificial.jpg)">
				<div class="div_zz"><!--遮罩-->
					<div class="caption">
						<p class="wow fadeInDown delay-02s" style="font-family:pmzdtitlefont">我们是</p>
						<div class="div_hr1" style=""></div>
						<p class="wow fadeInDown delay-05s" style="font-family: pmzdtitlefont">智能管理解决方案的先锋队</p>
						<div class="div_hr2" style=""></div>
						
					</div>
				</div>
			</div>
			<!--图3-->
			<div class="intro_item" target="_blank" style="background-image: url(${APP_PATH }/js/front/img/images/oil.jpg)">
				<div class="div_zz"><!--遮罩-->
					<div class="caption">
						<p class="wow fadeInDown delay-02s" style="font-family:pmzdtitlefont">我们是</p>
						<div class="div_hr1" style=""></div>
						<p class="wow fadeInDown delay-05s" style="font-family: pmzdtitlefont">智能管理解决方案的先锋队</p>
						<div class="div_hr2" style=""></div>
					
					</div>
				</div>
			</div>
		</div>
		<!--轮播底部按钮-->
		<div class="div_btn">
			<ul class="div_ul">
				<li id="first">1</li><li>2</li><li>3</li>
			</ul>
		</div>
	</div>
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
								<div data-wow-duration="2s" class="wow fadeInUp "><span>专业核心竞争力</span></div>
							</a>
						</li>
						<li class="">
							<a href="#">
								<img src="${APP_PATH }/js/front/img/images/ts2.png">
								<div data-wow-duration="2s" class="wow fadeInUp "><span>工业级互联网思维</span></div>
							</a>
						</li>
						<li class="">
							<a href="#">
								<img src="${APP_PATH }/js/front/img/images/ts3.png">
								<div data-wow-duration="2s" class="wow fadeInUp "><span>极致化服务</span></div>
							</a>
						</li>
						<li class="">
							<a href="#">
								<img src="${APP_PATH }/js/front/img/images/ts4.png">
								<div data-wow-duration="2s" class="wow fadeInUp "><span>工业领域大数据挖掘</span></div>
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
							<a href="product#main">更多</a>
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
							<li data="${news.news_id}"><a href="#"><span>${news.news_title}</span>
							<span><fmt:formatDate value="${news.news_time}" pattern="yyyy-MM-dd"/></span>
							</a></li>
							</c:forEach>
						</ul>
						<a href="news#main" class="news_more float_r ">更多>></a>
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
						<a href="case/demotion_case?id=${cases.case_id}" class="">
							<li class="" data="${cases.case_id}">
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
						<a href="case#main" class="">查看更多</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
   <%@ include file="front/footer.jsp" %>
   <script>
   $(".ul_news").on("click","li",function(){   
		var id=$(this).attr("data");
		window.location.href="news/demotion_news?id="+id;
	 
	});
   
   $(function(){
		$(".pro_span>div>span").each(function(){
			var maxwidth=60;
			if($(this).text().length>maxwidth){
				$(this).text($(this).text().substring(0,maxwidth));
				$(this).html($(this).html()+'...');
			}
		});
		
		$(".case_content>p").each(function(){
			var maxwidth=138;
			if($(this).text().length>maxwidth){
				$(this).text($(this).text().substring(0,maxwidth));
				$(this).html($(this).html()+'...');
			}
		});
	});
   </script>