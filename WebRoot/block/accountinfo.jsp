<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>My JSP 'accountinfo.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	No 命令 命令概要 重要度 主要对象 参数
	<必须参数> [可选参数] 含义 描述 需要未锁定钱包? (v0.4.0版本以上) 1 addmultisigaddress
	新增多重签名地址 ★ 地址 <nrequired> <'["key","key"]'> [account]
	在钱包里添加一个多重签名地址。每个"KEY"参数都是一个比特币地址或者是一个十六进制编码的公共密钥。如果指定账户[account]，则将该地址分配给该帐户。
	Add a nrequired-to-sign multisignature address to the wallet. Each key
	is a bitcoin address or hex-encoded public key. If [account] is
	specified, assign address to [account]. N 2 addnode 新增节点 ★★★ 节点 <node>
	<add /remove/onetry> 尝试从节点列表中添加(add)或删除(remove)一个节点<NODE>或者尝试对节点<NODE>进行一次连接(onetry)。版本0.8
	version 0.8 Attempts add or remove <node> from the addnode list
	or try a connection to <node> once. N 3 backupwallet 备份钱包 ★★★★★
	钱包 <destination> 安全地复制wallet.dat到一个目标地址<destination>，目标地址可以是一个目录或带路径的文件名。
	Safely copies wallet.dat to destination, which can be a directory or a
	path with filename. N 4 createmultisig 创建多重签名地址 ★ 地址 <nrequired>
	<'["key,"key"]'> 创建一个多重签名的地址，并返回一个JSON对象。 Creates a multi-signature
	address and returns a json object 5 createrawtransaction 创建原始交易 ★ 交易
	[{"txid":txid,"vout":n},...] {address:amount,...}
	创建一个原始交易，花费指定的输入交易。版本0.7 version 0.7 Creates a raw transaction spending
	given inputs. N 6 decoderawtransaction 解码原始交易 ★ 交易 <hex string>
	将一个原始交易解码成可读性较强的JSON对象。版本0.7 version 0.7 Produces a human-readable JSON
	object for a raw transaction. N 7 dumpprivkey 导出私钥 ★★★★★ 地址 <bitcoinaddress>
	导出比特币地址<bitcoinaddress>对应的私钥。需要未锁定钱包。 Reveals the
	private key corresponding to <bitcoinaddress> Y 8
	encryptwallet 加密钱包 ★★★★★ 钱包 <passphrase> 为钱包设定密码<passphrase>
	Encrypts the wallet with <passphrase>. N 9 getaccount
	取得地址账户 ★★★ 账户 <bitcoinaddress> 返回指定地址<bitcoinaddress>相关联的帐户。
	Returns the account associated with the given address. N 10
	getaccountaddress 取得账户地址 ★★★ 账户 <account> 返回指定账户<account>当前的比特币收款地址，每次执行都会为指定账户创建一个的新的地址。
	Returns the current bitcoin address for receiving payments to this
	account. N 11 getaddednodeinfo 取得新增节点信息 ★ 节点 <dns> [node]
	返回指定的新增节点[node]的信息，[node]参数省略时返回全部新增节点（不包括只连接一次的节点）的信息。<dns>参数为false时，只提供新增节点列表，<dns>参数为true时同时提供新增节点的连接信息。版本0.8
	version 0.8 Returns information about the given added node, or all
	added nodes(note that onetry addnodes are not listed here) If dns is
	false, only a list of added nodes will be provided, otherwise connected
	information will also be available. 12 getaddressesbyaccount 取得账户所有地址
	★★★★★ 账户 <account> 返回指定账户<account>关联的所有地址列表。
	Returns the list of addresses for the given account. N 13 getbalance
	取得余额 ★★★★★ 账户 [account] [minconf=1] 如果没有指定账户<account>，返回钱包的总余额。如果指定账户<account>，返回账户余额。
	If [account] is not specified, returns the server's total available
	balance.If [account] is specified, returns the balance in the account.
	N 14 getblock 取得块信息 ★★★ 块 <hash> 返回指定的哈希<hash>块信息。
	Returns information about the given block hash. N 15 getblockcount
	取得块数量 ★★★ 块 返回最长的块链中块的数量。 Returns the number of blocks in the longest
	block chain. N 16 getblockhash 取得块哈希 ★★★ 块 <index> 返回最佳块链中指定索引<INDEX>块的哈希。
	Returns hash of block in best-block-chain at <index> N 17
	getblocknumber 取得块数量 块 已过时。在版本0.7中被删除。使用getblockcount。 Deprecated.
	Removed in version 0.7. Use getblockcount. N 18 getblocktemplate 取得块模版
	★ 块 [params] 返回所需的数据用来构造一个有效的块。 Returns data needed to construct a
	block to work on N 19 getconnectioncount 取得连接数 ★ 节点 返回与其它节点的连接数。
	Returns the number of connections to other nodes. N 20 getdifficulty
	取得当前难度 ★ 采矿 返回当前工作量证明难度（最低难度的倍数） Returns the proof-of-work difficulty
	as a multiple of the minimum difficulty. N 21 getgenerate 判断是否采矿 ★ 采矿
	判断当前客户端是否正在采矿。 Returns true or false whether bitcoind is currently
	generating hashes N 22 gethashespersec 取得采矿性能 ★ 采矿
	返回当前客户端每秒计算哈希的性能。（当客户端开启采矿模式时） Returns a recent hashes per second
	performance measurement while generating. N 23 getinfo 取得客户端信息 ★★★ 服务
	返回一个包含当前客户端各种状态信息的对象。 Returns an object containing various state info.
	N 24 getmemorypool 取得内存池信息 ★ 采矿 [data] 在版本0.7中被替换成getblocktemplate,
	submitblock, getrawmempool Replaced in v0.7.0 with getblocktemplate,
	submitblock, getrawmempool``` N 25 getmininginfo 取得采矿信息 ★★★★ 采矿
	返回一个包含当前采矿信息的对象。 Returns an object containing mining-related
	information:blockscurrentblocksizecurrentblocktxdifficultyerrorsgenerategenproclimithashespersecpooledtxtestnet
	N 26 getnewaddress 创建新地址 ★★★★★ 地址 [account]
	返回一个新的比特币地址，用于接收付款。如果指定账户[account]（推荐），它将被添加到地址簿中，该地址收到的所有款项将被计入该帐户。
	Returns a new bitcoin address for receiving payments. If [account] is
	specified (recommended), it is added to the address book so payments
	received with the address will be credited to [account]. N 27
	getpeerinfo 取得节点信息 ★ 节点 返回每个已连接节点的数据。版本0.7 version 0.7 Returns data
	about each connected node. N 28 getrawmempool 取得内存池原始交易ID ★ 采矿
	返回内存池的所有原始交易ID。版本0.7 version 0.7 Returns all transaction ids in memory
	pool N 29 getrawtransaction 取得原始交易信息 ★ 交易 <txid> [verbose=0]
	返回指定的交易ID<txid>的原始交易描述。版本0.7 version 0.7 Returns raw transaction
	representation for given transaction id. N 30 getreceivedbyaccount
	取得账户收款金额 ★★★★★ 账户 <account> [minconf=1] 返回指定账户<account>上收到至少[minconf]个确认的收款交易总金额（不包括付款）。
	Returns the total amount received by addresses with [account] in
	transactions with at least [minconf] confirmations. If [account] not
	provided return will include all transactions to all accounts. (version
	0.3.24) N 31 getreceivedbyaddress 取得地址收款金额 ★★★ 地址 <bitcoinaddress>
	[minconf=1] 返回指定地址<bitcoinaddress>上收到至少[minconf]个确认的收款交易总金额。虽然有些人可能会认为这很明显，返回值只统计该地址的收款交易。它不检查已经从这个地址上发送的付款交易。换句话说，这不是取得地址余额。该方法仅适用于本地钱包的地址，外部地址将始终显示为0。
	Returns the total amount received by <bitcoinaddress>
	in transactions with at least [minconf] confirmations. While some might
	consider this obvious, value reported by this only considers
	*receiving* transactions. It does not check payments that have been
	made *from* this address. In other words, this is not
	"getaddressbalance". Works only for addresses in the local wallet,
	external addresses will always show 0. N 32 gettransaction 取得交易信息 ★★★★★
	交易 <txid> 返回一个指定交易ID的哈希对象（仅限钱包内的地址交易）。 Returns an object about
	the given transaction containing:"amount" : total amount of the
	transaction"confirmations" : number of confirmations of the
	transaction"txid" : the transaction ID"time" : time associated with the
	transaction[1]."details" - An array of objects containing: "account"
	"address" "category" "amount" "fee" N 33 gettxout 取得交易输出 ★ 交易 <txid>
	<n> [includemempool=true] 返回未动用的交易输出详细信息。 Returns details about an
	unspent transaction output N 34 gettxoutsetinfo 取得交易输出设定信息 ★ 交易
	返回未动用的交易输出统计信息集。 Returns statistics about the unspent transaction
	output set N 35 getwork 计算 ★ 采矿 [data]
	如果没有指定数据[data]，返回格式化的哈希数据。如果指定数据，试图解决块，如果成功返回true。 If [data] is not
	specified, returns formatted hash data to work on:"midstate" :
	precomputed hash state after hashing the first half of the data"data" :
	block data"hash1" : formatted hash buffer for second hash"target" :
	little endian hash targetIf [data] is specified, tries to solve the
	block and returns true if it was successful. N 36 help 帮助 ★★★ 服务
	[command] 获得命令列表，或者指定命令[command]的帮助。 List commands, or get help for a
	command. N 37 importprivkey 导入密钥 ★★★★★ 地址 <bitcoinprivkey>
	[label] [rescan=true]
	添加一个私有密钥到你的钱包。（返回dumpprivkey）这可能需要一段时间来完成重新扫描，寻找现有交易。版本0.8.0中添加重新扫描[rescan]参数。需要未锁定钱包。
	Adds a private key (as returned by dumpprivkey) to your wallet. This
	may take a while, as a rescan is done, looking for existing
	transactions. Optional [rescan] parameter added in 0.8.0. Y 38
	keypoolrefill 填满密钥池 ★★★ 钱包 重新填满密钥池。需要未锁定钱包。 Fills the keypool, requires
	wallet passphrase to be set. Y 39 listaccounts 查询账户列表 ★★★ 账户
	[minconf=1] 返回一个Hash对象，帐户名作为键，帐户余额作为键的值。 Returns Object that has
	account names as keys, account balances as values. N 40
	listaddressgroupings 查询地址列表 ★★★★★ 地址 返回钱包上的所有地址信息（地址，余额，所属账户）。版本0.7
	version 0.7 Returns all addresses in the wallet and info used for
	coincontrol. N 41 listreceivedbyaccount 列出账户的收款信息 ★★★★★ 账户 [minconf=1]
	[includeempty=false]
	返回一个数组对象，包含：account：接收地址的帐户amount：该账户所有地址收到的总金额confirmations：包含的最近交易确认数量
	Returns an array of objects containing:"account" : the account of the
	receiving addresses"amount" : total amount received by addresses with
	this account"confirmations" : number of confirmations of the most
	recent transaction included N 42 listreceivedbyaddress 列出地址的收款信息 ★★★★★
	地址 [minconf=1] [includeempty=false]
	返回一个数组对象，包含：address：接收地址account：接收地址的帐户amount：地址收到的总金额confirmations：包含的最近交易确认数量要得到系统上的所有帐户的列表，执行listreceivedbyaddress
	0 true Returns an array of objects containing:"address" : receiving
	address"account" : the account of the receiving address"amount" : total
	amount received by the address"confirmations" : number of confirmations
	of the most recent transaction includedTo get a list of accounts on the
	system, execute bitcoind listreceivedbyaddress 0 true N 43
	listsinceblock 列出指定块之后的交易 ★ 交易 [blockhash] [target-confirmations]
	获得自从指定哈希块[blockhash]产生之后的所有交易，哈希块参数省略则获得所有交易。 Get all transactions in
	blocks since block [blockhash], or all transactions if omitted. N 44
	listtransactions 列出交易 ★★★★★ 交易 [account] [count=10] [from=0]
	返回指定账户[account]不包含前[from]次的最近[count]次的交易。如果未指定账户则返回所有账户的最近交易。 Returns
	up to [count] most recent transactions skipping the first [from]
	transactions for account [account]. If [account] not provided will
	return recent transaction from all accounts. N 45 listunspent 列出未动用输出
	★★★★ 交易 [minconf=1] [maxconf=999999] 返回钱包中未动用交易输入的数组。版本0.7 version 0.7
	Returns array of unspent transaction inputs in the wallet. N 46
	listlockunspent 列出锁定的未动用输出 ★★ 交易 返回暂时未动用的交易输出列表。版本0.8 version 0.8
	Returns list of temporarily unspendable outputs 47 lockunspent 锁定未动用输出
	★★ 交易 <unlock?> [array-of-objects] 更新暂时未动用的交易输出列表。版本0.8
	version 0.8 Updates list of temporarily unspendable outputs 48 move 转账
	★★★★ 账户 <fromaccount> <toaccount> <amount>
	[minconf=1] [comment] 把你钱包中一个账户<fromaccount>上的指定金额<amount>
	转移到另一个账户<toaccount>上。 Move from one account in your wallet
	to another N 49 sendfrom 从账户付款 ★★★★★ 交易 <fromaccount> <tobitcoinaddress>
	<amount> [minconf=1] [comment] [comment-to] 从指定账户<fromaccount>向指定地址<tobitcoinaddress>
	发送指定金额<amount>的BTC，确保帐户拥有得到[minconf]个确认的有效余额。支付金额是一个四舍五入至小数点后8位的实数。如果支付成功，将返回交易ID<txid>（而不是一个JSON对象）。需要未锁定钱包
	<amount> is a real and is rounded to 8 decimal places. Will
	send the given amount to the given address, ensuring the account has a
	valid balance using [minconf] confirmations. Returns the transaction ID
	if successful (not in JSON object). Y 50 sendmany 向多个地址付款 ★★★★ 交易 <fromaccount>
	{address:amount,...} [minconf=1] [comment] 从指定账户<fromaccount>向多个地址发送指定金额{address:amount,...}。金额是双精度浮点数。需要未锁定钱包
	amounts are double-precision floating point numbers Y 51
	sendrawtransaction 发布原始交易 ★ 交易 <hexstring>
	提交原始交易（序列化的十六进制编码）到本地节点和网络。版本0.7 version 0.7 Submits raw transaction
	(serialized, hex-encoded) to local node and network. N 52 sendtoaddress
	付款 ★★★★★ 交易 <bitcoinaddress> <amount>
	[comment] [comment-to] 向地址<bitcoinaddress>发送指定金额<amount>的BTC。支付金额是一个四舍五入至小数点后8位的实数。如果支付成功，将返回交易ID<txid>。需要未锁定钱包。
	<amount> is a real and is rounded to 8 decimal places. Returns
	the transaction ID <txid> if successful. Y 53 setaccount 设定账户
	★★★★★ 账户 <bitcoinaddress> <account> 将地址<bitcoinaddress>关联到指定帐户<account>。如果该地址已经被关联到指定帐户，将创建一个新的地址与该帐户关联。
	Sets the account associated with the given address. Assigning address
	that is already assigned to the same account will create a new address
	associated with that account. N 54 setgenerate 设定是否采矿 ★★★★ 采矿 <generate>
	[genproclimit] 根据<generate>参数的值（true/false）决定客户端是否采矿。[genproclimit]参数指定采矿最大线程数，-1代表无限制。
	<generate> is true or false to turn generation on or
	off.Generation is limited to [genproclimit] processors, -1 is
	unlimited. N 55 settxfee 设定交易费 ★★★ 交易 <amount> 交易费<amount>是一个四舍五入至小数点后8位的实数。
	<amount> is a real and is rounded to the nearest 0.00000001 N

	56 signmessage 信息签名 ★★★★★ 地址 <bitcoinaddress> <message>
	用地址<bitcoinaddress>的私钥对信息<message>进行数字签名。需要未锁定钱包。
	Sign a message with the private key of an address. Y 57
	signrawtransaction 对原始交易签名 ★ 交易 <hexstring>
	[{"txid":txid,"vout":n,"scriptPubKey":hex},...] [<privatekey1>,...]
	添加原始交易的签名，并返回原始交易的结果。版本0.7 version 0.7 Adds signatures to a raw
	transaction and returns the resulting raw transaction. Y/N 58 stop 停止服务
	★★★ 服务 停止比特币客户端服务 Stop bitcoin server. N 59 submitblock 提交块 ★ 块 <hex
		data> [optional-params-obj] 试图向网络提交新的块。 Attempts to submit new
	block to network. N 60 validateaddress 地址验证 ★★★ 地址 <bitcoinaddress>
	验证一个地址<bitcoinaddress>是否有效。 Return information about <bitcoinaddress>.
	N 61 verifymessage 验证信息 ★★★★★ 地址 <bitcoinaddress> <signature>
	<message> 验证签名后信息<signature>是否与指定地址<bitcoinaddress>的私钥签名的信息<message>一致。
	Verify a signed message. N 62 walletlock 钱包锁定 ★★★ 钱包
	从内存中删除钱包的加密KEY，锁定钱包。调用此方法后，您将需要再次调用walletpassphrase方法，才能够调用任何需要未锁定钱包的方法。
	Removes the wallet encryption key from memory, locking the wallet.
	After calling this method, you will need to call walletpassphrase again
	before being able to call any methods which require the wallet to be
	unlocked. N 63 walletpassphrase 钱包解锁 ★★★ 钱包 <passphrase> <timeout>
	把钱包的密码<passphrase>存储在内存中持续<timeout>秒。 Stores the
	wallet decryption key in memory for <timeout> seconds. N 64
	walletpassphrasechange 修改钱包密码 ★★★★★ 钱包 <oldpassphrase>
	<newpassphrase> 将钱包的原密码<oldpassphrase>修改为新密码<newpassphrase>
	Changes the wallet passphrase from <oldpassphrase> to <newpassphrase>.
	N <br>
</body>
</html>
