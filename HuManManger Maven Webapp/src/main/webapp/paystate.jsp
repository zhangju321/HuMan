<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'paystate.jsp' starting page</title>

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
	src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

<style>
th{border:1px solid #000;text-align:center;}
 tr{border:1px solid #000;hieght:40px;line-height:40px;}
 td{border:1px solid #000;hieght:40px;line-height:40px;}
</style>
</head>

<body>
	<!--查询人员考勤情况  -->
	<form action="paystate/pupdate">
		<table style="border:1px solid #000;width:3500px;text-align:center;position:absolute; top:40px;">
            <caption style="font-size:30px;color:BLACK;">薪资报表审核</caption>
			<thead >
				<tr class="warning" style="border:1px solid #000;width:500px">
					<th>人员名称</th>
					<th>工资时间</th>
					<th>职务工资</th>
					<th>应缴保险总额</th>
					<th>个人养老保险</th>
					<th>个人医疗保险</th>
					<th>个人生育保险</th>
					<th>个人失业保险</th>
					<th>个人工伤保险</th>
					<th>个人住房公积金</th>
					<th>个人保险扣款总额</th>
					<th>单位养老保险</th>
					<th>单位医疗保险</th>
					<th>单位生育保险</th>
					<th>单位失业保险</th>
					<th>单位工伤保险</th>
					<th>单位住房公积金</th>
                    <th>单位保险扣款总额</th>
                    
					<th>津贴</th>
					<th>奖金</th>
					<th>应发工资</th>
					<th>薪资状态</th>
					<th><input type="button" value="禁止薪资计划" onclick="checkUpdate()" class="xz btn btn-default">
					<input type="button" value="启用薪资计划" onclick="checkUpdate2()" class="xz btn btn-default">
					全选/全不选<input type="checkbox" id="selectAll" />
					</th>
					
				</tr>
			</thead>
			<tbody id="tbody">

			</tbody>
		</table>
	</form>
</body>
<script>

 //复选框全选全不选

$(function() { $("#selectAll").click(function() { 
$(":checkbox[name='checkid']").prop("checked", this.checked)
});
}); // this指代的你当前选择的这个元素的JS对象 }); });
 

//批量修改薪资计划状态(禁用)
	function checkUpdate() {
		obj = document.getElementsByName("checkid");
		check_val = [];
		for (k in obj) {
			if (obj[k].checked)
				check_val.push(obj[k].value);
		}
		$.ajax({
			url : "paystate/updateCheck?check_val="+check_val+"",
        	type : "post",
        	async : true,
       	 	dataType:'text',
        	success : function(data) {
        		alert(data);
        		location.reload();
        	}
		})
		}
		
		//批量修改薪资计划状态(启用)
	function checkUpdate2() {
		obj = document.getElementsByName("checkid");
		check_val = [];
		for (k in obj) {
			if (obj[k].checked)
				check_val.push(obj[k].value);
		} 
		alert(check_val);
		$.ajax({
			url : "paystate/updateCheck2?check_val="+check_val+"",
        	type : "post",
        	async : true,
       	 	dataType:'text',
        	success : function(data) {
        		alert(data);
        		location.reload();
        	}
		})
		}
		//薪资计划信息
	  function findAll(){
		$.ajax({
        	url : "paystate/queryAll",
        	type : "post",
        	async : true,
       	 	dataType:'Json',
        	success : function(data) {
        	$("#tbody").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
        			var tr = "<tr>";
      /*   			tr += "<td>" + obj.departmentName + "</td>";

					tr += "<td>" + obj.positionName + "</td>"; */
tr += "<td style='display:none'>" + obj.payid + "</td>";
					tr += "<td>" + obj.STAFF_NAME + "</td>";
					
					tr += "<td>" + obj.tax_time + "</td>";

					tr += "<td>" + obj.tax_salary + "</td>";

					
                    tr += "<td>" + obj.insurance + "</td>";
					/* tr += "<td>" + obj.K_withhold + "</td>"; */

					tr += "<td>" + obj.endowment_insurance + "</td>"; //个人养老

					tr += "<td>" + obj.medical_insurance + "</td>"; //个人医疗

					tr += "<td>" + obj.birth_insurance + "</td>"; //个人生育

					tr += "<td>" + obj.unemployment_insurance + "</td>"; //个人失业

					tr += "<td>" + obj.injury_insurance + "</td>"; //个人工伤

					tr += "<td>" + obj.housing_fund + "</td>"; //个人住房

					tr += "<td>" + obj.B_withhold + "</td>"; //个人总额

					tr += "<td>" + obj.endowment_insurance_d + "</td>";

					tr += "<td>" + obj.medical_insurance_d + "</td>";

					tr += "<td>" + obj.birth_insurance_d + "</td>";

					tr += "<td>" + obj.unemployment_insurance_d + "</td>";

					tr += "<td>" + obj.injury_insurance_d + "</td>";

					tr += "<td>" + obj.housing_fund_d + "</td>";

					tr += "<td>" + obj.D_withhold + "</td>";

                    tr += "<td>" + obj.Bonus + "</td>";

					tr += "<td>" + obj.subvention + "</td>";
					tr += "<td>" + obj.after_tax_salary + "</td>"; //应发工资
					tr += "<td>" + adc(obj.state)+ "</td>";
					tr += "<td><input type='checkbox' name='checkid' value='" + obj.payid + "'></td>";
					tr += "</tr>";
        		    $("#tbody").append(tr);
        		    
        		}
        	}
 		});
	}
	
	
	$(function(){
	
	findAll();
	})
	
	 	function adc(num){
  	   if(num==1){
  	       return '批准';
  	 
  	   }else if(num==2){
  	       return '不批准';
  	   }
  	}
</script>
</html>
