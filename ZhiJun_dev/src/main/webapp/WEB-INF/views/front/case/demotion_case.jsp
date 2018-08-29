<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../head.jsp" %>
     <script>
    document.title="成功案例";
    </script>
    <link rel="stylesheet" href="${APP_PATH }/js/front/css/demotion.css"/>
    <style type="text/css">
        .ul_nav>li:nth-child(5)>a{/*头部的目录下划线  */
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
				<div class="con_title">成功案例</div>
				<!--内容层-->
				<div class="con_content cf">				    			    	
					<div class="case_ct">
					   <c:forEach items="${requestScope.cases}" var="cases">		
					   <h2 class="title">${cases.case_name}</h2>
					   <p class="time"><fmt:formatDate value="${cases.case_time}" pattern="yyyy-MM-dd"/></p>
					   <span class="content">
					       ${cases.case_constant}
					   </span>
					   </c:forEach>
					</div>
					<div class="case_more_bottom">
					<div class="return_case"><a href="javascript:window.history.go(-1);">返回列表</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
<%@ include file="../footer.jsp" %>