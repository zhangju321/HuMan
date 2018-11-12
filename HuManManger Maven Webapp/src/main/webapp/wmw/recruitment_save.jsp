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
<script	src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
	 <p>招聘录用</p>
     <ul class="nav nav-tabs">
	  <li class="active"><a href="/HuManManger/wmw/recruitment_select.jsp">招聘录用管理</a></li>
	  <li><a href="/HuManManger/wmw/recruitment_save.jsp">新建招聘录用</a></li>
    </ul>

<!-- 添加招聘需求-->
<form method="post"  id="recruitsave">
<table class="Table" width="60%" align="center">
<tr align="center" class="TableControl">
      <td colspan=4 nowrap>
        <p>创建招聘录用</p>
      </td>
   </tr>
   <tr>
      <td nowrap class="TableData" style="width: 20%">录用者姓名:</td>
      <td class="TableData" style="width: 20%">
      <input type="text" name="applyerName"  id="applyerName"class=BigInput size="15"  readonly value="">
      <input type="button"  href="#filter_modal" value="添加" data-toggle='modal'  >
      </td>
      <td nowrap class="col-md-4 control-label" style="width: 20%">计划名称:</td>
      <td class="TableData" style="width: 20%">
        <INPUT type="text" id="planName" class="form-control" >
        <INPUT type="hidden" name="planNo" id="planNo"class="form-control" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">录用岗位:</td>
      <td class="TableData">
        <input type="text"name="jobStatus"  id="position" class="form-control" >
      </td>
      <td nowrap class="col-md-2 control-label">录用日期:</td>
      <td class="TableData">
         <input type="date" name="assPassTime" class="form-control" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">员工类型:</td>
      <td class="TableData">
         <select name="type" style="background: white;" class="form-control" > 
					<option value="">请选择</option>
					<option value="1">合同工</option>
                    <option value="2">正式工</option>
                    <option value="3">临时工</option>
		 </select>
      </td>
      <td nowrap class="col-md-2 control-label">审批人:</td>
      <td class="TableData">
        <input type="text"name="assessingOfficer" class="form-control" >
      </td>
   </tr>
   <tr>
      <!-- <td nowrap class="col-md-2 control-label">用工日期:</td>
      <td class="TableData">
         <input type="data" name="petitioner" class="form-control" >
      </td> -->
        <!-- <td nowrap class="col-md-2 control-label" style="width: 20%">录用部门:</td>
      <td class="TableData">
         <INPUT type="text" name="department" id="department" class="form-control"   >
      </td> -->
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">正式入职时间:</td>
      <td class="TableData">
        <input type="date"name="onBoardingTime" class="form-control" >
      </td>
      <td nowrap class="col-md-2 control-label">正式起薪时间:</td>
      <td class="TableData">
         <input type="date" name="startingSalaryTime" class="form-control" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">备注:</td>
      <td class="TableData">
         <input type="text" name="remark" class="form-control" >
      </td>
   </tr>
    <tr align="center" class="TableControl">
      <td colspan=4 nowrap>
        <input type="button" class="btn btn-default" value="添加"  onclick="recru_save()">
      </td>
    </tr>
  </table>
</form>

 <!-- 职务 模态框-->
   <div class="modal fade" id="filter_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">招聘计划修改</h4>
				</div>
				<div class="modal-body">
				<form method="post" >
					<table class="table table-bordered" width="60%" align="center">
							  <tbody id="filterName"></tbody>
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
    function recru_save(){
			var obj=$("#recruitsave").serialize();
		    $.ajax({
		       url : "recru/save",
        	   type : "post",
        	   data :obj,
	           dataType:'json',
        	   success : function(data) {
        	      alert("录用成功");
        	} 
 		}); 
	 }
	  $('#filter_modal').on('show.bs.modal', function () {
        $.ajax({
        	url : "filter/filterName",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
       	 	dataType : 'json', 
        	success : function(data) {
           		$("#filterName").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    var filter=data[i].EMPLOYEE_NAME+","+data[i].PLAN_NO+","+data[i].PLAN_NAME+","+data[i].POSITION;
        		    tr+="<td><button type='button' id='"+filter+"' class='insert btn btn-default' data-dismiss='modal'>'"+data[i].EMPLOYEE_NAME+"'</button></td>";
        		    tr+="</tr>";
        		     $("#filterName").append(tr); 
        	} }
 		}); 
     })
     $(function(){
				$("#filterName").on("click",".insert",function(){
				    var name=this.id;
					var filter= name.split(",");
					for(var i=0; i<filter.length;i++){
        		      var filterName=filter[0];
        		      var planNo=filter[1];
        		      var planName=filter[2];
        		      var position=filter[3];
					}
				$("#applyerName").val(filterName);
			    $("#planNo").val(planNo); 
			    $("#planName").val(planName); 
			    $("#position").val(position); 
				})
			}) 
  </script>
  
