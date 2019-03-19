<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
    .handle{
        min-width: 125px;
    }
    .box{
        width: 1100px;
        margin-left:20px;
        /*margin: 20px auto;*/
    }
    .form-control{
        display: inline-block;
    }
    .box .form-horizontal .form-group{
        margin-right: 0px;
        margin-left: 0px;
    }
    #imgHash,#imgHash1{
        width: 500px;
    }
    #imgHash2{
        width: 500px;
    }
    #userTable{
        width: 650px;
    }
    #userTable td{
        padding: 2px 10px;
    }
    #userTable td:first-child {
        width: 159px;
        background: #f2f2f2;
    }
    #userTable1{
        width: 650px;
    }
    #userTable1 td:first-child {
        width: 157px;
        background: #f2f2f2;
    }
    td:nth-child(2){
        width: 400px;
    }
    #img{
  width: 425px;
        position: absolute;
        top: 60px;
        right: 5px;
    }

    </style>
</head>
<body>
    <div class="box">
        
        <form class="form-horizontal">
           
        </form>
       
        <h2>区块链原理</h2>
                <table id="userTable1" class="layui-table layui-fluid" lay-size="sm">
            <tr>
                <td>去中心化</td>
                <td>整个网络没有中心化的硬件或机构，任意节点间的权利和义务是均等的。
</tr>
            <tr>
                <td>高度透明</td>
                <td>开源的程序，保证了账簿和商业规则可被所有人审查。</tr>
            <tr>
                <td>集体维护</td>
                <td>系统中的数据块由整个系统中所有节点共同维护，每个节点分享权利和义务。</tr>
            <tr>
                <td>匿名</td>
                <td>由于区块链的技术解决了信任的问题，因此交易双方没有必要了解对方，交易在匿名下进行。</tr>
            <tr>
                <td>去信任</td>
                <td>从技术上保证交易的进行，在没有第三方机构的情况下，没有“信任”与否这件事。</tr>
              <br>
             </table>
              <br>
              <h3>比特币&区块链</h3>
             
        <table id="userTable" class="layui-table layui-fluid" lay-size="sm">
            <tr>
                <td>普适原理</td>
                <td>当前一切的区块链应用，只是共识约定和存储内容不同。
应用区块链技术的过程本质上是组织区块内容与论证共识约定合理性的过程。
</tr>
           
           
           
        </table>
            </tbody>
        <!-- <img id="img" src="../images/1.jpg" alt=""> -->
        <img id="img"style="width:400px;" src="../images/1.jpg" alt="bupt">
        
    </div>
    <div>
        <span id="layPage"></span>
    </div>
    <script>
    layui.config({
        base: '/base/lay/modules/'
    }).use(['element','form','layer','laypage','table'], function() {
        var element = layui.element;
        var table = layui.table;
        var layer = layui.layer;
        var laypage = layui.laypage;

        //表格
        table.render({
            elem: 'userTable,userTable1',            
        })

    });
    </script>
</body>
</html>

