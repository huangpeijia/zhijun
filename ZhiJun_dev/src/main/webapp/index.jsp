<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Error Page</title>

<script type="text/javascript" src="js/js/jquery-3.2.1.js"></script> 
<script type="text/javascript" src="js/js/release/wangEditor.min.js"></script> 
</head>
<body>
<!-- <form action="uploadImg" method="post" enctype="multipart/form-data">
	<input type="file" name="file"/>
	<input type="submit" value="提交" />
</form> --> 
	<div id="editor"></div>
	<textarea id="text1" name="text1" style="width:100%; height:200px;"></textarea>
	<input type="submit" value="提交"/>
</body>
<script type="text/javascript">
var E = window.wangEditor
var editor = new E('#editor')
var $text1 = $('#text1')
editor.customConfig.onchange = function (html) {
    // 监控变化，同步更新到 textarea
    $text1.val(html)
}
// 或者 var editor = new E( document.getElementById('editor') )
 editor.customConfig.uploadImgServer = 'editFile/upload' 
   editor.customConfig.showLinkImg = false
   	editor.customConfig.uploadFileName = 'file';
   	// 设置:限制一次最多上传 1 张图片
editor.customConfig.uploadImgMaxLength = 1;
   // 设置：监听事件
editor.customConfig.uploadImgHooks = {

customInsert: function (insertImg, result, editor) {
    // 图片上传并返回结果，自定义插入图片的事件（而不是编辑器自动插入图片！！！）
    // insertImg 是插入图片的函数，editor 是编辑器对象，result 是服务器端返回的结果
    // result 必须是一个 JSON 格式字符串！！！否则报错
    // 举例：假如上传图片成功后，服务器端返回的是 {url:'....'} 这种格式，即可这样插入图片：
	var ulr=result.data;
    var aa =result.aaa;
    insertImg(ulr); 
}
}

editor.create() 

</script>
</html>