<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>创建招聘计划</title>
    
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
<!-- 添加招聘计划 -->
<div style="width:70%; margin:0 auto;">
<p></p>
<form method="post"  id="plansave">
<table class="table table-bordered" width="60%" align="center">
<tr align="center" class="TableControl">
      <td colspan=4 nowrap>
        <p>创建招聘计划</p>
      <!-- 创建时间 -->
          <input type="hidden" name="registerTime" id="registerTime">
      <!-- 计划状态 -->
          <input type="hidden" name="planStatus" id="planStatus" value="0">
      </td>
    </tr>
   <tr>
      <td nowrap class="col-md-1 control-label" style="width: 10%;">计划名称:</td>
      <td class="TableData" style="width: 20%">
         <input type="text" name="planName"  class="form-control" >
      </td>
      <td nowrap class="col-md-2 control-label">招聘人数:</td>
      <td class="TableData">
        <input type="text"name="planRecrNo" class="form-control" >
      </td>
   </tr>
   <tr>
   <td nowrap class="col-md-4 control-label" style="width: 10%">招聘部门:</td>
      <td class="TableData" style="width: 20%">
          <input type="text"  id="departmentName" readonly="readonly">
          <input type="hidden" id="departmentId" name="departmentId">
          <input type="button"  href="#depart_modal" value="添加" data-toggle='modal' >
      </td>
      <td nowrap class="col-md-2 control-label" style="width: 10%">招聘岗位:</td>
      <td class="TableData" style="width: 20%">
          <input type="text"  id="positionName" readonly="readonly">
          <input type="hidden" id="positionId" name="positionId">
          <input type="button"  href="#position_modal" value="添加" data-toggle='modal'  >
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
      <td nowrap class="col-md-2 control-label">预算费用(元):</td>
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
      <td nowrap class="col-md-2 control-label">工资范围(元):</td>
      <td class="TableData">
        <input type="text"name="salaryArea" class="form-control" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">审批人:</td>
         <td class="TableData" style="width: 20%">
          <input type="text"   id="uname" readonly="readonly">
          <input type="hidden"   name="id" id="uid">
          <input type="button"  href="#user_modal" value="添加" data-toggle='modal'  >
      </td>
   </tr>
    <tr>
      <td nowrap class="col-md-2 control-label">岗位要求:</td>
      <td class="TableData" colspan=3>
          <textarea class="form-control" name="positionRequire" ></textarea>
      </td>
    </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">招聘说明:</td>
      <td class="TableData" colspan=3>
         <textarea class="form-control"  name="recruitDirection" ></textarea>
      </td>
    </tr>
    <tr>
      <td nowrap class="col-md-2 control-label">招聘备注:</td>
      <td class="TableData" colspan=3>
        <textarea class="form-control" name="recruitRemark" ></textarea>
      </td>
   </tr>
     <!-- 附件 -->
    <tr align="center" class="TableControl">
      <td colspan=4 nowrap>
        <input type="button" class="btn btn-default" value="添加"  onclick="plan_save()">
      </td>
    </tr>
  </table>
</form>
</div>
<!-- 部门 模态框 -->
<div class="modal fade" id="depart_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">招聘部门</h4>
				</div>
				<div class="modal-body">
				<form method="post" >
					<table class="table table-bordered" width="60%" align="center">
					      <tbody id="departName"></tbody>
				    </table>
               </form>
			</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-default"data-dismiss="modal"  onclick="empty(1)">清空</button>
			<button type="button" class="btn btn-default"data-dismiss="modal">关闭</button>
		</div>
		</div>
      </div>
   </div>
   <!-- 职务 模态框-->
   <div class="modal fade" id="position_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">招聘岗位</h4>
				</div>
				<div class="modal-body">
				<form method="post" id="from_position">
					<table class="table table-bordered" width="60%" align="center">
							  <tbody id="posiName"></tbody>
				</table>
               </form>
			</div>
		<div class="modal-footer">
		    <button type="button" class="btn btn-default"data-dismiss="modal"  onclick="empty(2)">清空</button>
			<button type="button" class="btn btn-default"data-dismiss="modal">关闭</button>
		</div>
		</div>
      </div>
   </div>
   <!-- 审批人 模态框-->
   <div class="modal fade" id="user_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" >审批人</h4>
				</div>
				<div class="modal-body">
				<form method="post" id="from_user">
					<table class="table table-bordered" width="60%" align="center">
							  <tbody id="userName"></tbody>
				</table>
               </form>
			</div>
		<div class="modal-footer">
		    <button type="button" class="btn btn-default"data-dismiss="modal"  onclick="empty(0)">清空</button>
			<button type="button" class="btn btn-default"data-dismiss="modal">关闭</button>
		</div>
		</div>
      </div>
   </div>
  </body>
</html>
<script>
    function plan_save(){
            var date = new Date();
            var year = date.getFullYear();
            var month = date.getMonth() + 1;
            var day = date.getDate();
            if (month < 10) {
                month = "0" + month;
            }
            if (day < 10) {
               day = "0" + day;
            }
            var MyDate = year + "-" + month + "-" + day;
            $("#approveDate").val(MyDate);
			var obj=$("#plansave").serialize();
		    $.ajax({
		       url : "plan/planSave",
        	   type : "post",
        	   data :obj,
	           dataType:'json',
        	   success : function(data) {
        	   alert("创建招聘计划成功");
        	}
 		}); 
	 }
	 /* 部门查询 */
     $('#depart_modal').on('show.bs.modal', function () {
        $.ajax({
        	url : "depart/select",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
       	 	dataType : 'json', 
        	success : function(data) {
           		$("#departName").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    var depart=data[i].departmentId+","+data[i].departmentName;
        		    tr+="<td><button type='button' id='"+depart+"' class='insert btn btn-default' data-dismiss='modal'>'"+data[i].departmentName+"'</button></td>";
        		    tr+="</tr>";
        		     $("#departName").append(tr); 
        	}}
 		}); 
     })
	$(function(){
				$("#departName").on("click",".insert",function(){
				    var name=this.id;
					var depart= name.split(",");
					for(var i=0; i<depart.length;i++){
        		      var depart_Id=depart[0];
        		      var depart_name=depart[1];
					}
				/* 清空下面两个框的值 */
				$("#positionName").val("");
           		$("#positionId").val("");
           		/*赋值*/
				$("#departmentId").val(depart_Id);
			    $("#departmentName").val(depart_name); 
				})
			}) 
	   
	   /* 职务查询 */
	  $('#position_modal').on('show.bs.modal', function () {
	   var id=$("#departmentId").val();
        $.ajax({
        	url : "position/select",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
         	data:JSON.stringify(id),
        	dataType : 'json', 
        	success : function(data) {
           		$("#posiName").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    var position=data[i].positionId+","+data[i].positionName;
        		    tr+="<td><button type='button' id='"+position+"' class='insert btn btn-default' data-dismiss='modal'>'"+data[i].positionName+"'</button></td>";
        		    tr+="</tr>";
        		     $("#posiName").append(tr); 
        	}}
 		}); 
     })
	$(function(){
				$("#posiName").on("click",".insert",function(){
				    var name=this.id;
					var position= name.split(",");
					for(var i=0; i<position.length;i++){
        		      var positionId=position[0];
        		      var positionName=position[1];
					}
				$("#positionId").val(positionId);
			    $("#positionName").val(positionName); 
				})
			}) 
	/*审批人查询*/
	$('#user_modal').on('show.bs.modal', function () {
        $.ajax({
        	url : "findAll",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
        	dataType : 'json', 
        	success : function(data) {
           		$("#userName").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    var user=data[i].id+","+data[i].uname;
        		    tr+="<td><button type='button' id='"+user+"' class='insert btn btn-default' data-dismiss='modal'>'"+data[i].uname+"'</button></td>";
        		    tr+="</tr>";
        		     $("#userName").append(tr); 
        	}}
 		}); 
     })
	$(function(){
				$("#userName").on("click",".insert",function(){
				    var user=this.id;
					var users= user.split(",");
					for(var i=0; i<users.length;i++){
        		      var uid=users[0];
        		      var uname=users[1];
					}
				$("#uid").val(uid);
			    $("#uname").val(uname); 
				})
			})
            /* 清空 */
	function empty(none){
            if (none==1) {
                $("#positionName").val("");
           		$("#positionId").val("");
				$("#departmentId").val("");
			    $("#departmentName").val(""); 
            }else if(none==2){
                $("#positionName").val("");
           		$("#positionId").val("");
            }else if(none==0){
                $("#uid").val("");
           		$("#uname").val("");
            }
	 }
  </script>
  
