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
<title>layui</title>
<meta name="renderer" content="webkit">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../css/layui.css">	
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
	<script src="../layui.js" charset="utf-8"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

</head>

<body ><!--onload="tableColor()"  -->

	<!-- id="test"<table class="layui-hide" ></table> -->

	<!-- <div class="rightinfo"> -->

			<button class="layui-btn">
				<i class="layui-icon layui-btn-sm" onclick="showAddDlg()">&#xe608;</i> 添加
			</button>
			
		<table  lay-filter="demo" id="tab"> <!-- id="tab" -->
			<thead>
				<tr>
					<th lay-data="{field:'id', width:100}">序号</th>
					<th lay-data="{field:'actail', width:100}">机号</th>
					<th lay-data="{field:'actype', width:100}">机型</th>
					<th lay-data="{field:'airline', width:100}">所属航线</th>
					<th lay-data="{field:'acnum', width:100}">编号</th>
					<th lay-data="{width:100, align:'center', toolbar: '#barDemo1', fixed: 'right'}">操作</th><!--  ,-->
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="acs" varStatus="status">
					<tr>
						<td>${status.index + 1 }</td>
						<td>${acs.actail }</td>
						<td>${acs.actype }</td>
						<td>${acs.airline }</td>
						<td>${acs.acnum }</td>
						<td><a class="layui-btn layui-btn-sm" id='#barDemo1' href="javascript:void(0)"
							onclick="showModifyDlg('${status.index + 1}','${acs.id}','${acs.actail }','${acs.actype }','${acs.airline }','${acs.acnum }')">修改</a>&nbsp&nbsp<a
							class="layui-btn layui-btn-sm"
							href="${pageContext.request.contextPath}/ac/del.do?id=${acs.id}">删除</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div id="test1"></div>
	
	<div id="AcDlg" class="modal fade bs-example-modal-sm" tabindex="-1"
		role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">增加机型</h4>
				</div>
				<div class="modal-body">
					<label for="actailAdd">机号：</label> <input type="text"
						class="form-control" value="" id="actailAdd"><br> <label
						for="actypeAdd">机型:</label> <input type="text"
						class="form-control" id="actypeAdd" /><br> <label
						for="actypeAdd">所属航线:</label> <input type="text"
						class="form-control" id="airlineAdd" /><br> <label
						for="acnumAdd">编号:</label> <input type="text" class="form-control"
						id="acnumAdd" /><br>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-sm"
						data-dismiss="modal">取消</button>
					<input id="saveAcAdd" type="button" class="btn btn-info btn-sm"
						onclick="saveAcAdd()" value="保存">
				</div>
			</div>
		</div>
	</div>

	<div id="ModifyAcDlg" class="modal fade bs-example-modal-sm"
		tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">修改机型</h4>
				</div>
				<div class="modal-body">
					<input id="modifyAcID" style="display: none"><input
						id="rownumber" style="display: none"> <label
						for="actailModify">机号：</label> <input type="text"
						class="form-control" value="" id="actailModify"><br>
					<label for="actypeAdd">机型:</label> <input type="text"
						class="form-control" id="actypeModify" /><br> <label
						for="actypeModify">所属航线:</label> <input type="text"
						class="form-control" id="airlineModify" /><br> <label
						for="acnumModify">编号:</label> <input type="text"
						class="form-control" id="acnumModify" /><br>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-sm"
						data-dismiss="modal">取消</button>
					<input id="modifyAcAdd" type="button" class="btn btn-info btn-sm"
						onclick="modifyAcAdd()" value="保存">
				</div>
			</div>
		</div>
	</div>
	
	<script >
		layui.use('table', function() { /*type="text/javascript" */
			var laypage = layui.laypage;
			var table = layui.table;
			var tab = document.getElementById('tab');
			table.init('demo', {
				height : 315, //设置高度
				limit : tab.rows.length //注意：请务必确保 limit 参数（默认：10）是与你服务端限定的数据条数一致
			//支持所有基础参数
			});
			/* for (var i = 0; i < tab.rows.length; i++) {
				tab.rows[i].style.background = (i % 2 == 0) ? '#EAF3FA' : '#F8FBFC';
			} */
			//执行一个laypage实例
			laypage.render({
				elem : 'test1', //注意，这里的 test1 是 ID，不用加 # 号
				count : 5 //数据总数，从服务端得到
			});
			//转换静态表格
			
		});
	
		/* function tableColor() { //表格隔行显示不同颜色
			var tab = document.getElementById('tab');
			for (var i = 0; i < tab.rows.length; i++) {
				tab.rows[i].style.background = (i % 2 == 0) ? '#EAF3FA' : '#F8FBFC';
			}
		} */
	
		function showAddDlg() {
			$('#actailAdd').val("") ;
			$('#actypeAdd').val("");
			$('#airlineAdd').val("");
			$('#acnumAdd').val("");
			$('#AcDlg').modal('show');
		}
	
		function saveAcAdd() {
			var actail = $('#actailAdd').val();
			var actype = $('#actypeAdd').val();
			var airline = $('#airlineAdd').val();
			var acnum = document.getElementById("acnumAdd").value;
			if (actail == "") {
				alert("机号不能为空！");
				return;
			}
			if (actype == "") {
				alert("请输入机型!");
				return;
			}
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/ac/add.do", //后台映射的URL
				data : {
					actail : actail,
					actype : actype,
					airline : airline,
					acnum : acnum,
				},
				dataType : 'json', //返回的数据格式
				success : function(result) {
					var table = document.getElementById("tab");
					var nCnt = table.rows.length;
	
					//$('#tab').append("<tr><td>" + nCnt + "</td><td>" + result.actail + "</td><td>" + result.actype + "</td><td>" + result.airline + "</td><td>" + result.acnum + "</td><td>" + result.role + "</td><td>" + result.telphone + "</td><td><a href='javascript:void(0)'>修改</a>&nbsp&nbsp<a href='#'>删除</a></td></tr>");
					$('#tab').append("<tr><td>" + nCnt + "</td><td>" + result.actail + "</td><td>" + result.actype + "</td><td>" + result.airline + "</td><td>" + result.acnum + "</td><td><a href='javascript:void(0)' onclick='showModifyDlg(" + "\"" + nCnt + "\",\"" + result.id + "\",\"" + result.actail + "\",\"" + result.actype + "\",\"" + result.airline + "\",\"" + result.acnum + "\")'>修改</a>&nbsp&nbsp<a href='${pageContext.request.contextPath}/ac/del.do?id=" + result.id + "'>删除</a></td></tr>");
					$('#AcDlg').modal('hide');
				},
				error : function(result) {
	
					return;
				}
			});
		}
	
		function showModifyDlg(rownumber, id, actail, actype, airline, acnum) {
			$('#rownumber').val(rownumber);
			$('#modifyAcID').val(id);
			$('#actailModify').val(actail);
			$('#actypeModify').val(actype);
			$('#airlineModify').val(airline);
			$('#acnumModify').val(acnum);
			$('#ModifyAcDlg').modal('show');
		}
		function modifyAcAdd() {
			var rownumber = $('#rownumber').val();
			var modifyId = $('#modifyAcID').val();
			var actail = $('#actailModify').val();
			var actype = $('#actypeModify').val();
			var airline = $('#airlineModify').val();
			var acnum = $('#acnumModify').val();
			if (actail == "") {
				alert("机号不能为空！");
				return;
			}
			if (actype == "") {
				alert("请输入机型!");
				return;
			}
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/ac/modify.do", //后台映射的URL
				data : {
					id : modifyId,
					actail : actail,
					actype : actype,
					airline : airline,
					acnum : acnum,
				},
				dataType : 'json', //返回的数据格式
				success : function(result) {
					var table = document.getElementById("tab");
					table.rows[rownumber].cells[1].innerHTML = result.actail;
					table.rows[rownumber].cells[2].innerHTML = result.actype;
					table.rows[rownumber].cells[3].innerHTML = result.airline;
					table.rows[rownumber].cells[4].innerHTML = result.acnum;
					var aa = "<a href='javascript:void(0)' onclick='showModifyDlg(" + "\"" + rownumber + "\",\"" + modifyId + "\",\"" + actail + "\",\"" + actype + "\",\"" + airline + "\",\"" + acnum + "\")'>修改</a>&nbsp&nbsp<a href='${pageContext.request.contextPath}/ac/del.do?id=" + modifyId + "'>删除</a>";
					table.rows[rownumber].cells[5].innerHTML = aa;
	
					$('#ModifyAcDlg').modal('hide');
	
	
				},
				error : function(result) {
	
					return;
				}
			});
	
		}
	</script>
</body>

</html>