<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'after_tax_ty.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
<script
	src="${pageContext.request.contextPath}/resources/bootstrap/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/demo.css">
  </head>
  
  <body>

	<div class="row clearfix">
		<div class="col-md-12 column">
  	<table  class="table table-bordered">
 
				<thead>
				<caption>员工薪资福利报表</caption>
					<tr class="success">
					   <th>部门名</th>
						<th>职务名</th>
						<th>员工名</th>
						<th>职务工资</th>
						<th>奖金</th>
						<th>津贴</th>	
						<th>迟到次数</th>
						<th>早退次数</th>
						<th>旷工次数</th>
						<th>考勤扣款总额(元)</th>
						<th>个人养老保险(元)</th>
						<th>个人医疗保险(元)</th>
						<th>个人生育保险(元)</th>
						<th>个人失业保险(元)</th>
						<th>个人工伤保险(元)</th>
						<th>个人住房公积金(元)</th>
						<th>个人保险扣款总额(元)</th>
						<th>单位养老保险(元)</th>
						<th>单位医疗保险(元)</th>
						<th>单位生育保险(元)</th>
						<th>单位失业保险(元)</th>
						<th>单位工伤保险(元)</th>
						<th>单位住房公积金(元)</th>
						<th>单位保险扣款总额(元)</th>
						<th>保险缴费总额(元)</th>
						<th>应发工资(元)</th>
						<th>福利项目名</th>
						<th>福利(金额/元)</th>
						<th>福利(物品)</th>
						<!-- <th>福利活动时间</th> -->
						<th>备注</th>
					</tr>
				
				<tbody id="tbody">

				</tbody>
				</thead>
			</table>
			<div class="form-group">
		<input type="file" id="inputfile">
	</div>
  </div>
  </div>

  
  
  
  
  </body>
  <script>
	 function findAll() {
		 
		$.ajax({
			url : "pay/queryAll3",
			type : "post",
			async : true,
			dataType : 'Json',
			success : function(data) {
				

				$("#tbody").html("");
				for (var i = 0; i < data.length; i++) {
					var obj = data[i];
					var tr = "<tr>";
					tr += "<td>" + obj.departmentName + "</td>";
					tr += "<td>" + obj.positionName + "</td>";
					tr += "<td>" + obj.STAFF_NAME + "</td>";
					tr += "<td>" + obj.tax_salary + "</td>";
					tr += "<td>" + obj.Bonus + "</td>";
					tr += "<td>" + obj.subvention + "</td>";
					tr += "<td>" + obj.late + "</td>";
					tr += "<td>" + obj.early_retreat + "</td>";
					tr += "<td>" + obj.absenteeism + "</td>";
					tr += "<td>" + obj.K_withhold + "</td>";
					tr += "<td>" + obj.endowment_insurance + "</td>";//个人养老
					tr += "<td>" + obj.medical_insurance + "</td>";//个人医疗
					tr += "<td>" + obj.birth_insurance + "</td>";//个人生育
					tr += "<td>" + obj.unemployment_insurance + "</td>";//个人失业
					tr += "<td>" + obj.injury_insurance + "</td>";//个人工伤
					tr += "<td>" + obj.housing_fund + "</td>";//个人住房
					tr += "<td>" + obj.B_withhold + "</td>";//个人总额
					tr += "<td>" + obj.endowment_insurance_d + "</td>";
					tr += "<td>" + obj.medical_insurance_d + "</td>";
					tr += "<td>" + obj.birth_insurance_d + "</td>";
					tr += "<td>" + obj.unemployment_insurance_d + "</td>";
					tr += "<td>" + obj.injury_insurance_d + "</td>";
					tr += "<td>" + obj.housing_fund_d + "</td>";
					tr += "<td>" + obj.D_withhold + "</td>";
					tr += "<td>" + obj.insurance + "</td>";//保险总额
					tr += "<td>" + obj.after_tax_salary + "</td>";//应发工资
					tr += "<td>" + obj.welfare_type + "</td>";//福利项目
					tr += "<td>" + obj.welfare_monery + "</td>";//金额
					tr += "<td>" + obj.goods + "</td>";//物品
					tr += "<td>" + obj.remark + "</td>";//备注
					tr += "</tr>";
					$("#tbody").append(tr);
					
				}
			}
		});
	}

	$(function() {
		findAll();
	}) 
	</script>
</html>
