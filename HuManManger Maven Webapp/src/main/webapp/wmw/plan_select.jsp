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

<title>My JSP 'plan.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
<script	src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>     

<div id="none_select"  style="width:98%;margin:0 auto;">
	<!-- 招聘计划查询 -->
	<table class="table table-bordered">
	
	<caption ><a href="/HuManManger/wmw/plan_select.jsp">招聘计划管理</a></caption>
	<thead>
	   <tr>
	        <td style="width:2%;"></td>
			<td style="width:5%;">计划名称</td>
			<td style="width:5%;">招聘人数</td>
			<td style="width:5%;">开始日期</td>
			<td style="width:5%;">结束日期</td>
			<td style="width:5%;">用工日期</td>
			<td style="width:5%;">计划状态</td>
			<td style="width:10%;">操作</td>
		</tr>
	</thead>
		<tbody id="plan_tbody"></tbody>
	</table>
	</div>
	<div class="modal fade" id="plan_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">招聘计划修改</h4>
				</div>
				<div class="modal-body">
				<!-- 修改 -->
				<form method="post" id="from_plan">
					<table class="table table-bordered" width="60%" align="center">
							   <input type="hidden" name="planNo" id="PLAN_NO"class="form-control">
			  <thead>
						<tr>
						    <td nowrap class="col-md-1 control-label" style="width: 10%">计划名称:</td>
							<td class="TableData" style="width: 20%">
							   <input type="text" name="planName" id="PLAN_NAME"class="form-control" >
							</td>
							<td nowrap class="col-md-4 control-label" style="width: 20%">招聘部门:</td>
							<td class="TableData" style="width: 20%">
							    <input type="text" name="departmentId" class="form-control" id="RECRUIT_DEPT">
							</td>
						</tr>
						<tr>
							<td nowrap class="col-md-2 control-label" style="width: 20%">招聘岗位:</td>
							<td class="TableData">
							   <input type="text" name="positionId" class="form-control"id="RECRUIT_POSITION">
							</td>
							<td nowrap class="col-md-2 control-label">招聘人数:</td>
							<td class="TableData">
							   <input type="text" name="planRecrNo" class="form-control" id="PLAN_RECR_NO">
							</td>
						</tr>
						<tr>
							<td nowrap class="col-md-2 control-label">招聘渠道:</td>
							<td class="TableData">
							   <select name="planDitch" style="background: white;" id="PLAN_DITCH" class="form-control" > 
					              <option value="">请选择</option>
		                		  <option value="1">网络招聘</option>
                                  <option value="2">招聘会招聘</option>
                                  <option value="3">人才猎头推荐</option>
		                        </select>
							</td>
							<td nowrap class="col-md-2 control-label">预算费用:</td>
							<td class="TableData">
							   <input type="text" name="planBcws" class="form-control" id="PLAN_BCWS">
							</td>
						</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">开始日期:</td>
								<td class="TableData">
								<input type="date" name="startDate"class="form-control" id="START_DATE"></td>
								<td nowrap class="col-md-2 control-label">结束日期:</td>
								<td class="TableData"><input type="date" name="endDate"
									class="form-control" id="END_DATE"></td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">用工日期:</td>
								<td class="TableData"><input type="date" name="workDate"
									class="form-control" id="WORK_DATE"></td>
								<td nowrap class="col-md-2 control-label">工资范围:</td>
								<td class="TableData"><input type="text" name="salaryArea"
									class="form-control" id="SALARY_AREA"></td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">岗位要求:</td>
								<td class="TableData"><input type="text"
									name="positionRequire" class="form-control"
									id="POSITION_REQUIRE"></td>
								<td nowrap class="col-md-2 control-label">审批人:</td>
								<td class="TableData"><input type="text"
									name="approvePerson" class="form-control" id="APPROVE_PERSON">
								</td>
							</tr>
							<tr>
								<td nowrap class="TableData">招聘说明:</td>
								<td class="TableData" colspan=3>
								<textarea class="form-control" name="recruitDirection" id="RECRUIT_DIRECTION"></textarea>
							</tr>
							<tr>
							    <td nowrap class="TableData">招聘备注:</td>
								<td class="TableData" colspan=3>
								<textarea class="form-control"  name="recruitRemark" id="RECRUIT_REMARK"></textarea>
								</td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">附件:</td>
								<td class="TableData" >
								<textarea class="form-control" name="attachmentName" id="ATTACHMENT_NAME"></textarea>
								</td>
							</tr>
				</thead>
				</table>
               </form>
			</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-primary"data-dismiss="modal"onclick="plan_update()">修改</button>
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
        	url : "plan/select",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
       	 	dataType : 'json', 
        	success : function(data) {
        		$("#plan_tbody").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    tr+="<td></td>";
        		    tr+="<td>"+data[i].PLAN_NAME+"</td>";
        		    tr+="<td>"+data[i].PLAN_RECR_NO+"</td>";
        		    tr+="<td>"+data[i].START_DATE+"</td>";
        		    tr+="<td>"+data[i].END_DATE+"</td>";
        		    tr+="<td>"+data[i].WORK_DATE+"</td>"; 
        		    tr+="<td>"+status(data[i].PLAN_STATUS)+"</td>";
        		    if(data[i].PLAN_STATUS==1){
        		    tr+="<td><input type='button' id='"+data[i].PLAN_NO+"' value='详细信息'  class='details btn btn-primary'>"+
        		    "<input type='button' id='"+data[i].PLAN_NO+"' value='删除'  class='delete btn btn-primary'></td>"; 
        		    }else{
        		   tr+="<td><input type='button' id='"+data[i].PLAN_NO+"' value='详细信息'  class='details btn btn-primary'>"+
        		    "<input type='button' id='"+data[i].PLAN_NO+"' value='修改' href='#plan_modal' data-toggle='modal' class='update  btn btn-primary' >"+
        		    "<input type='button' id='"+data[i].PLAN_NO+"' value='删除'  class='delete btn btn-primary'></td>"; 
        		    }
        		   tr+="</tr>";
        		     $("#plan_tbody").append(tr); 
        	}}
 		}); 
	 }
	 /* 判断状态 */
	 function status(PLAN_STATUS){
  	   if(PLAN_STATUS==0){
  	       return '待批准';
  	   }else if(PLAN_STATUS==1){
  	       return '已批准';
  	   }else if(PLAN_STATUS==2){
  	       return '未批准';
  	   }
  	}
	 /* 根据ID查询 */
	$(function(){
				$("#plan_tbody").on("click",".update",function(){
					var id=this.id;
					$.ajax({
						url:"plan/queryId",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
						    $("#PLAN_NO").val(data[0].PLAN_NO);
							$("#PLAN_NAME").val(data[0].PLAN_NAME);
							$("#departmentId").val(data[0].departmentId);
							$("#positionId").val(data[0].positionId);
							$("#PLAN_RECR_NO").val(data[0].PLAN_RECR_NO);
							$("#PLAN_DITCH option[value='"+data[0].PLAN_DITCH+"']").attr("selected", true);
							$("#PLAN_BCWS").val(data[0].PLAN_BCWS);
							$("#START_DATE").val(data[0].START_DATE);
							$("#END_DATE").val(data[0].END_DATE);
							$("#WORK_DATE").val(data[0].WORK_DATE);
							$("#SALARY_AREA").val(data[0].SALARY_AREA);
							$("#POSITION_REQUIRE").val(data[0].POSITION_REQUIRE);
							$("#APPROVE_PERSON").val(data[0].APPROVE_PERSON);
							$("#RECRUIT_DIRECTION").val(data[0].RECRUIT_DIRECTION);
							$("#RECRUIT_REMARK").val(data[0].RECRUIT_REMARK);
							$("#ATTACHMENT_NAME").val(data[0].ATTACHMENT_NAME);
						}
					});
				})
			})
			/* 修改 */
			function plan_update(){
			var obj=$("#from_plan").serialize();
		    $.ajax({
		       url : "plan/planUpdate",
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
				$("#plan_tbody").on("click",".delete",function(){
					var id=this.id;
					$.ajax({
						url:"plan/planDelete",
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
			/*详细信息*/
			$(function(){
				$("#plan_tbody").on("click",".details",function(){
					var id=this.id;
					$.ajax({
						url:"plan/queryId",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
						  
						}
					});
				})
			})
		
</script>