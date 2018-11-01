<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>招聘录用</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
<script	src="${pageContext.request.contextPath}/resources/bootstrap/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css">
</head>
<body>
	 <p>招聘录用</p>
     <ul class="nav nav-tabs">
	  <li class="active"><a href="/HuManManger/wmw/recruitment_select.jsp">招聘录用管理</a></li>
	  <li><a href="/HuManManger/wmw/recruitment_save.jsp">新建招聘录用</a></li>
	  <li><a href="/HuManManger/wmw/recruitment_select.jsp">招聘录用查询</a></li>
    </ul>

<div id="none_select">
	<table class="table table-condensed">
		<tr>
			<td>录用编号</td>
			<td>计划名称</td>
			<td>招聘者岗位</td>
			<td>招聘者姓名</td>
			<td>录用负责人</td>
			<td>录用日期</td>
			<td>操作</td>
		</tr>
		<tbody id="recru_tbody"></tbody>
	</table>
	</div>
	<div class="modal fade" id="recru_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">修改人员录用</h4>
				</div>
				<div class="modal-body">
				<!-- 修改 -->
				<form method="post" id="from_recru">
					<table class="Table" width="60%" align="center">
					     <tr>
						    <td nowrap class="col-md-1 control-label" style="width: 10%">招聘计划:</td>
							<td class="TableData" style="width: 20%">
							   <input type="text" id="planName" class="form-control">
							   <input type="hidden" name="planNo" id="planNo" class="form-control" >
							   <input type="hidden" name="recruitmentId" id="recruitmentId" class="form-control" >
							</td>
							<td nowrap class="col-md-4 control-label" style="width: 20%">录用人姓名:</td>
							<td class="TableData" style="width: 20%">
							    <input type="text" id="applyerName"  name="applyerName" class="form-control" >
							</td>
						</tr>
						<tr>
						    <td nowrap class="col-md-1 control-label" style="width: 10%">招聘部门:</td>
							<td class="TableData" style="width: 20%">
							   <input type="text" name="department" id="department"class="form-control">
							</td>
							<td nowrap class="col-md-4 control-label" style="width: 20%">任职岗位:</td>
							<td class="TableData" style="width: 20%">
							    <input type="text" name="jobStatus" id="jobStatus" class="form-control" >
							</td>
						</tr>
						<tr>
							<td nowrap class="col-md-2 control-label" style="width: 20%">录用日期:</td>
							<td class="TableData">
							   <input type="date" name="assPassTime" id="assPassTime" class="form-control">
							</td>
							<td nowrap class="col-md-2 control-label">员工类型:</td>
							<td class="TableData">
							   <input type="text" name="type" id="type" class="form-control" id="requTime">
							</td>
						</tr>
						<tr>
								<td nowrap class="col-md-2 control-label">审批人:</td>
								<td class="TableData">
								<input type="text" name="assessingOfficer"class="form-control" id="assessingOfficer"></td>
								<td nowrap class="col-md-2 control-label">正式入职时间:</td>
								<td class="TableData">
								<input type="date" name="onBoardingTime"class="form-control" id="onBoardingTime"></td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">正式起薪时间:</td>
								<td class="TableData">
								<input type="date" name="startingSalaryTime"class="form-control" id="startingSalaryTime"></td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">备注:</td>
								<td class="TableData">
								<input type="text" name="remark"class="form-control" id="remark"></td>
							</tr>
						</table>
                   </form>
			</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-primary"data-dismiss="modal"onclick="requ_update()">修改</button>
			<button type="button" class="btn btn-default"data-dismiss="modal">关闭</button>
		</div>
		</div>
      </div>
   </div>
</body>
</html>
<script>
/* 执行查询全部 */
 $(function(){
	    queryAll();
	 })
	 /* 查询全部 */
function queryAll(){
		$.ajax({
        	url : "recru/select",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
       	 	dataType : 'json', 
        	success : function(data) {
           		$("#recru_tbody").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    tr+="<td>"+data[i].RECRUITMENT_ID+"</td>";
        		    tr+="<td>"+data[i].PLAN_NAME+"</td>";
        		    tr+="<td>"+data[i].JOB_STATUS+"</td>";
        		    tr+="<td>"+data[i].APPLYER_NAME+"</td>";
        		    tr+="<td>"+data[i].ASSESSING_OFFICER+"</td>";
        		    tr+="<td>"+data[i].ASS_PASS_TIME+"</td>"; 
        		    tr+="<td><input type='button' id='"+data[i].RECRUITMENT_ID+"' value='修改' href='#recru_modal' data-toggle='modal' class='update  btn btn-primary' >"+
        		    "<input type='button' id='"+data[i].RECRUITMENT_ID+"' value='删除'  class='delete btn btn-primary'></td>"; 
        		    tr+="</tr>";
        		     $("#recru_tbody").append(tr); 
        	}}
 		}); 
	 }
	 /* 根据ID查询 */
	$(function(){
				$("#recru_tbody").on("click",".update",function(){
					var id=this.id;
					alert(id);
					$.ajax({
						url:"recru/queryId",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
						alert(data);
						    $("#recruitmentId").val(data[0].RECRUITMENT_ID);
						    $("#planName").val(data[0].PLAN_NAME);
						    $("#planNo").val(data[0].PLAN_NO);
							$("#applyerName").val(data[0].APPLYER_NAME);
							$("#department").val(data[0].DEPARTMENT);
							$("#jobStatus").val(data[0].JOB_STATUS);
							$("#assPassTime").val(data[0].ASS_PASS_TIME);
							$("#type").val(data[0].TYPE);
							$("#assessingOfficer").val(data[0].ASSESSING_OFFICER);
							$("#onBoardingTime").val(data[0].ON_BOARDING_TIME);
							$("#startingSalaryTime").val(data[0].STARTING_SALARY_TIME);
							$("#remark").val(data[0].REMARK);
						}
					});
				})
			})
			/* 修改 */
			function requ_update(){
			var obj=$("#from_recru").serialize();
			alert(obj);
		    $.ajax({
		       url : "recru/Update",
        	   type : "post",
        	   data :obj, 
	           dataType:'json',
        	   success : function(data) {
        	      queryAll();
        	}
 		}); 
	 }
	 /* 根据ID删除 */
	$(function(){
				$("#recru_tbody").on("click",".delete",function(){
					var id=this.id;
					$.ajax({
						url:"recru/Delete",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
						queryAll();
						}
					});
				})
			})
</script>

<!--  recruitmentId;  planNo; applyerName; department; jobStatus;
      assPassTime; type; assessingOfficer; onBoardingTime;
     startingSalaryTime; remark;  -->
     <!-- RECRUITMENT_ID, PLAN_NO, APPLYER_NAME,DEPARTMENT,JOB_POSITION,
     ASS_PASS_TIME,, TYPE, ASSESSING_OFFICER,  ON_BOARDING_TIME, 
       STARTING_SALARY_TIME, REMARK, -->