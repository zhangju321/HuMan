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
<script	src="${pageContext.request.contextPath}/resources/bootstrap/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css">
</head>
<body>
	 <p>招聘需求</p>
     <ul class="nav nav-tabs">
	  <li class="active"><a href="/HuManManger/wmw/requirements_select.jsp">招聘需求管理</a></li>
	  <li><a href="/HuManManger/wmw/requirements_save.jsp">创建招聘需求</a></li>
	  <li><a href="/HuManManger/wmw/requirements_select.jsp">招聘需求查询</a></li>
    </ul>

<div id="none_select">
	<!-- 招聘计划查询 -->
	<table class="table table-condensed">
		<tr>
			<td>需求编号</td>
			<td>需求部门</td>
			<td>需求岗位</td>
			<td>需求人数</td>
			<td>用工日期</td>
			<td>操作</td>
		</tr>
		<tbody id="requ_tbody"></tbody>
	</table>
	</div>
	<div class="modal fade" id="requ_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">修改招聘需求</h4>
				</div>
				<div class="modal-body">
				<!-- 修改 -->
				<form method="post" id="from_requ">
					<table class="Table" width="60%" align="center">
					     <tr>
						    <td nowrap class="col-md-1 control-label" style="width: 10%">招聘需求编号:</td>
							<td class="TableData" style="width: 20%">
							   <input type="text" name="requirementsId" id="requirementsId"class="form-control">
							</td>
							<td nowrap class="col-md-4 control-label" style="width: 20%">招聘计划:</td>
							<td class="TableData" style="width: 20%">
							    <input type="text" id="planName" class="form-control" >
							</td>
						</tr>
						<tr>
						    <td nowrap class="col-md-1 control-label" style="width: 10%">招聘部门:</td>
							<td class="TableData" style="width: 20%">
							   <input type="text" name="requDept" id="requDept"class="form-control">
							</td>
							<td nowrap class="col-md-4 control-label" style="width: 20%">招聘岗位:</td>
							<td class="TableData" style="width: 20%">
							    <input type="text" name="requJob" id="requJob" class="form-control" >
							</td>
						</tr>
						<tr>
							<td nowrap class="col-md-2 control-label" style="width: 20%">招聘人数:</td>
							<td class="TableData">
							   <input type="text" name="requNum" id="requNum" class="form-control">
							</td>
							<td nowrap class="col-md-2 control-label">用工日期:</td>
							<td class="TableData">
							   <input type="date" name="requTime" class="form-control" id="requTime">
							</td>
						</tr>
						<tr>
							<td nowrap class="col-md-2 control-label">申请人:</td>
							<td class="TableData">
							   <input type="text" name="petitioner" class="form-control" id="petitioner">
							</td>
							
							   <input type="hidden" name="planNo" class="form-control" id="planNo">
							
						</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">岗位要求:</td>
								<td class="TableData">
								<input type="text" name="requRequires"class="form-control" id="requRequires"></td>
								<td nowrap class="col-md-2 control-label">备注:</td>
								<td class="TableData">
								<input type="text" name="remark"class="form-control" id="remark"></td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">附件:</td>
								<td class="TableData">
								<input type="text" name="attachmentName"class="form-control" id="attachmentName"></td>
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
        	url : "require/select",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
       	 	dataType : 'json', 
        	success : function(data) {
           		$("#requ_tbody").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    tr+="<td>"+data[i].REQUIREMENTS_ID+"</td>";
        		    tr+="<td>"+data[i].REQU_DEPT+"</td>";
        		    tr+="<td>"+data[i].REQU_JOB+"</td>";
        		    tr+="<td>"+data[i].REQU_NUM+"</td>";
        		    tr+="<td>"+data[i].REQU_TIME+"</td>"; 
        		    tr+="<td><input type='button' id='"+data[i].REQUIREMENTS_ID+"' value='修改' href='#requ_modal' data-toggle='modal' class='update  btn btn-primary' >"+
        		    "<input type='button' id='"+data[i].REQUIREMENTS_ID+"' value='删除'  class='delete btn btn-primary'></td>"; 
        		    tr+="</tr>";
        		     $("#requ_tbody").append(tr); 
        	}}
 		}); 
	 }
	 /* 根据ID查询 */
	$(function(){
				$("#requ_tbody").on("click",".update",function(){
					var id=this.id;
					$.ajax({
						url:"require/queryId",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
						    $("#requirementsId").val(data[0].REQUIREMENTS_ID);
						    $("#planName").val(data[0].PLAN_NAME);
						    $("#planNo").val(data[0].PLAN_NO);
							$("#requDept").val(data[0].REQU_DEPT);
							$("#requJob").val(data[0].REQU_JOB);
							$("#requNum").val(data[0].REQU_NUM);
							$("#requRequires").val(data[0].REQU_REQUIRES);
							$("#requTime").val(data[0].REQU_TIME);
							$("#petitioner").val(data[0].PETITIONER);
							$("#remark").val(data[0].REMARK);
							$("#attachmentName").val(data[0].ATTACHMENT_NAME);
						}
					});
				})
			})
			/* 修改 */
			function requ_update(){
			var obj=$("#from_requ").serialize();
			alert(obj);
		    $.ajax({
		       url : "require/requUpdate",
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
				$("#requ_tbody").on("click",".delete",function(){
					var id=this.id;
					$.ajax({
						url:"require/requDelete",
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