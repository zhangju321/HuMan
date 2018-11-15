<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>layui</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="resource/layui/css/layui.css" media="all">
<!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
<script src="resource/layui/layui.js" charset="utf-8"></script>
<script src="resource/layui/layui.all.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
</head>
<body>
	<!-- 查询往月报表 -->
	<div class="demoTable">
		<div class="layui-inline">
			<input class="layui-input" name="tax_time" id="tax_time"
				autocomplete="off">
		</div>
		<button class="layui-btn" id="search_btn" data-type="reload">搜索</button>
	</div>
	<h2>薪资统计报表</h2>
	<table class="layui-hide" id="test" lay-filter="test"></table>

	<!-- 根据时间模糊查询 -->
	<script>
		layui.config({
			base : "js/"
		})
			.use(
				[ 'form', 'layer', 'jquery', 'table', 'laydate' ],
				function() {
					var form = layui.form,
						table = layui.table,
						layer = parent.layer === undefined ? layui.layer : parent.layer,
						laydate = layui.laydate
					$ = layui.jquery, nowTime = new Date().valueOf(),
					max = null,
					active = {
						reload : function() {
							var demoReload = $('#tax_time');
							layer.msg(demoReload.val())
							//执行重载
							table.reload('test',
								{
									page : {
										curr : 1
									//重新从第 1 页开始
									},
									where : {
										//key: {
										tax_time : demoReload.val()
									}
								});
						}
					};
	
					//加载页面数据
					table.render({
						elem : '#test',
						url : 'pay/queryTime',
						toolbar : true,
						title : '用户数据表',
						totalRow : true,
						cols : [ [
	
							{
								field : 'STAFF_NAME',
								title : '人员名',
								width : 150,
							}
							, {
								field : 'tax_time',
								title : '薪资日期',
								width : 150,
								sort : true
							}
							, {
								field : 'tax_salary',
								title : '职务工资',
								width : 150,
								sort : true,
								totalRow : true
							}
							, {
								field : 'Bonus',
								title : '奖金',
								width : 100,
								sort : true,
								totalRow : true
							}
							, {
								field : 'subvention',
								title : '津贴',
								width : 100,
								totalRow : true,
								sort : true
							}
	
	
							, {
								field : 'endowment_insurance',
								title : '个人养老保险(元)',
								width : 160,
								edit : 'text',
								totalRow : true,
								sort : true
							}
							, {
								field : 'medical_insurance',
								title : '个人医疗保险(元)',
								width : 160,
								totalRow : true,
								sort : true
							}
							, {
								field : 'birth_insurance',
								title : '个人生育保险(元)',
								width : 160,
								edit : 'text',
								sort : true,
								totalRow : true
							}
							, {
								field : 'unemployment_insurance',
								title : '个人失业保险(元)',
								width : 160,
								sort : true,
								totalRow : true
							}
							, {
								field : 'injury_insurance',
								title : '个人工伤保险(元)',
								totalRow : true,
								sort : true,
								width : 160
							}
							, {
								field : 'housing_fund',
								title : '个人住房公积金(元)',
								width : 180,
								totalRow : true,
								sort : true
							}
							, {
								field : 'B_withhold',
								title : '个人保险扣款总额(元)',
								width : 190,
								totalRow : true,
								sort : true
							}
							, {
								field : 'endowment_insurance_d',
								title : '单位养老保险(元)',
								width : 160,
								sort : true
							}
	
	
							, {
								field : 'medical_insurance_d',
								title : '单位医疗保险(元)',
								width : 160,
								edit : 'text',
								totalRow : true,
								sort : true
							}
							, {
								field : 'birth_insurance_d',
								title : '单位生育保险(元)',
								width : 160,
								edit : 'text',
								totalRow : true,
								sort : true
							}
							, {
								field : 'unemployment_insurance_d',
								title : '单位失业保险(元)',
								width : 160,
								sort : true,
								totalRow : true
							}
							, {
								field : 'injury_insurance_d',
								title : '单位工伤保险(元)',
								width : 160,
								edit : 'text',
								sort : true,
								totalRow : true
							}
							, {
								field : 'housing_fund_d',
								title : '单位住房公积金(元)',
								width : 180,
								sort : true,
								totalRow : true
							}
							, {
								field : 'D_withhold',
								title : '单位保险扣款总额(元)',
								width : 190,
								totalRow : true,
								sort : true
							}
							, {
								field : 'insurance',
								title : '保险缴费总额(元)',
								width : 180,
								totalRow : true,
								sort : true
							}
							, {
								field : 'after_tax_salary',
								title : '应发工资(元)',
								width : 150,
								totalRow : true,
								sort : true
							}
							, {
								field : 'welfare_type',
								title : '福利项目名',
								width : 120
							}
							, {
								field : 'welfare_monery',
								title : '福利(金额/元)',
								width : 150,
								totalRow : true,
								sort : true
							}
							, {
								field : 'goods',
								title : '福利(物品)',
								width : 120
							}
							, {
								field : 'remark',
								title : '备注',
								width : 120
							}
						] ],
						id : 'test',
						page : true,
						response : {
							statusCode : 200 //重新规定成功的状态码为 200，table 组件默认为 0
						}
					});
			
					//查询
					$("#search_btn").click(function() {
						var type = $(this).data('type');
						active[type] ? active[type].call(this) : '';
					})
	
				})
	</script>


</body>
</html>