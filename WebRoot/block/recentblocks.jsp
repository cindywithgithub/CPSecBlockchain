<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	width: 1050px;
	height: 460px;
	border: 2px solid #ccc;
	border-radius: 10px;
	margin: 40px 44px;
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
.table tbody tr td{
padding: 12px;
line-height: 1.52857143;}
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
	<br>
	<table class="table table-striped">
	<tr>
			<td>区块高度</td>
			<td>区块哈希</td>
			<td>时间戳</td>
			<td>交易次数</td>
			<td>区块大小</td>
		</tr>
	<c:forEach var="block" items="${list }" varStatus="status">
		<tr>

			
			<td>${block.height}</td>
		
			
			<td><a href="${pageContext.request.contextPath}/bcc/getblockbyhash.do?aaa=22&hashs=${block.blockHash}">${block.blockHash}</a></td>
		
			
			<td><fmt:formatDate value="${block.tim}" pattern="yyyy-MM-dd hh:mm:ss" type="date" dateStyle="long" /></td>
		
			
			<td>${block.tx.size()}</td>
		
			
			<td>${block.size}</td>
		</tr>
		
</c:forEach>
	</table>

	</div>

	<script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
