<%@page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'sendmoney.jsp' starting page</title>

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
 /* display: block; */
    width: 80%;
   /*  margin: 25px;
    padding: 10px;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0); */
} 
button{
	font-size:15px;
	
} 
.jumbotron{
	/* font-size: 14px; */
	width: 1000px;
	height: 550px;
	/* border: 2px solid #ccc;
	border-radius: 10px;
	margin: 24px auto;
	padding: 10px 10px;*/
	position: relative; 
}</style> 
</head>

<body>
	<form action="${pageContext.request.contextPath}/bcc/sendtoaddress.do">
		 <div class="box"> 
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon1" >地址</span> <input
					type="text" class="form-control" placeholder="请输入地址"
					aria-describedby="basic-addon1" name="address">
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon">金额</span> <input type="text"
					class="form-control" aria-label="Amount (to the nearest dollar)" placeholder="请输入转账金额" name="coin">
				<span class="input-group-addon">BRC</span>
			</div>
			<br>
			<p>
				<td><button type="submit">确认发送</button></td>
			</p>
		
		</div> 
		
	</form>
	<script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>