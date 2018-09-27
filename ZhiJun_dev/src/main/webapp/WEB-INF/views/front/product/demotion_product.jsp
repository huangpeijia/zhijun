<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../head.jsp" %>
     <script>
     
   
   
    </script>
    <link rel="stylesheet" href="${APP_PATH }/js/front/css/demotion.css"/>
    <style type="text/css">
        .ul_nav>li:nth-child(3)>a{/*头部的目录下划线  */
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
				<c:forEach items="${requestScope.protype}" var="protype"> 
				<div class="con_title">${protype.protype_name}</div>
				</c:forEach>
				<!--滑动的动画效果-->
				<!--内容层-->
				<div class="con_content cf">
					<div class="div_slide float_l">
						<div class="slide"></div>
					</div>
					<!--左边导航栏-->
					<div class="left_nav invite_nav float_l" id="pro_title">
						<ul>
							<!-- 遍历 -->
						</ul>
					</div>
					<!--右边内容区 产品介绍-->
					<div class="right_content float_r" id="pro_content">			    			    	
							<div class="pro_ct">							  
							   <div class="cf pro_tt">		
							   		<h2 class="title" style="float:left;">dddddd<!-- 数据 --></h2>
							   		<p class="time" style="float:right;">dddddddd<!-- 数据 --></p>
							   </div>
							   <div style="border:1px solid red;">
							   <img src="" style="width:300px;height:400px;float:left;margin-right:10px;" />
							   <span class="content" style="border:1px solid blue;">
							      dddddddddddddddasdfasdf asdf sadf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf adf azsdf adf safdsdfa sdf azsadf asdf asf adfs asfdasdf asdf <!--  数据  -->
							   </span>
							   </div>						  
							</div>
						</div>
					</div>
				
			</div>
		</div>
	</div>
</main>
<%@ include file="../footer.jsp" %>
<script type="text/javascript" src="${APP_PATH}/js/js/times.js"></script>
<script>
$(function(){
   	 var titlee=$(".con_title").text();/* 获取类型名称 */
   	 document.title+="-公司产品-"+titlee;/* 赋给标题 */
   	 
	var pro_type=getUrlParam("pro_type");/* 获取页面传来的参数 */
	protype_all(pro_type);/* 根据类型查出左侧导航栏的产品名称 */
	var id=$("#pro_title ul a").attr("data");
	proid_all(id);
	
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
		var numm=$(this).index();
		var data=$(this).attr("data");
		var i=52+numm*74;
		div.animate({margin:''+i+'px 0px 0px 0px'},'300ms');
		proid_all(data);
	});
});

/* jquery获取页面传值 */
function getUrlParam(name){
	var reg=new RegExp("(^|&)"+name+"=([^&]*)(&|$)");//构造一个含有目标参数的正则表达式对象
	var r=window.location.search.substr(1).match(reg);//匹配目标参数
	if(r!=null) return unescape(r[2]);return null;//返回参数值
	
}

/* 类型查数据 */
function protype_all(pro_typee){
	$.ajax({
		url:"/protype/pro_queryAll",
		type:"POST",
		data:"pro_type="+pro_typee,
		async:false,
		success:function(result){  
			//1、解析数据 
			protype_table(result);
		},
	 error:function(e){
		 alert("error:"+e);
	 }
	});
} 

function protype_table(result){
	//构建先前情况table,empty掏空信息的方法
	$("#pro_title ul").empty();
	$.each(result,function(index,item){ 
		var pro_nameTd=$("<li></li>").append(item.pro_name);  
		$("<a a href='javascript:void(0);' class='sa' data='"+item.pro_id+"'></a>").append(pro_nameTd).appendTo("#pro_title ul");  			 
	});
}

 /* id查数据 */
function proid_all(pro_idd){
	$.ajax({
		url:"/product/demotion_pro",
		type:"POST",
		data:"pro_id="+pro_idd,
		async:false,
		success:function(result){  
			//1、解析数据 
			proid_table(result);
		},
	 error:function(e){
		 alert("error:"+e);
	 }
	});
} 
 
function proid_table(result){
	//构建先前情况table,empty掏空信息的方法
	$("#pro_content").empty();
	$.each(result,function(index,item){ 
		var time=timest(item.pro_time);
		item.pro_time=time;
		var pro_titleTd=$("<h2 class='title' style='float:left;'></h2>").append(item.pro_name);
		var pro_timeTd=$("<p class='time' style='float:right;'></p>").append(item.pro_time);
		var pro_ttTd=$("<div class='cf pro_tt'></div>").append(pro_titleTd).append(pro_timeTd);
		var pro_imgTd=$("<img src='' style='float:left;margin-right:10px;'/>").attr("src","/upload/"+item.pro_photo);		
		var pro_contentTd=$("<span class='content'></span>").append(item.pro_constant);
		var pro_icTd=$("<div></div>").append(pro_imgTd).append(pro_contentTd);
		$("<div class='pro_ct'></div>").append(pro_icTd).appendTo("#pro_content");  			 
	});
}

</script>