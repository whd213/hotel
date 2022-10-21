<!DOCTYPE html>
<html>
<head>
	<title>客户开发计划管理</title>
	<link rel="stylesheet" href="${ctx}/lib/layuimini-2/lib/layui-v2.6.3/css/layui.css" media="all">
	<link rel="stylesheet" href="${ctx}/lib/layuimini-2/css/public.css" media="all">
	<script type="text/javascript" src="${ctx}/lib/layuimini-2/lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
</head>
<body class="childrenBody">
	<div class="layui-col-md12">
		<div class="layui-card">
			<div class="layui-card-body">
				<form class="layui-form" >

					<#--营销机会ID-->
					<input name="id" type="hidden" value="${stayregister.id}"/>

					<div class="layui-form-item layui-row">
						<div class="layui-col-xs6">
							<label class="layui-form-label">编号</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input"
									   name="id" id="id"  value="${stayregister.id}" readonly="readonly">
							</div>
						</div>
						<div class="layui-col-xs6">
							<label class="layui-form-label">总费用</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input"
									   name="sumconst" id="sumconst" value="${(stayregister.sumconst)!}" readonly="readonly">
							</div>
						</div>
					</div>

					<div class="layui-form-item layui-row">
						<div class="layui-col-xs6">
							<label class="layui-form-label">房间号</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input"
									   name="roomNumber" id="roomNumber"  value="${(stayregister.roomNumber)!}" readonly="readonly">
							</div>
						</div>
						<div class="layui-col-xs6">
							<label class="layui-form-label">接待对象</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input"
									   name="teamName" id="teamName" value="${(stayregister.teamName)!}" readonly="readonly">
							</div>
						</div>
					</div>

					<div class="layui-form-item layui-row">
						<div class="layui-col-xs6">
							<label class="layui-form-label">换房次数</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input"
									   name="changingroomnumber"  lay-verify="required"  value="${(stayregister.changingroomnumber)!}" readonly="readonly">
							</div>
						</div>
						<div class="layui-col-xs6">
							<label class="layui-form-label">换房时间</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input"
									   lay-verify="phone" name="changroomtime" value="${((stayregister.changroomtime)?string("yyyy-MM-dd"))!}" id="phone" readonly="readonly">
							</div>
						</div>
					</div>

					<div class="layui-form-item layui-row">
						<div class="layui-col-xs6">
							<label class="layui-form-label">登记时间</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input"
									   name="registertime" value="${((stayregister.registertime)?string("yyyy-MM-dd"))!}" id="phone"  readonly="readonly">
							</div>
						</div>
						<div class="layui-col-xs6">
							<label class="layui-form-label">结账时间</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input"
									   name="paytime" value="${((stayregister.paytime)?string("yyyy-MM-dd"))!}"  readonly="readonly">
							</div>
						</div>
				</form>
			</div>
		</div>
	</div>

	<#--<div class="layui-col-md12">
		<table id="cusDevPlanList" class="layui-table"  lay-filter="cusDevPlans"></table>
	</div>

	<#if saleChance.devResult==0 || saleChance.devResult==1>
		<script type="text/html" id="toolbarDemo">
			<div class="layui-btn-container">
				<a class="layui-btn layui-btn-normal addNews_btn" lay-event="add">
					<i class="layui-icon">&#xe608;</i>
					添加计划项
				</a>
				<a class="layui-btn layui-btn-normal addNews_btn layui-bg-green" lay-event="success">
					<i class="layui-icon">&#xe608;</i>
					开发成功
				</a>
				<a class="layui-btn layui-btn-normal addNews_btn layui-bg-red" lay-event="failed">
					<i class="layui-icon">&#xe608;</i>
					开发失败
				</a>
			</div>
		</script>

		<!--操作&ndash;&gt;
		<script id="cusDevPlanListBar" type="text/html">
			<a class="layui-btn layui-btn-xs" id="edit" lay-event="edit">编辑</a>
			<a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del">删除</a>
		</script>
	</#if>-->

	<#--<script type="text/javascript" src="${ctx}/js/"></script>-->
</body>
</html>