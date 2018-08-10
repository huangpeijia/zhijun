var t=n=k=0,count;
    $(function(){
        count=$(".div_display>div").length;
        $(".div_display>div:not(:first-child)").hide();
        $(".div_ul li").click(function(){
            var i = $(this).text() - 1;
            if(i==k) return;//如果点击的是同一个按钮，就返回不继续执行
            k=n = i;
            if (i >= count) return;
            $(".div_display>div").filter(":visible").fadeOut(500).parent().children().eq(i).fadeIn(1000);
            $(".div_ul li").eq(i).css({"background-color":"#FB8722"}).siblings('li').css({"background-color":"#ffffff"});
        });
        // 开始轮播（后面4000为轮播速度）
        t = setInterval("showAuto()",6000);
        //暂停轮播
       /* $(".div_mainly").hover(function () {
            clearInterval(t);
		},function () {
			t = setInterval("showAuto()",6000);
		});*/
    })
    function showAuto() 
    { 
        n = n >=(count - 1) ? 0 : ++n; 
        $(".div_mainly li").eq(n).trigger('click'); 
    } 