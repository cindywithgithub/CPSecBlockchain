<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'getinfo.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="${pageContext.request.contextPath}/css/modules/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/layui.css" media="all">
<style>.box{
	font-size: 14px;
	width: 1000px;
	height: 500px;
	border: 2px solid #ccc;
	border-radius: 10px;
	margin: 24px auto;
	padding: 10px 10px;
	position: relative;
}
.box ul{
	width: 750px;
	height: 300px;
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
	<table class="table table-striped">
		<tr>
			<td>bestBlockHash</td>
			<td>${blockinfo.bestBlockHash}</td>
		</tr>
		 <tr>
			<td>height:</td>
			<td>${blockinfo.height}</td>
		</tr> 

		<tr>
			<td>chain</td>
			<td>${blockinfo.chain}</td>
		</tr>

		<tr>
			<td>difficulty</td>
			<td>${blockinfo.difficulty}</td>
		</tr>

		<tr>
			<td>chainwork</td>
			<td>${blockinfo.chainwork}</td>
		</tr>

		<tr>
			<td>toString</td>
			<td>${blockinfo.toString}</td>
		</tr>

		<tr>
			<td>hashcode</td>
			<td>${blockinfo.hashcode}</td>
		</tr>

	</div>

	</table>
	<script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
