<!DOCTYPE html>
<html>
<head>
	<title>财务管理</title>
	<link rel="stylesheet" href="${ctx}/lib/layuimini-2/lib/layui-v2.6.3/css/layui.css" media="all">
	<link rel="stylesheet" href="${ctx}/lib/layuimini-2/css/public.css" media="all">
	<script type="text/javascript" src="${ctx}/lib/layuimini-2/lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
	<script type="text/javascript">
		var ctx="${ctx}";
	</script>
</head>
<body class="childrenBody">

<form class="layui-form" >
	<blockquote class="layui-elem-quote quoteBox">
		<form class="layui-form">
			结账区段:<div class="layui-inline">
				<div class="layui-input-inline">
					<input type="text" name="startime"
						   class="layui-input
					searchVal" placeholder="起始时间" />
				</div>
				<div class="layui-input-inline">
					<input type="text" name="overtime" class="layui-input
					searchVal" placeholder="终止时间" />
				</div>
				<a class="layui-btn search_btn" data-type="reload"><i
							class="layui-icon">&#xe615;</i> 查询</a>

				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				入住记录:&nbsp;<div class="layui-input-inline">
					<input id="sum2" class="layui-input
					searchVal" name="sum2" type="text" placeholder="${(sumStayregister.sum2)!}"/>
				</div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				金额总计:&nbsp;<div class="layui-input-inline">
				<input name="sum1" class="layui-input
					searchVal" type="text" placeholder="${(sumStayregister.sum1)!}"/>
				</div>

			</div>
		</form>
	</blockquote>

	<#--在页面放置一个元素<table id="demo"></table>,然后通过table.render()方法指定该容器-->
	<table id="stayregisterList" class="layui-table"  lay-filter="stayregisters"></table>

	<#--头部工具栏-->
	<#--<script type="text/html" id="toolbarDemo">
		<div class="layui-btn-container">
			<a class="layui-btn layui-btn-normal addNews_btn" lay-event="add">
				<i class="layui-icon">&#xe608;</i>
				入住人数
			</a>
			<a class="layui-btn layui-btn-normal delNews_btn" lay-event="del">
				<i class="layui-icon">&#xe608;</i>
				总金额
			</a>
		</div>
	</script>-->


	<!--行工具栏-->
	<script id="op" type="text/html">
		<a class="layui-btn layui-btn-xs" id="edit" lay-event="edit">详情</a>
		<#--<a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del">删除</a>-->
	</script>

</form>
<script type="text/javascript" src="${ctx}/js/stayregister/stayregister.js"></script>

</body>
</html>