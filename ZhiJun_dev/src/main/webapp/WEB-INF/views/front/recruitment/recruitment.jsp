<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../head.jsp" %>
    <script>
    document.title+="-人才招聘";
    </script>
    <style type="text/css">
        .ul_nav>li:nth-child(6)>a{
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
				<div class="con_title">人才招聘</div>
				<!--内容层-->
				<div class="con_content cf">
					<!--滑动的动画效果-->
					<div class="div_slide float_l">
						<div class="slide"></div>
					</div>
					<!--左边导航栏-->
					<div class="left_nav invite_nav float_l">
						<ul>
							<a href="javascript:void(0);" data="0"><li>校园招聘</li></a>
							<a href="javascript:void(0);" data="1"><li>社会招聘</li></a>
						</ul>
					</div>
					<!--右边内容区 公司简介-->
					<div class="right_content invite float_r" id="rec_list">
							<div>
								<span>岗位方向</span>
								<select class="invite_select">
									<option value="0">前端开发工程师</option>
									<option value="1">前端开发工程师1</option>
									<option value="2">前端开发工程师2</option>
									<option value="3">前端开发工程师3</option>
								</select>
							</div>
							<div class="rec_invite">
								<!-- 遍历内容 -->
							</div>
							<div>
							<c:forEach items="${requestScope.info}" var="info">
								<span>联系方式</span>
								<p>电话：${info.com_number}</p>
								<p>传真：${info.com_fax}</p>
								<p>邮箱：${info.com_email}</p>
							</c:forEach>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
 <%@ include file="../footer.jsp" %>
	<script>
	$(function(){
		var j=0;/* 0:校园招聘 */
		type_queryall(j);/* 根据类型查数据 */
		var rec_id=$(".invite_select").val();/* 获取下拉列表选中的值 */
		id_queryall(rec_id);/* 默认出现的数据 */
		
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
			rec_id=$(".invite_select").val();
			id_queryall(rec_id);
		});
		
		
		$(".invite_select").change(function(){
			rec_id=$(this).val();			
			id_queryall(rec_id);
		});
	});

	
	/* 根据类型查数据 */
	function type_queryall(type_num){ 
		$.ajax({
			url:"type_queryAll",
			type:"GET",
			data:"rec_type="+type_num,
			async:false,
			success:function(result){
				//1、解析数据 
				rec_all(result);
			},
			error:function(e){
				 alert("error:"+e);
			 }
		});
	}
	
	function rec_all(result){
		//构建先前情况table,empty掏空信息的方法
		$(".invite_select").empty();
		$.each(result,function(index,item){ 
			$("<option value='"+item.rec_id+"'></option>").append(item.rec_name).appendTo(".invite_select"); 				 
		});
	}	
	
	/* 根据id查数据 */
	function id_queryall(rec_id){ 
		$.ajax({
			url:"id_queryAll",
			type:"GET",
			data:"rec_id="+rec_id,
			async:false,
			success:function(result){
				//1、解析数据 
				id_rec_all(result);
			},
			error:function(e){
				 alert("error:"+e);
			 }
		});
	}
	
	function id_rec_all(result){
		//构建先前情况table,empty掏空信息的方法
		$(".rec_invite").empty();
		$.each(result,function(index,item){ 
			var numTd=$("<p></p>").append(item.rec_num+"人");//人数
			var nTd=$("<div><span>招聘人数</span></div>").append(numTd);
			var claimTd=$("<p></p>").append(item.rec_claim);//要求
			var cTd=$("<div><span>岗位要求</span></div>").append(claimTd);
			var salaryTd=$("<p></p>").append(item.rec_salary);//薪资
			var sTd=$("<div><span>薪资</span></div>").append(salaryTd);
			var addressTd=$("<p></p>").append(item.rec_address);//工作地点
			var aTd=$("<div><span>工作地点</span></div>").append(addressTd);
			$("<div></div>").append(nTd).append(cTd).append(sTd).append(aTd).appendTo(".rec_invite"); 				 
		});
	}	
    </script>