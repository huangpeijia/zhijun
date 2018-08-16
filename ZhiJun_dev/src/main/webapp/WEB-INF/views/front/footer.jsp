<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--尾部-->
<div class="div_footer">
	<!--上-->
	<div class="top_footer cf">
		<div class="">
			<ul>
				<li><a href="#">网站首页</a></li>
				
			</ul>
		</div>
		<div class="">
			<ul>
				<li><a href="#">成功案例</a></li>
				
			</ul>
		</div>
		<div class="">
			<ul>
				<li><a href="condition.html">公司概况</a></li>
				
			</ul>
		</div>
		<div class="">
			<ul>
				<li><a href="#">人才招聘</a></li>
				
			</ul>
		</div>
		<div class="">
			<ul>
				<li><a href="#">产品服务</a></li>
			
			</ul>
		</div>
		<div class="">
			<ul>
				<li><a href="#">联系我们</a></li>
			
			</ul>
		</div>
	</div>
	<!--中-->
	<c:forEach items="${requestScope.info}" var="info">
	<div class="center_footer cf">
		<div class="footer_img float_l">
			<iframe width="366" height="280" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://j.map.baidu.com/s/CtiXLV"></iframe>
			<%-- <img src="${APP_PATH }/js/front/img/images/map_haiwangdasha.png" usemap="#haiwangmap" class="img_haiwang"/>
			<map name="haiwangmap">
				<area shape ="rect" coords ="0,0,380,260" href ="https://map.baidu.com/?newmap=1&shareurl=1&l=19&tn=B_NORMAL_MAP&hb=B_SATELLITE_STREET&c=12683110,2557738&s=s%26da_src%3DsearchBox.button%26wd%3D%E6%B5%B7%E7%8E%8B%E5%A4%A7%E5%8E%A6-A%E5%BA%A7%26c%3D340%26src%3D0%26wd2%3D%E6%B7%B1%E5%9C%B3%E5%B8%82%E5%8D%97%E5%B1%B1%E5%8C%BA%26pn%3D0%26sug%3D1%26l%3D12%26from%3Dwebmap%26biz_forward%3D%7B%22scaler%22%3A2%2C%22styles%22%3A%22pl%22%7D%26sug_forward%3Da727d4e563e58aaaf4eafc79%26auth%3DzLcMxJTXYwNec1c5Og4wyR8CTXXdTzGYuxHBBRVEzTxtwi04vy77ucvY1SGpuztFHhxQ7E%40Z5Z3%40wWv1cv3uVtGccZcuVtPWv3GuxtVwi04960vy777777777uWvPYuxt8zv7u%40ZPuVteuVtegvcguxHBBRVEzRxtfiKKvyyuC00dEb%26device_ratio%3D2" target="_blank" />
			</map> --%>
		</div>
		<div class="footer_center float_r">
			<ul>
				<li>地址：${info.com_address}</li>
				<li>电话：${info.com_number}</li>
				<li>传真：${info.com_fax}</li>
				<li>Email：${info.com_email}</li>
			</ul>
		</div>
	</div>
	<!--下 版权信息-->
	<div class="bottom_footer">
		<p class="">${info.com_name}&nbsp;&copy;版权所有 ${info.com_copyright}</p>
	</div>
	</c:forEach>
</div>
<div class="arrows_top"><a href="#transparent"><span class="fa fa-chevron-up"></span></a></div><!--置顶-->

<script src="${APP_PATH }/js/front/js/wow.js"></script>
<script src="${APP_PATH }/js/front/js/jquery-3.3.1.min.js"></script>
<script src="${APP_PATH }/js/front/js/lunbo.js"></script>
<script>
	wow = new WOW({
		animateClass: 'animated',
	});
	wow.init();
	
	$(function(){
		$(".pro_span>div>span").each(function(){
			var maxwidth=60;
			if($(this).text().length>maxwidth){
				$(this).text($(this).text().substring(0,maxwidth));
				$(this).html($(this).html()+'...');
			}
		});
	});

</script>
</body>
</html>