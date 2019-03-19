
$(function () {
	$(".layui-nav-child dd").on("click",function () {
		var id = $(this).attr("id");
		var parentId = $(this).parents("li").attr("id");
		// var src = parentId+"/"+iframeUrl[parentId][id];
		var src = id+".html";
		$(".layui-tab-content iframe").attr({"src":src});
	})
})