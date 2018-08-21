$(".nav_tabs ul a").click(function () {
	var i = $(this).index();
	$(".tab-content>div").eq(i).css({"display":"block"}).siblings('div').css({"display":"none"});
});
