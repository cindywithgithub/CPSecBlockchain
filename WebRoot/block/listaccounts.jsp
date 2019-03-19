<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'listaccounts.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
/* .box input {

   
    margin: 25px;
    padding: 10px;
  
} */
button{
/* margin-left: 10px; */
	width: 96px;
    height:30px

}</style>
  </head>
  
  <body>
  <div class="box">
  		<div width:100%;height:100px">
		
			<form action="${pageContext.request.contextPath}/bcc/addaccount.do">
				<div class="input-group">
				<span class="input-group-addon" id="basic-addon1" >输入账户名</span> <input
					type="text" class="form-control" placeholder="请输入账户名"
					aria-describedby="basic-addon1" name="accountname">
			</div>
				<br>
				<button type="submit" value="添加">创建</button>
			
			</form>
		</div>
		<br>
		<table class="table table-striped">
		<tr>
			<td>序号</td>
			<td>账户</td>
			<td>接收地址</td>
			<td>余额(BRC)</td>
		</tr>
		<c:forEach var="account" items="${list }" varStatus="status">
		<tr>
		<td>${ status.index + 1}</td>
		<td>${account.name}</td>
		<td>${account.address}</td>
		<td>${account.number}</td>
		</tr>
		</c:forEach>
		 </table>
		 </div>
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  </body>
</html>
