
//查询总页数
function pages(c_page){
	$.ajax({
		url:"rec/countall",
		type:"GET",
		success:function(result){
		count(result,c_page);
		},
	 error:function(e){
		 alert("error:"+e);
	 }
	});
}
//添加数据
function count(result,c_pages){
	var coun=Math.ceil(result/5);
	var list='';
	var onpage=c_pages-1; //上一页
	var unpage =c_pages+1;//下一页
	list += '<a href="javascript:void(0)" data="' + 1 + '">首页</a>';
	
	if(c_pages!=1){
		list += '<a href="javascript:void(0)" data="' + onpage + '">上页</a>';
	} 
	if(coun<=5){
		for (var j = 1; j <=coun; j++) {
			 if (c_pages == j) list += '<a href="javascript:void(0)" data="' + j + '" class="selected">' + j + '</a>';
		     else list += '<a href="javascript:void(0)" data="' + j + '">' + j + '</a>';
			}
		}else{
			if(c_pages<=3){
				for (var j = 1; j <=5; j++) {
					 if (c_pages == j) list += '<a href="javascript:void(0)" data="' + j + '" class="selected">' + j + '</a>';
				     else list += '<a href="javascript:void(0)" data="' + j + '">' + j + '</a>';
					}
			}else{
				if(c_pages+2<coun){
					for (var j =c_pages-2; j <=c_pages+2; j++) {
						if (c_pages == j) list += '<a href="javascript:void(0)" data="' + j + '" class="selected">' + j + '</a>';
						else list += '<a href="javascript:void(0)" data="' + j + '">' + j + '</a>';
						}
				}
				if(c_pages+2==coun){
					for (var j =c_pages-2; j <=coun; j++) {
						if (c_pages == j) list += '<a href="javascript:void(0)" data="' + j + '" class="selected">' + j + '</a>';
						else list += '<a href="javascript:void(0)" data="' + j + '">' + j + '</a>';
						}
				}
				if(c_pages+1==coun){
					for (var j =c_pages-3; j <=coun; j++) {
						if (c_pages == j) list += '<a href="javascript:void(0)" data="' + j + '" class="selected">' + j + '</a>';
						else list += '<a href="javascript:void(0)" data="' + j + '">' + j + '</a>';
						}
				}
				if(c_pages==coun){
					for (var j =c_pages-4; j <=coun; j++) {
						if (c_pages == j) list += '<a href="javascript:void(0)" data="' + j + '" class="selected">' + j + '</a>';
						else list += '<a href="javascript:void(0)" data="' + j + '">' + j + '</a>';
						}
				}
			}
	}
	if(c_pages!=coun){
		list += '<a href="javascript:void(0)" data="' + unpage + '">下页</a>';
	}
	
	list += '<a href="javascript:void(0)" data="' + coun + '">尾页</a>';
	list += '<input type="text" id="tiaoz">';
	list += '<button type="button" onclick="tz()">跳转</button>';
	list += '共 <span id="coun_num">'+coun+'</span>页   合计'+result+'条数据';
    $("#page").html(list);
}
function tz(){
	var num=parseInt($("#tiaoz").val());
	var coun_num=parseInt($("#coun_num").text());
	if(num<=coun_num){
		to_page(num);
	}else{
		to_page(1);
	}
}
$("#page").on('click','a',function () {   //为a标签动态绑定事件
    var pages=parseInt($(this).attr("data"));  //获取链接里的页码
    	to_page(pages);
});