<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>区块链Baas核心平台V1.0</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="css/layui.css">
<style>
.layui-side-scroll .layui-nav-child i.layui-icon {
	font-size: 18px;
	margin: 0 6px 0 -7px";
}
.content {
    flex: 1;
}
</style>
</head>

<body style="text-align:center" class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
	<!-- 	<img style="margin:0.6px 1221px 0px 0px;high:52px;width:52px"src="./images/dsf.png" alt="bupt">-->
				<img style="margin:-4.4px 1221px 0px 280px;width:228px;height:68px" src="./images/by3.png" alt="bupt">
			<div class="layui-logo" style="color: #fff;
    font-size: 24px;width:1390px">区块链基础设施服务平台(BAAS)
			</div>
			 <div style="color: #fff;
    font-size: 40px;margin-left:210px;">
			 	<%-- <span class="layui-breadcrumb"  >
				 	 <a href="">首页</a>
				 	 <a href="">区块链平台概况</a> 
				 	 <a href="">系统配置</a> 
				 	 <a><cite>正文</cite></a>
				</span> --%>
			</div> 
			<ul class="layui-nav layui-layout-right">
				<!-- <li class="layui-nav-item"> -->
				
				<li class="layui-nav-item"><a href="javascript:;"> <!-- <img src="http://t.cn/RCzsdCq" class="layui-nav-img"> -->
						孙嘉慧
				</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">基本资料</a>
						</dd>
						<dd>
							<a href="">安全设置</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a href="">登录</a></li>
				<li class="layui-nav-item"><a href="">注册</a></li>

			</ul>
		</div>

		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;"><i class="layui-icon"
							style="font-size: 25px;"> &#xe631;</i> 区块链概览</a>
						<dl class="layui-nav-child">
							<dd value='100'>
								<a value='100' style="text-indent:12px" href="javascript:;"
									id="waitWork1x"><i class="layui-icon"
									style="font-size: 18px;margin: 0 6px 0 -7px"> &#xe623;</i>区块链信息</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item layui-nav-itemed"><a href="javascript:;"><i
							class="layui-icon" style="font-size: 25px;"> &#xe62d;</i>区块信息</a>
						<dl class="layui-nav-child">
							<dd value='101'>
								<a href="javascript:;" style="text-indent:12px"><i
									class="layui-icon" style="font-size: 18px;margin: 0 6px 0 -7px">
										&#xe623;</i>创世块区块结构</a>
							</dd>
							<dd value='202'>
								<a href="javascript:;" style="text-indent:12px"><i
									class="layui-icon" style="font-size: 18px;margin: 0 6px 0 -7px">
										&#xe623;</i>区块链信息结构</a>
							</dd>
							 

						</dl></li>
					<li class="layui-nav-item layui-nav-itemed"><a href="javascript:;"><i
							class="layui-icon" style="font-size: 25px;"> &#xe62c;</i> 激励方式</a>
						<dl class="layui-nav-child">
							<dd value='301'>
								<a  href="javascript:;" style="text-indent:12px"><i
									class="layui-icon" style="font-size: 18px;margin: 0 6px 0 -7px">
										&#xe623;</i>区块链激励机制</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item layui-nav-itemed"><a href="javascript:;"><i
							class="layui-icon" style="font-size: 25px;"> &#xe705;</i> 生成地址管理</a>
						<dl class="layui-nav-child">
							<dd value='401'>
								<a  href="javascript:;" style="text-indent:12px"><i
									class="layui-icon" style="font-size: 18px;margin: 0 6px 0 -7px">
										&#xe623;</i>地址管理</a>
							</dd>
							
						</dl></li>
						<li class="layui-nav-item layui-nav-itemed"><a href="javascript:;"><i
							class="layui-icon" style="font-size: 25px;"> &#xe705;</i> 钱包系统</a>
						<dl class="layui-nav-child">
							<dd value="501">
								<a href="javascript:;" style="text-indent:12px"><i
									class="layui-icon" style="font-size: 18px;margin: 0 6px 0 -7px">
										&#xe623;</i>转账</a>
							</dd>
							
						</dl></li>
						<li class="layui-nav-item layui-nav-itemed"><a href="javascript:;"><i
							class="layui-icon" style="font-size: 25px;"> &#xe705;</i> 区块链浏览器</a>
						<dl class="layui-nav-child">
							<dd value='601'>
								<a href="javascript:;" style="text-indent:12px"><i
									class="layui-icon" style="font-size: 18px;margin: 0 6px 0 -7px">
										&#xe623;</i>最近交易</a>
							</dd>
							
						</dl></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<!-- 内容主体区域 !!!!!!!!!!!後面是局部刷新的頁面-->
			<!-- <div id="mainContent2">
			
			</div> -->
			<div id="mainContent">
				<section id="iframebox">
					<div id="iframesbox">
						<iframe width="1100px" height="560px" frameborder=0 marginheight=0
							marginwidth=0 src="${pageContext.request.contextPath}/block/mainpng.jsp" scrolling=no></iframe>
						<!-- class="box news"  class="alluserBody" <iframe frameborder=0 marginheight=0 marginwidth=0
							src="${pageContext.request.contextPath}/wrt/systemNav2.html"
							scrolling=no></iframe>-->

					</div>

				</section>

				<!-- <div class="layui-carousel" id="test1">
						<div carousel-item>
							<div>条目1</div>
							<div>条目2</div>
							<div>条目3</div>
							<div>条目4</div>
							<div>条目5</div>
						</div>
					</div> -->
				<!--<script src="layui.js"></script> 条目中可以是任意内容，如：<img src=""> -->

				<span id="testView"></span>
				<div id="test2"></div>

				<script src="layui.js"></script>
				<script>
				changeIframe()
					var width = document.body.clientWidth;
					width = width - 245;
					var height = document.documentElement.clientHeight;
					height = height - 50;
					var stringwidth = width + "px";
					var stringheight = height + "px";
					//alert(stringwidth + "," + stringheight);
					document.getElementById("iframebox").style.width = stringwidth;
					document.getElementById("iframebox").style.height = stringheight;
					document.getElementById("iframesbox").style.width = "98%";
					document.getElementById("iframesbox").style.height = "95%";
					layui.use([ [ 'element' ], 'carousel' ], 'laydate', function() {
						var element = layui.element;
						var carousel = layui.carousel;
						var laydate = layui.laydate;
						//建造实例
						carousel.render({
							elem : '#test1',
							width : '100%', //设置容器宽度
							arrow : 'always' //始终显示箭头
						//,anim: 'updown' //切换动画方式
						});
				
						laydate.render({
							elem : '#test2',
							position : 'static',
							change : function(value, date) { //监听日期被切换
								lay('#testView').html(value);
							}
						});
				
					});
					$("#waitWork").click(function() {
						var url = "${pageContext.request.contextPath}/ac/page.do";
						var data = {
							type : 1
						};
						$.ajax({
							type : "get",
							async : false, //同步请求  
							url : url,
							data : data,
							timeout : 1000,
							success : function(dates) {
								//alert(dates);  
								$("#mainContent").html(dates); //要刷新的div  
							},
							error : function() {
								// alert("失败，请稍后再试！");  
							}
						});
					});
					$("#waitWork1").click(function() {
						var url = "${pageContext.request.contextPath}/ac/list.do";
						var data = {
							type : 1
						};
						$.ajax({
							type : "get",
							async : false, //同步请求  
							url : url,
							data : data,
							timeout : 1000,
							success : function(dates) {
								//alert(dates);  
								$("#mainContent").html(dates); //要刷新的div  
							},
							error : function() {
								// alert("失败，请稍后再试！");  
							}
						});
					});
					
					
					function changeSrc(address) {
	$('iframe').attr('src', address);
}
// 切换导航
function changeIframe() {
	
	var a = "/BlockChain/history/writeBlock.do";
	var b = "/BlockChain/history/innershowBlock.do";
	var c = "/BlockChain/BlockChain/getChainBlockInfor.do"
	var d = "/BlockChain/BlockChain/getChainInfor.do";
	var e = "/BlockChain/BlockChain/portInfor.do";
	var f = "/BlockChain/wrt/systemCon.html";
	var g = "/BlockChain/wrt/systemNav2.html";
	var h = "/BlockChain/wrt/systemNav2.html";
	var K = "/BlockChain/wrt/userMage.html";
	var l = "/BlockChain/wrt/powerMage.html";
	var m = "/BlockChain/wrt/sign.html";//原41
	
	var ll = "/BlockChain/bank/personal_form.html";
	var pp = "/BlockChain/bank/company_form.html";
	var jtb= "/CPSecBlockchain/mid/Pform.jsp";
	var has= "/CPSecBlockchain/admin2/1.html";
	var has2= "/CPSecBlockchain/admin2/2.html";
	var todata="${pageContext.request.contextPath}/mid/formtop.jsp"
	var data="${pageContext.request.contextPath}/bcc/json.do";
	var data2="${pageContext.request.contextPath}/ac/list.do";
	var q101="${pageContext.request.contextPath}/bcc/getblockinfo.do";
	var q401="${pageContext.request.contextPath}/bcc/listaccounts.do";
	var q501="${pageContext.request.contextPath}/bcc/gosendtoaddress.do";
	var q201= "${pageContext.request.contextPath}/block/accountinfo.jsp";
	var q601= "${pageContext.request.contextPath}/bcc/blockchianinfo1.do";
	var q100= "${pageContext.request.contextPath}/block/chainknows.jsp";
	var q203= "${pageContext.request.contextPath}/block/chainspng.jsp";
	var q301= "${pageContext.request.contextPath}/block/given.jsp";
	$(".layui-side-scroll dl dd").on(
			'click',
			function() {
			console.log(1)
				var ar = $(this).attr("value");
				if (ar == 101){
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
							+ q101 + '"scrolling=no ></iframe>');
				}
				if (ar == 401){
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
							+ q401 + '"scrolling=no ></iframe>');
				}
				if (ar == 501) {
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
							+ q501 + '"scrolling=no ></iframe>');
				}
				if (ar == 601) {
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
									+ q601 + '"scrolling=no ></iframe>');
				}
				if (ar == 100) {
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
									+ q100 + '"scrolling=no ></iframe>');
				}
				if(ar == 203){
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
									+ q203 + '"scrolling=no ></iframe>');
				}
				if(ar == 301){
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
									+ q301 + '"scrolling=no ></iframe>');
				}
				if(ar==66){
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
									+ e + '"scrolling=no ></iframe>');
				}
				if(ar==99){
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
									+ K + '"scrolling=no ></iframe>');
				}
				if(ar==1010){
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
							+ l + '"scrolling=no ></iframe>');
				}
				if(ar==41){
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
							+ d + '"scrolling=no ></iframe>');
				}
				if(ar==""){
					$('#iframesbox').html('');
				}
				
				if(ar==991){//个人信贷
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
							+ ll + '"scrolling=no ></iframe>');
				}
				if(ar==981){//对公信贷
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
							+ pp + '"scrolling=no ></iframe>');
				}
				if(ar==201){//对公信贷
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
							+ q201 + '"scrolling=no ></iframe>');
				}
				if(ar==202){//对公信贷
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
							+ has2 + '"scrolling=no ></iframe>');
				}
				if(ar==000203){//对公信贷
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
							+ has + '"scrolling=no ></iframe>');
				}
				if(ar==302){//dongtai
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
							+ data + '"scrolling=no ></iframe>');
				}
				if(ar==0301){//dongtai
					$('#boxNews').hide();
					$('#iframesbox1').hide();
					$('#iframesbox2').hide();
					$('#iframebox').show();
					$('#iframesbox').html(
							'<iframe width="1100px" height="560px" frameborder=0 marginheight=0 marginwidth=0 src="'
							+ todata + '"scrolling=no ></iframe>');
				}
			})}
					
				</script>

			</div>
		</div>

		<div class="layui-footer">版权所有 2009-2018 © 北京国泰信安科技有限公司</div>
	</div>


</body>
</html>