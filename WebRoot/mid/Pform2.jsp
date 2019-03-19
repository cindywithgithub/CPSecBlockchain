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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/layui.css" media="all">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
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

.layui-table-page>div {
	height: 36px;
	display: flex;
	flex-flow: row;
	justify-content: center;
	align-items: center;
}
</style>

</head>

<body>
<div id="iframesbox">
	<table class="layui-hide"   id="test" lay-filter="demo"></table>
</div>
	<script type="text/html" id="barDemo">
  		<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
 		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	</script>
	<script src="layui.js"></script>
	<script>
	var tableContent = new Array();
	console.log(0)
	
	tableContent=${list};
	console.log(tableContent);
	var a ="acs" ;
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
				data :tableContent,  
				cols : [ [ //标题栏
					{
						checkbox : true,
						LAY_CHECKED : true
					} //默认全选
					, 
					{
						field : 'productname',
						title : '用户名',
						width : 90
					}, {
						field : 'id',
						title : 'ID',
						width : 90,
						sort : true
					},{
						field : 'inspector',
						title : '手机号码',
						width : 150
					},{
						field : 'modelnumber',
						title : '身份证号',
						width : 200
					}
					 , {
						field : 'productiontime',
						title : '出生日期',
						width : 150
					}, {
						field : 'specifications',
						title : '贷款用途',
						width : 120
					}
					, 
					 {
						fixed : 'right',
						 width : 200, 
							title : '操作',
						align : 'center',
						toolbar : '#barDemo'
					}
				] ],
			});
			//监听工具条
			table.on('tool(demo)', function(obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
				var data = obj.data, //获得当前行数据
					layEvent = obj.event; 
					console.log(obj);
					console.log(data);
					//获得 lay-event 对应的值
				if (layEvent === 'detail') {
					layer.msg('查看操作');
				} else if (layEvent === 'del') {
					layer.confirm('真的删除行么', function(index) {
					
		 				obj.del(); //删除对应行（tr）的DOM结构
						layer.close(index);
						$.ajax({
    		    			type: 'post',
    		    			url: './bcc/delcc.do',
    		    			data: {
								"id": data.id,
							},	
    		    			success: function (data) {
                                	layer.msg("删除成功！")
    		    				
    		    			},
    		    			error: function (error) {
    		    			layer.msg('请求出错，请检查网络！')
    		    		}
    		    	})
					});
				} else if (layEvent === 'edit') {
					layer.open({
						type:2,
						title:"编辑操作",
						area: ['800px', '500px'],
 						content: ['${pageContext.request.contextPath}/mid/formtedit.jsp','no'],
 						
  						/* success: function(layero, index){
    					var body = layer.getChildFrame('body', index);
   						var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
  						console.log(body.html()) ,//得到iframe页的body内容
  						
    					body.find('input').val(data.id),
 						}, */
 						 yes: function(index, layero){
    //do something
    layer.close(index); //如果设定了yes回调，需进行手工关闭
  },
  cancel: function(index, layero){ 
  if(confirm('确定要关闭么')){ //只有当点击confirm框的确定时，该层才会关闭
  //$('#iframesbox').html('<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
									//+ "${pageContext.request.contextPath}/mid/Pform.jsp" + '"scrolling=no ></iframe>');
  //window.parent.location.reload();
    layer.close(index)
  }
  return false; 
}    ,
 						success: function (layero, index) {
 						var body = layer.getChildFrame('body', index);
 						console.log(body);
 						//body.getElementsByTagName("productname").val(data.productname)},
 						 body.find("input[name='productname']").val(data.productname),
 						 body.find("input[name='inspector']").val(data.inspector),
 						 body.find("input[name='modelNumber']").val(data.modelnumber),
 						 body.find("input[name='specifications']").val(data.specifications),
 						 body.find("input[name='productionTime']").val(data.productiontime)
 						 
 						 },
 						 end: function () {
                         location.reload();
      }
 						 
 						 
						}); 
						 layer.iframeAuto(index);  
  				}
  				//layer.closeAll('iframe');
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
		});
	</script>
</body>
</html>
