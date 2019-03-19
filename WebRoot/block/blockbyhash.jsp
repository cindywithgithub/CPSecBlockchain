<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="../css/layui.css">
<link rel="stylesheet" href="../css/bootstrap.css">
<!-- <link rel="stylesheet" href="css/table.css"> -->
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/layui.js"></script>
<style>
.handle {
	min-width: 125px;
}

.box {
	width: 1100px;
	margin-left: 80px;
	margin-top: 18px;
}

.form-control {
	display: inline-block;
}

.box .form-horizontal .form-group {
	margin-right: 0px;
	margin-left: 0px;
}

#imgHash,#imgHash1 {
	width: 500px;
}

#imgHash2 {
	width: 500px;
}

#userTable {
	width: 800px;
}

#userTable td {
	padding: 2px 10px;
}

#userTable td:first-child {
	width: 140px;
	background: #f2f2f2;
}

#userTable1 {
	width: 800px;
}

#userTable1 td:first-child {
	width: 140px;
	background: #f2f2f2;
}

td:nth-child(2) {
	width: 400px;
}

#img {
	width: 425px;
	position: absolute;
	top: 60px;
	right: 5px;
}
</style>
</head>
<body>
	<div class="box">

		<form class="form-horizontal"></form>

		<h2>区块#${block.height}</h2>
		<h3>概览</h3>
		<table id="userTable1" class="layui-table layui-fluid" lay-size="sm">
			<tr>
				<td>交易次数</td>
				<td>${block.tx.size()}
			</tr>
			<tr>
				<td>高度</td>
				<td>${block.height}
			</tr>
			<tr>
				<td>时间戳</td>
				<td>${block.timeDate}
			</tr>
			<tr>
				<td>难度系数</td>
				<td>${block.difficulty}
			</tr>
			<tr>
				<td>目标值</td>
				<td>${block.bits}
			</tr>
			<tr>
				<td>大小</td>
				<td>${block.size}
			</tr>
			<tr>
				<td>版本</td>
				<td>${block.version}
			</tr>
			<tr>
				<td>随机数</td>
				<td>${block.nonce}
			</tr>
		</table>
		<h3>哈希值</h3>
		<table id="userTable" class="layui-table layui-fluid" lay-size="sm">
			<tr>
				<td>哈希值</td>
				<td>${block.hashcode}
			</tr>
			<tr>
				<td>上一区块</td>
				<td>${block.previous}
			</tr>
			<tr>
				<td>下一区块</td>
				<td>${block.next}
			</tr>
			<tr>
				<td>merkle根</td>
				<td>${block.merkleroot}
			</tr>
			<tr>
				<td>交易</td>
				<td>${block.tx}
			</tr>
		</table>
		<h3>交易列表</h3>
		
		<div>
			<span id="layPage"></span>
		</div>

		<script>
			layui.config({
				base : '/base/lay/modules/'
			}).use([ 'element', 'form', 'layer', 'laypage', 'table' ],
					function() {
						var element = layui.element;
						var table = layui.table;
						var layer = layui.layer;
						var laypage = layui.laypage;

						//表格
						table.render({
							elem : 'userTable,userTable1,userTable2',
						})

					});
		</script>
</body>
</html>

