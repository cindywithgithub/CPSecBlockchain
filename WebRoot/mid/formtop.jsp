<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta charset="utf-8">
<title>layui.form小例子</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/layui.css" media="all">
<style>.box{
	font-size: 14px;
	width: 950px;
	height: 475px;
	border: 2px solid #ccc;
	border-radius: 10px;
	margin: 24px auto;
	padding: 10px 10px;
	position: relative;
}
.box ul{
	width: 750px;
	height: 390px;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	margin: auto;
}
/* .layui-input, .layui-textarea {
    display: block;
    width: 80%;
    padding-left: 10px;
} */
.box input {
 display: block;
    width: 80%;
    margin: 25px;
    padding: 10px;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
button{
margin-left: 100px;
}</style>

</head>
<body>
	<div class="box">
		<ul>
			<form class="layui-form">
				<div class="layui-form-item">
					<label class="layui-form-label">姓名：</label>
					<div class="layui-input-block">
						<input type="text" name="productname" placeholder="请输入真实姓名"
							autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">身份证号：</label>
					<div class="layui-input-block">
						<input type="text" name="modelNumber" placeholder="请输入"
							autocomplete="off" class="layui-input" placeholder="身份证号">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">贷款用途：</label>
					<div class="layui-input-block">
						<input type="text" name="specifications" class="layui-input"
							autocomplete="off" placeholder="贷款用途">
					</div>
				</div>

				<div class="layui-form-item">
					<label class="layui-form-label">手机号码：</label>
					<div class="layui-input-block">
						<input type="text" name="inspector" class="layui-input"
							autocomplete="off" placeholder="联系手机号">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">出生日期：</label>
					<div class="layui-input-block">
						<input type="text" name="productionTime" class="layui-input"
							id="test1" autocomplete="off" placeholder="出生日期">
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<button class="layui-btn" lay-submit lay-filter="search">立即提交</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>

			</form>
		</ul>
	</div>

	<script src="${pageContext.request.contextPath}/layui.js"></script>
	<script>
layui.use('laydate', function(){
  var laydate = layui.laydate;
  
  //执行一个laydate实例
  laydate.render({
    elem: '#test1' //指定元素
  });
});
layui.config({
    base: '../lay/modules/'
}).use(['element','form','layer','laypage','table','laydate','laydate'], function() {
  	var form = layui.form;
  var laydate = layui.laydate;
  //各种基于事件的操作，下面会有进一步介绍
  	form.on('submit(search)', function(data){
	    console.log($("form").serialize()); // FirstName=Bill&LastName=Gates
		$.ajax({
		    type: 'post',
		    url: '../bcc/add.do',
		    data: $("form").serialize(),
		    success: function(data) {
         		layer.msg("提交成功！")
		    }
		});
		
		return false;
	});
	laydate.render({
    elem: '#test1' //指定元素
  });
});


</script>
</body>
</html>