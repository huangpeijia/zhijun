
//查询总页数
function pages(urlname,c_page,num){ 
	$.ajax({
		url:urlname+"/countall",
		type:"GET",
		success:function(result){  
			counts(result,c_page,num);
		},
	 error:function(e){
		 alert("error:"+e);
	 }
	});
} 
//查询总页数(pro)
function pages_class(urlname,c_page){
	$.ajax({
		url:urlname+"/countall",
		type:"GET",
		success:function(result){
			count_class(result,c_page);
		},
	 error:function(e){
		 alert("error:"+e);
	 }
	});
}
//查询总页数(case)
function pages_case(urlname,c_page){
	$.ajax({
		url:urlname+"/countall",
		type:"GET",
		success:function(result){
			count_case(result,c_page);
		},
	 error:function(e){
		 alert("error:"+e);
	 }
	});
}
function document_count(d_pages){ 
	$.ajax({
		url:"document/count",
		type:"POST",
		success:function(result){ 
			count_docu(result,d_pages);
		}
	});
}

//查询前台新闻总页数
function pages_news(urlname,c_page,num){ 
	$.ajax({
		url:urlname+"/countall",
		type:"GET",
		async:false,
		success:function(result){  
			counts_newss(result,c_page,num);
		},
	 error:function(e){
		 alert("error:"+e);
	 }
	});
} 

//添加数据
function counts(result,c_pages,num){ 
	var coun=Math.ceil(result/num);
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
//添加数据（pro）
function count_class(result,c_pages){
	var coun=Math.ceil(result/7);
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
    $(".page").html(list);
}
//添加数据（case）
function count_case(result,c_pages){
	var coun=Math.ceil(result/7);
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
	list += '<input type="text" id="tiaoz"/>';
	list += '<button type="button" onclick="tz()">跳转</button>';
	list += '共 <span id="coun_num">'+coun+'</span>页   合计'+result+'条数据';
    $(".page_case").html(list);
}
//添加数据（document）
function count_docu(result,c_pages){
	var coun=Math.ceil(result/7);
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
	list += '<input type="text" id="tiaoz"/>';
	list += '<button type="button" onclick="tz()">跳转</button>';
	list += '共 <span id="coun_num">'+coun+'</span>页   合计'+result+'条数据';
    $(".page_docu").html(list);
}
//添加前台新闻数据
function counts_newss(result,c_pages,num){ 
	var coun=Math.ceil(result/num);
	var list='';
	var onpage=c_pages-1; //上一页
	var unpage =c_pages+1;//下一页
	list += '<a href="javascript:void(0)" data="' + 1 + '">首页</a>';
	
	if(c_pages!=1){
		list += '<a href="javascript:void(0)" data="' + onpage + '" class="newss_lt">&lt;</a>';
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
		list += '<a href="javascript:void(0)" data="' + unpage + '" class="newss_gt">&gt;</a>';
	}
	
	list += '<a href="javascript:void(0)" data="' + coun + '">末页</a>';
	list += '<input type="text" id="tiaoz">';
	list += '<button type="button" onclick="tz()">GO</button>';
	list+='<span id="coun_num">'+coun+'</span>';
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
$(".page").on('click','a',function () {   //为a标签动态绑定事件
    var pages=parseInt($(this).attr("data"));  //获取链接里的页码
    protype_all(pages);
});
$(".page_case").on('click','a',function () {   //为a标签动态绑定事件 
    var pages=parseInt($(this).attr("data"));  //获取链接里的页码
    casetype_all(pages);
});
$(".page_docu").on('click','a',function () {   //为a标签动态绑定事件 
    var pages=parseInt($(this).attr("data"));  //获取链接里的页码
    to_page(pages);
});