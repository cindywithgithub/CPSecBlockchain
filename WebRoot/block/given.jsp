<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
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
    .handle{
        min-width: 125px;
    }
    .box{
        width: 1100px;
        margin-left: 20px;
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
        top: 39px;
        right: -13px;
    }

    </style>
</head>
<body>
    <div class="box">
        <!-- <p>Ethereum Contract address：0xb752ffa78d7634c0901df669d3f1fabab5057a76</p>
        <p>ImageHash in IPFS: QmT81Rfaw5DGi1d8tYvE8RCWSd2d784avkAh6FJZ4yrGUg</p>
        <p>ImageHash in DRMChain: QmT81Rfaw5DGi1d8tYvE8RCWSd2d784avkAh6FJZ4yrGUg</p>
        <p>BlockHash in DRMChain: 0xc2e576cb66cdaf6ab2ef0f8c1037115cef22d2ada0f616495214e4b1d9b76a7c</p>
        <p>IPFS Address  https://ipfs.io/ipfs/QmT81Rfaw5DGi1d8tYvE8RCWSd2d784avkAh6FJZ4yrGUg</p> -->
        <form class="form-horizontal">
            <!-- <div class="form-group">
                <label for="" class="">Upload pictures to IPFS:</label>
                <input type="text" class="form-control" id="imgHash" placeholder="Please upload pictures">
                <button type="button" style="display: inline-block;" class="btn btn-primary">upload</button>
            </div>
            <div class="form-group">
                <label for="" class="">imgHash：</label>
                <input type="text" class="form-control" id="imgHash1" value="QmT81Rfaw5DGi1d8tYvE8RCWSd2d784avkAh6FJZ4yrGUg" disabled>
                <button type="button" style="display: inline-block;" class="btn btn-primary">Write the hash to the blockchain</button>
            </div>
            <div class="form-group">
                <label for="" class="">The hash value read from the blockchain：</label>
                <input type="text" class="form-control" id="imgHash2" value="QmT81Rfaw5DGi1d8tYvE8RCWSd2d784avkAh6FJZ4yrGUg" disabled>
            </div> -->
        </form>
        <h4>区块链去中心化</h4>
        <table id="userTable1" class="layui-table layui-fluid" lay-size="sm">
            <tr>
                <td>去信任化</td>
                <td>任意两个节点之间建立连接不需要信任彼此的身份，双方之间进行数据交换无需互相信任的基础。由于网络中的所有节点都可以扮演‚监督者‛的身份，因此不用担心欺诈的问题。</td>
            </tr>
            <tr>
                <td>可扩展性</td>
                <td>区块链是一种底层开源技术，在此基础上可以实现各类扩展和去中心化、去信任化的应用。</td>
            </tr>
            <tr>
                <td>匿名化</td>
                <td>数据交换的双方可以是匿名的，网络中的节点无需知道彼此的身份和个人信息即可进行数据交换。</td>
            </tr>
            <tr>
                <td>安全可靠性</td>
                <td>由于任意节点之间的活动均受到全网的监督，并且数据库采用分布式存储，对于黑客来说，第一无法伪装和进行欺诈活动，第二无法仅靠攻克某个节点而控制网络。</td>
            </tr>
           
        </table>
        <h4>激励机制</h4>
        <table id="userTable" class="layui-table layui-fluid" lay-size="sm">
            <thead class="layui-bg-gray"></thead>
            <tbody>
                <tr>
                    <td>比特币激励机制</td>
                    <td> 刚开始我们协议每生成一页账簿，奖励小组50个比特币，后面，每当账簿增加21,000页，奖励就减半，例如当达到210,000页后，每生成一页账簿奖励25个比特币，420,000页后，每生成一页奖励12.5个，依次类推，等账簿达到6,930,000页后，新生成账簿页就没有奖励了。此时比特币全量约为21,000,000个，这就是比特币的总量，所以不会无限增加下去。
                    </td>
                </tr>
                <tr>
                    <td>激励机制的未来</td>
                    <td>矿工的收益会由挖矿所得变为收取手续费。例如，你在转账时可以指定其中1%作为手续费支付给生成账簿页的小组，各个小组会挑选手续费高的交易单优先确认。</td>
                </tr>
                
               
            </tbody>
        </table>
        <img id="img" src="../images/201.jpg" alt="">
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