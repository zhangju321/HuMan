<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="resource/layui/css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->          
<script src="resource/layui/layui.js" charset="utf-8"></script>
<script src="resource/layui/layui.all.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 --> 
</head>
<body>
<h2>薪资统计</h2>
<table class="layui-hide" id="test" lay-filter="test"></table>
              


<script>
layui.use('table', function(){
  var table = layui.table;
  table.render({
    elem: '#test'
    ,url:'pay/queryAll3'
    ,toolbar: true
    ,title: '用户数据表'
    ,totalRow: true
    ,cols: [[
      {field:'departmentName', title:'部门户名', width:120, edit: 'text'}
      ,{field:'positionName', title:'职务名', width:150, edit: 'text'}
      ,{field:'STAFF_NAME', title:'人员名', width:150,}
      ,{field:'tax_salary', title:'职务工资', width:150,  sort: true ,totalRow: true}
      ,{field:'Bonus', title:'奖金', width:100, sort: true, totalRow: true}
      ,{field:'subvention', title:'津贴',width:100,totalRow: true, sort: true}
      ,{field:'late', title:'迟到次数', width:120, sort: true}
      ,{field:'early_retreat', title:'早退次数', width:120, sort: true}
      ,{field:'absenteeism', title:'旷工次数', width:120, sort: true}
      
       ,{field:'K_withhold', title:'考勤扣款总额(元)', width:160, edit: 'text',totalRow: true, sort: true}
      ,{field:'endowment_insurance', title:'个人养老保险(元)', width:160, edit: 'text',totalRow: true, sort: true}
      ,{field:'medical_insurance', title:'个人医疗保险(元)', width:160,  totalRow: true, sort: true}
      ,{field:'birth_insurance', title:'个人生育保险(元)', width:160, edit: 'text', sort: true,totalRow: true}
      ,{field:'unemployment_insurance', title:'个人失业保险(元)', width:160, sort: true, totalRow: true}
      ,{field:'injury_insurance', title:'个人工伤保险(元)',totalRow: true, sort: true, width:160}
      ,{field:'housing_fund', title:'个人住房公积金(元)', width:180,totalRow: true, sort: true}
      ,{field:'B_withhold', title:'个人保险扣款总额(元)', width:190,totalRow: true, sort: true}
      ,{field:'endowment_insurance_d', title:'单位养老保险(元)', width:160, sort: true}
      
      
      ,{field:'medical_insurance_d', title:'单位医疗保险(元)', width:160, edit: 'text',totalRow: true, sort: true}
      ,{field:'birth_insurance_d', title:'单位生育保险(元)', width:160, edit: 'text',totalRow: true, sort: true}
      ,{field:'unemployment_insurance_d', title:'单位失业保险(元)', width:160, sort: true, totalRow: true}
      ,{field:'injury_insurance_d', title:'单位工伤保险(元)', width:160, edit: 'text', sort: true,totalRow: true}
      ,{field:'housing_fund_d', title:'单位住房公积金(元)', width:180, sort: true, totalRow: true}
      ,{field:'D_withhold', title:'单位保险扣款总额(元)',width:190,totalRow: true, sort: true}
      ,{field:'insurance', title:'保险缴费总额(元)', width:180,totalRow: true, sort: true}
      ,{field:'after_tax_salary', title:'应发工资(元)', width:150,totalRow: true, sort: true}
      ,{field:'welfare_type', title:'福利项目名', width:120}
      
      ,{field:'welfare_monery', title:'福利(金额/元)', width:150,totalRow: true, sort: true}
      ,{field:'goods', title:'福利(物品)', width:120}
      ,{field:'remark', title:'备注', width:120} 
    ]]
    ,page: false
    ,response: {
      statusCode: 200 //重新规定成功的状态码为 200，table 组件默认为 0
    }
  });
});
</script>

</body>
</html>