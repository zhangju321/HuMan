<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'demo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
<script	src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css">
</head>
<body>
<p>招聘计划</p>
     <ul class="nav nav-tabs">
	  <li><a href="/HuManManger/wmw/plan_select.jsp">招聘计划管理</a></li>
	  <li class="active"><a href="/HuManManger/wmw/plan_save.jsp">创建招聘计划</a></li>
	  <li><a href="/HuManManger/wmw/plan_select.jsp">招聘计划查询</a></li>
    </ul>
<!-- 添加招聘计划 -->
<div>
<form method="post"  id="plansave">
<table class="table table-bordered" width="60%" align="center">
<tr align="center" class="TableControl">
      <td colspan=4 nowrap>
        <p>创建招聘计划</p>
      </td>
    </tr>
   <tr>
      <td nowrap class="col-md-1 control-label" style="width: 10%">计划名称:</td>
      <td class="TableData" style="width: 20%">
         <input type="text" name="planName"  class="form-control" >
      </td>
      <td nowrap class="col-md-4 control-label" style="width: 20%">招聘部门:</td>
      <td class="TableData" style="width: 20%">
          <input type="text" id="recruitDept" >
          <button  class="btn btn-default" data-toggle="modal"  data-target="#selectDepartName">添加</button>
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label" style="width: 20%">招聘岗位:</td>
      <td class="TableData">
         <INPUT type="text" name="recruitPosition" class="form-control"   >
      </td>
      <td nowrap class="col-md-2 control-label">招聘人数:</td>
      <td class="TableData">
        <input type="text"name="planRecrNo" class="form-control" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">招聘渠道:</td>
      <td class="TableData">
         <select name="planDitch" style="background: white;" class="form-control" > 
					<option value="">请选择</option>
					<option value="1">网络招聘</option>
                    <option value="2">招聘会招聘</option>
                    <option value="3">人才猎头推荐</option>
		 </select> 
      </td>
      <td nowrap class="col-md-2 control-label">预算费用:</td>
      <td class="TableData">
        <input type="text"name="planBcws" class="form-control"  >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">开始日期:</td>
      <td class="TableData">
         <input type="date" name="startDate" class="form-control" >
      </td>
      <td nowrap class="col-md-2 control-label">结束日期:</td>
      <td class="TableData">
        <input type="date"name="endDate" class="form-control" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">用工日期:</td>
      <td class="TableData">
         <input type="date" name="workDate" class="form-control" >
      </td>
      <td nowrap class="col-md-2 control-label">工资范围:</td>
      <td class="TableData">
        <input type="text"name="salaryArea" class="form-control" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">岗位要求:</td>
      <td class="TableData">
         <input type="text" name="positionRequire" class="form-control" >
      </td>
      <td nowrap class="col-md-2 control-label">审批人:</td>
      <td class="TableData">
        <input type="text" name="approvePerson" class="form-control" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">招聘说明:</td>
      <td class="TableData">
         <textarea class="form-control" rows="3" name="recruitDirection" ></textarea>
      </td>
    </tr>
    <tr>
      <td nowrap class="col-md-2 control-label">招聘备注:</td>
      <td class="TableData">
        <textarea class="form-control" rows="3" name="recruitRemark" ></textarea>
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">附件:</td>
      <td class="TableData">
        <input type="text" name="attachmentName" class="form-control"  >
      </td>
   </tr>
    <tr align="center" class="TableControl">
      <td colspan=4 nowrap>
        <input type="button" class="btn btn-default" value="添加"  onclick="plan_save()">
      </td>
    </tr>
  </table>
</form>
</div>
</body>
</html>
<script>
    $('#selectDepartName').on('show.bs.modal', function () {
        $.ajax({
        	url : "plan/departName",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
       	 	dataType : 'json', 
        	success : function(data) {
           		$("#departName").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    tr+="<td><button type='button' id='"+data[i].departmentName+"' class='insert btn btn-default' data-dismiss='modal'>'"+data[i].departmentName+"'</button></td>";
        		    tr+="</tr>";
        		     $("#departName").append(tr); 
        	}}
 		}); 
     })
	$(function(){
				$("#departName").on("click",".insert",function(){
					var name=this.id;
					$("#name").val(name);
				})
			})
</script>