<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../head.jsp" %>
     <script>
    document.title="新闻中心";
    </script>
    <link rel="stylesheet" href="${APP_PATH }/js/front/css/demotion.css"/>
    <style type="text/css">
        .ul_nav>li:nth-child(4)>a{/*头部的目录下划线  */
            border-bottom: 2px solid #FB8722;
        }       
    </style>
	<!--内容-->
	<div id="main" class="main_con">
		<div class="div_main1">
			<!--层-->
			<div class="condition">
				<!--总标题-->
				<div class="con_title">新闻中心</div>
				<!--内容层-->
				<div class="con_content cf">				    			    	
					<div class="news_ct">
					   <c:forEach items="${requestScope.news}" var="news">		
					   <h2 class="title">${news.news_title}</h2>
					   <p class="time"><fmt:formatDate value="${news.news_time}" pattern="yyyy-MM-dd"/></p>
					   <span class="content">
					       ${news.news_constant}
					   </span>
					   </c:forEach>
					</div>
					<div class="news_more_bottom">
					<div class="return_news"><a href="/news">返回列表</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
<%@ include file="../footer.jsp" %>