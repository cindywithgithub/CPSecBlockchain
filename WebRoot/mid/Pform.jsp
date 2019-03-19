<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Pform.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<title>layui在线调试</title>
<link rel="stylesheet" href="css/layui.css" media="all">
<style>
body {
	margin: 10px;
}

.demo-carousel {
	height: 200px;
	line-height: 200px;
	text-align: center;
}
.layui-table-page>div{
	height:36px;
	display: flex;
    flex-flow: row;
    justify-content: center;
    align-items: center;
}
</style>

</head>

<body>

	<table class="layui-hide" id="test" lay-filter="demo"></table>

	<!-- <div class="layui-tab layui-tab-brief" lay-filter="demo">
		<ul class="layui-tab-title">
			<li class="layui-this">演示说明</li>
			<li>日期</li>
			<li>分页</li>
			<li>上传</li>
		</ul>
		<div class="layui-tab-content">
			<div class="layui-tab-item layui-show">

				<div class="layui-carousel" id="test1">
					<div carousel-item>
						<div>
							<p class="layui-bg-green demo-carousel">在这里，你将以最直观的形式体验
								layui！</p>
						</div>
						<div>
							<p class="layui-bg-red demo-carousel">在编辑器中可以执行 layui 相关的一切代码</p>
						</div>
						<div>
							<p class="layui-bg-blue demo-carousel">你也可以点击左侧导航针对性地试验我们提供的示例</p>
						</div>
						<div>
							<p class="layui-bg-orange demo-carousel">如果最左侧的导航的高度超出了你的屏幕</p>
						</div>
						<div>
							<p class="layui-bg-cyan demo-carousel">你可以将鼠标移入导航区域，然后滑动鼠标滚轮即可</p>
						</div>
					</div>
				</div>
			</div>
			<div class="layui-tab-item">
				<div id="laydateDemo"></div>
			</div>
			<div class="layui-tab-item">
				<div id="pageDemo"></div>
			</div>
			<div class="layui-tab-item">
				<div class="layui-upload-drag" id="uploadDemo">
					<i class="layui-icon"></i>
					<p>点击上传，或将文件拖拽到此处</p>
				</div>
			</div>
		</div>
	</div>
 -->

	<script type="text/html" id="barDemo">
  		<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
 		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	</script>
	<script src="layui.js"></script>
	<script>
	var tableContent = new Array();
	tableContent="${list}" ;
	var a = "acs" ;
		layui.config({
			version : '1515376178738' //为了更新 js 缓存，可忽略
		});
	
		layui.use([ 'laydate', 'laypage', 'layer', 'table', 'carousel', 'upload', 'element' ], function() {
			var laydate = layui.laydate, //日期
				laypage = layui.laypage //分页
			layer = layui.layer //弹层
			, table = layui.table //表格
			, carousel = layui.carousel //轮播
			, upload = layui.upload //上传
			, element = layui.element; //元素操作
	
			//监听Tab切换
			element.on('tab(demo)', function(data) {
				layer.msg('切换了：' + this.innerHTML);
				console.log(data);
			});
	
			//执行一个 table 实例
			table.render({
				elem : '#test',
				height : 510, /* url: '${pageContext.request.contextPath}/ac/show.do' //数据接口
				    , */
				page : true, //开启分页
				data : [  {
					"id" : "10008",
					"thisNumber" : "1508553422538",
					"productName" : "许纯烽",
					"modelNumber" : "189998777675846578",
					"specifications" : "购买家具",
					"inspector" : "17876789009",
					"productionTime" : "2017-10-19",
				} ,
				{
					"id" : "10009",
					"thisNumber" : "1508553422539",
					"productName" : "刘京",
					"modelNumber" : "189998777675846578",
					"specifications" : "购买家具",
					"inspector" : "17876789009",
					"productionTime" : "2007-10-19",
				} ,
				{
					"id" : "10010",
					"thisNumber" : "1508553422540",
					"productName" : "许纯烽",
					"modelNumber" : "189998777675846578",
					"specifications" : "购买家具",
					"inspector" : "17876789009",
					"productionTime" : "2017-10-19",
				} ,
				{
					"id" : "10011",
					"thisNumber" : "1508557319683",
					"productName" : "高宏民",
					"modelNumber" : "187776777890987635",
					"specifications" : "购买楼房",
					"inspector" : "17677789989",
					"productionTime" : "2017-10-19",
				} ,
				{
					"id" : "10012",
					"thisNumber" : "1508557319683",
					"productName" : "高宏民",
					"modelNumber" : "187776777890987635",
					"specifications" : "购买楼房",
					"inspector" : "17677789989",
					"productionTime" : "2017-10-19",
				} ,
				{
					"id" : "10013",
					"thisNumber" : "1508557319683",
					"productName" : "高宏民",
					"modelNumber" : "187776777890987635",
					"specifications" : "购买楼房",
					"inspector" : "17677789989",
					"productionTime" : "2017-10-19",
				} ,
				{
					"id" : "10014",
					"thisNumber" : "1508557319683",
					"productName" : "高宏民",
					"modelNumber" : "187776777890987635",
					"specifications" : "购买楼房",
					"inspector" : "17677789989",
					"productionTime" : "2017-10-19",
				} 
				 ,
				{
					"id" : "10015",
					"thisNumber" : "1508557319683",
					"productName" : "牛军",
					"modelNumber" : "187776777890987635",
					"specifications" : "购买楼房",
					"inspector" : "17677789989",
					"productionTime" : "2017-10-19",
				},
				{
					"id" : "10016",
					"thisNumber" : "1508557319683",
					"productName" : "叶伟巧",
					"modelNumber" : "187776777890987635",
					"specifications" : "购买楼房",
					"inspector" : "17677789989",
					"productionTime" : "2017-10-19",
				},
				{
					"id" : "10017",
					"thisNumber" : "1508557319683",
					"productName" : "花如",
					"modelNumber" : "187776777890987635",
					"specifications" : "购买楼房",
					"inspector" : "17677789989",
					"productionTime" : "2017-10-19",
				},
				{
					"id" : "10018",
					"thisNumber" : "1508557319683",
					"productName" : "京名",
					"modelNumber" : "187776777890987635",
					"specifications" : "购买楼房",
					"inspector" : "17677789989",
					"productionTime" : "2017-10-19",
				},
				{
					"id" : "10019",
					"thisNumber" : "1508557319683",
					"productName" : "高坤",
					"modelNumber" : "187776777890987635",
					"specifications" : "购买楼房",
					"inspector" : "17677789989",
					"productionTime" : "2017-10-19",
				}
				], 
				
				/*
编号	真实姓名	身份证号	贷款用途	出生日期	手机号码
1508553422538	许纯烽	189998777675846578	购买家具	2017-10-19	17876789009
1508557319683	高宏民	187776777890987635	购买楼房	2017-10-19	17677789989
1508563581973	叶伟巧	111223456788767889	购买汽车	2017-10-17	12233345435
1508570354441	高坤	5108827197908123389	别墅购买	1979-08-12	13501005431
1510129015480	高宏民	123568799	买房	2017-11-09	13555555555 
 */
				cols : [ [ //标题栏
					{
						checkbox : true,
						LAY_CHECKED : true
					} //默认全选
					, {
						field : 'id',
						title : 'ID',
						width : 80,
						sort : true
					},
					{
						field : 'thisNumber',
						title : '编号',
						width : 135,
						sort : true
					}
					
					, {
						field : 'productName',
						title : '用户名',
						width : 80
					}
					, {
						field : 'modelNumber',
						title : '身份证号',
						width : 175
					}
					, {
						field : 'specifications',
						title : '贷款用途',
						width : 95
					}
					, {
						field : 'inspector',
						title : '手机号码',
						width : 130
					}
					, {
						field : 'productionTime',
						title : '出生日期',
						width : 130
					}
					,  {
						fixed : 'right',
						 width : 180, 
							title : '操作',
						align : 'center',
						toolbar : '#barDemo'
					}
				] ],
			});
	
			//监听工具条
			table.on('tool(demo)', function(obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
				var data = obj.data, //获得当前行数据
					layEvent = obj.event; //获得 lay-event 对应的值
				if (layEvent === 'detail') {
					layer.msg('查看操作');
				} else if (layEvent === 'del') {
					layer.confirm('真的删除行么', function(index) {
						obj.del(); //删除对应行（tr）的DOM结构
						layer.close(index);
					//向服务端发送删除指令
					});
				} else if (layEvent === 'edit') {
					layer.msg('编辑操作');
				}
			});
	
			//执行一个轮播实例
			carousel.render({
				elem : '#test1',
				width : '100%', //设置容器宽度
				height : 200,
				arrow : 'none', //不显示箭头
				anim : 'fade' //切换动画方式
			});
	
			//将日期直接嵌套在指定容器中
			var dateIns = laydate.render({
				elem : '#laydateDemo',
				position : 'static',
				calendar : true, //是否开启公历重要节日
				mark : { //标记重要日子
					'0-10-14' : '生日',
					'2017-11-11' : '剁手',
					'2017-11-30' : ''
				},
				done : function(value, date, endDate) {
					if (date.year == 2017 && date.month == 11 && date.date == 30) {
						dateIns.hint('一不小心就月底了呢');
					}
				},
				change : function(value, date, endDate) {
					layer.msg(value)
				}
			});
	
			//分页
			laypage.render({
				elem : 'pageDemo', //分页容器的id
				count : 100, //总页数
				skin : '#1E9FFF', //自定义选中色值 //,skip: true //开启跳页
				jump : function(obj, first) {
					if (!first) {
						layer.msg('第' + obj.curr + '页');
					}
				}
			});
	
			//上传
			upload.render({
				elem : '#uploadDemo',
				url : '', //上传接口
				done : function(res) {
					console.log(res)
				}
			});
	
			//底部信息
			var footerTpl = lay('#footer')[0].innerHTML;
			lay('#footer')[0].innerHTML = layui.laytpl(footerTpl).render({});
		});
	</script>
</body>
</html>
