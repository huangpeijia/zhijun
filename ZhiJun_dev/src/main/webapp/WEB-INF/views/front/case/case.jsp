<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../head.jsp" %>
     <script>
    document.title="成功案例";
    </script>
    <style type="text/css">
        .ul_nav>li:nth-child(5)>a{
            border-bottom: 2px solid #FB8722;
        }
    </style>
	<!--内容-->
	<div id="main" class="main_con">
		<div class="div_main1">
			<!--层-->
			<div class="condition">
				<!--总标题-->
				<div class="con_title">成功案例</div>
				<!--内容层-->
				<div class="con_content cf">
					<!--滑动的动画效果-->
					<div class="div_slide float_l">
						<div class="slide"></div>
					</div>
					<!--左边导航栏-->
					<div class="left_nav case_nav float_l" id="casetype">
						<ul>
							<!-- 遍历  -->
						</ul>
					</div>
					<!--右边内容区 成功案例-->
					<div class="right_content case_img float_r" id="case_list">
						<ul>
							<!-- 遍历 -->
						</ul>
					</div>

					
				</div>
			</div>
		</div>
	</div>
</main>
<%@ include file="../footer.jsp" %>
	<script>
 
	$(function () {
		var j=1;
		 casetype_all();/* 导航栏的类型数据 */ 
		 type_queryall(j);/* 根据类型查数据 */
		 
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
			type_queryall(data);
		});
		
		
	});
	
	/* 案例类型 */
	function casetype_all(){
		$.ajax({
			url:"casetype/all_type",
			type:"POST",
			async:false,
			success:function(result){  
				//1、解析数据 
				casetype_table(result);
			},
		 error:function(e){
			 alert("error:"+e);
		 }
		});
	} 
	
	function casetype_table(result){
		//构建先前情况table,empty掏空信息的方法
		$("#casetype ul").empty();
		$.each(result,function(index,item){ 
			var type_nameTd=$("<li></li>").append(item.casetype_name);  
			$("<a a href='javascript:void(none);' class='sa' data='"+item.casetype_id+"'></a>").append(type_nameTd).appendTo("#casetype ul");  			 
		});
	}
	
	/* 根据类型查数据 */
	function type_queryall(type_num){ 
		$.ajax({
			url:"casetype/type_queryAll",
			type:"GET",
			data:"case_type="+type_num,
			async:false,
			success:function(result){
				//1、解析数据 
				case_all(result);
			},
			error:function(e){
				 alert("error:"+e);
			 }
		});
	}
	
	function case_all(result){
		//构建先前情况table,empty掏空信息的方法
		$("#case_list ul").empty();
		$.each(result,function(index,item){ 
			var imgTd=$("<img src=''/>").attr("src","/upload/"+item.case_photo);
			var case_titleTd=$("<span></span>").append(item.case_name);  
			$("<li></li>").append(imgTd).append(case_titleTd).appendTo("#case_list ul");  			 
		});
	}
</script>
