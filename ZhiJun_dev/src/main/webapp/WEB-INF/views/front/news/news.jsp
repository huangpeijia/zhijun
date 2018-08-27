<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../head.jsp" %>
     <script>
    document.title="新闻中心";
    </script>
    <style type="text/css">
        .ul_nav>li:nth-child(4)>a{/*头部的目录下划线  */
            border-bottom: 2px solid #FB8722;
        }
        
       
/* 分页 */
    #page{
    float:right;   	
    	margin-top:54px;
    	width:480px;
    	height:40px;
    	text-align:right;
    	
    }
   
	#page a{
	    text-decoration: none;
	    font-size:12px;
	    background-color:#ebebeb;
	    padding:8px 16px 8px 16px;	   
	    /* border: 1px solid #ccc; */
	    margin-left:8px;
	    }
	    	
	   
	#page a.selected{
		background: #1551fc;
		color:#fff;
		}
		
    #page .newss_lt{
          font-size:18px;
       padding:1px 16px 6px 16px;	
    }
    
    #page .newss_gt{
       font-size:18px;
       padding:1px 16px 6px 16px;	
    }
		
	/* 跳转框 */
	#page input{
	    margin-left:9px;
	    width:45px;
	    height:30px;
	    text-align:center;
	    }
	    
	#page button{
	    width:45px;
	    height:34px;
	    background-color:#1551fc;
	    color:#ffffff;
	    border:none;
	    outline:none;
	    }
	    
	#coun_num{
	    display:none;
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
						<div id="news"> 
						<ul class="ul_news news"></ul>
						</div>
						<div id="page" ></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
<%@ include file="../footer.jsp" %>
<script type="text/javascript" src="${APP_PATH}/js/js/times.js"></script>
<script type="text/javascript" src="${APP_PATH}/js/js/pagination.js"></script>
<script> 
$(".ul_news").on("click","li",function(){   
		var id=$(this).attr("data");
		window.location.href="news/demotion_news?id="+id;
	 
});
var c_page=1; 
	$(function () {
		to_page(c_page);
		$(".left_nav ul a").each(
			function () {
				$(this).click(function () {
					$(this).css("color","#1551fc");
					$(this).siblings().css("color","#afafaf");
				});
			}
		);
		
	}); 
	
	function to_page(c_page){ 
		$.ajax({
			url:"news/news_all",
			type:"POST",
			async:false,
			data:"c_page="+c_page,
			success:function(result){ 
				//1、解析数据
				build_news_table(result);
				pages_news("news",c_page,14);
			},
		 error:function(e){
			 alert("error:"+e);
		 }
		});
	}
	
	function build_news_table(result){
		//构建先前情况table,empty掏空信息的方法
		$("#news ul").empty();
		$.each(result,function(index,item){
			var time=timest(item.news_time);
			item.news_time=time;
			var titleTd=$("<p></p>").append(item.news_title);
			var timeTd=$("<p></p>").append(item.news_time);	
			$("<li data='"+item.news_id+"'></li>").append(titleTd).append(timeTd).appendTo("#news ul");
			
		});
	}
</script>