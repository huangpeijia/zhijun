<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../head.jsp" %>
     <script>
    
    document.title+="-产品服务";
    </script>
    <style type="text/css">
        .ul_nav>li:nth-child(3)>a{
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
				<div class="con_title">产品服务</div>
				<!--内容层-->
				<div class="con_content cf">
				</div>
			</div>
		</div>
		<div class="product" id="product">
			<ul>
				<!-- 遍历 -->
			</ul>
		</div>
	</div>
</main>
<%@ include file="../footer.jsp" %>
<script>

	$("#product ul").on("click","li",function(){   
		var pro_type=$(this).attr("data");
		window.location.href="product/demotion_product?pro_type="+pro_type;
	 
	});

	$(function () {
		protype_all();/* 查类型数据 */
		
	});
	
	/* 案例类型 */
	function protype_all(){
		$.ajax({
			url:"protype/all_type",
			type:"POST",
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
		$("#product ul").empty();
		$.each(result,function(index,item){ 
			var type_imgTd=$("<img src=''/>").attr("src","/upload/"+item.protype_photo);/*  */
			var type_titleTd=$("<span></span>").append(item.protype_name); 
			var type_constant=$("<p></p>").append(item.protype_constant);
			var type_div=$("<div class='product_main'></div>").append(type_titleTd).append(type_constant);
			var type_div2=$("<div class='pro_img_content cf'></div>").append(type_imgTd).append(type_div);
			$("<li data="+item.protype_id+"></li>").append(type_div2).appendTo("#product ul");  			 
		});
	}
	
</script>