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
        top: 39px;
        right: -14px;
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
        <br>
        <h3>比特币技术实现</h3>
        <table id="userTable1" class="layui-table layui-fluid" lay-size="sm">
            <tr>
                <td>交易单</td>
                <td>交易单记录一笔交易的具体信息，例如付款人、收款人账号、付款金额、付款人密钥、收款人公钥等。许多交易单组成了账簿（即区块），每本只记录比特币全世界10分钟内的交易信息。</td>
            </tr>
            <tr>
                <td>区块</td>
                <td>每约10分钟产生一个新的Block。每生成一个Block，生产者获得50个比特币奖励，每4年生产出21万个Block后奖励减半。比特币总数约2100万个，从2009开始至2140年后生产完毕。</td>
            </tr>
            <tr>
                <td>区块链</td>
                <td>将账簿串联起来的双向链表，比特币全世界只有唯一一条账簿链。每个节点都有相同的区块链备份。区块链一旦有更新则全网通知。</td>
            </tr>
            <tr>
                <td>普适原理</td>
                <td>当前一切的区块链应用，只是共识约定和存储内容不同。应用区块链技术的过程本质上是组织区块内容与论证共识约定合理性的过程。</td>
            </tr>
           
        </table>
        <h4>共识机制</h4>
        <table id="userTable" class="layui-table layui-fluid" lay-size="sm">
            <thead class="layui-bg-gray"></thead>
            <tbody>
                <tr>
                    <td>工作量证明PoW（Proof of Work）</td>
                    <td> 1. 寻找一个nonce值，进行一个Double SHA256运算
                    2. 使得F（Nonce）< Target
                    3. 算力越大，越容易得到记账权
                    </td>
                </tr>
                <tr>
                    <td>权益证明PoS（Proof of Stake）</td>
                    <td>1. F（Timestamp） < Target * Balance 2. 不单单是算力的比拼，余额越大，越容易得到记账权</td>
                </tr>
                <tr>
                    <td>股份授权证明DPoS（Delegated Proof of Stake）</td>
                    <td> 1. 由股东投票选出101名代表，然后由这些代表负责产生区块
 2. 持币者若想成为代表，需要先用自己的公钥去区块链注册，用户对代表进行投票，选出前101位，轮流获取记账权
 3. 如有恶意代表，则会被踢除，由第102位填补
</td>
                </tr>
               
            </tbody>
        </table>
        <img id="img" src="../images/2000.png" alt="">
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