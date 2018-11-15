<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'save_plan.jsp' starting page</title>
    
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
    <p></p>
     <ul class="nav nav-tabs">
	  <li><a href="/HuManManger/wmw/requirements_select.jsp">招聘需求管理</a></li>
	  <li class="active"><a href="/HuManManger/wmw/requirements_save.jsp">创建招聘需求</a></li>
    </ul>
<!-- 添加招聘需求-->
<div style="width:70%; margin:0 auto;">
<form method="post"  id="requsave">
<table class="table table-bordered" width="60%" align="center">
<tr align="center" class="TableControl">
      <td colspan=4 nowrap>
        <p>创建招聘需求</p>
      </td>
    </tr>
   <tr>
      <td nowrap class="col-md-1 control-label" style="width: 10%">计划名称:</td>
      <td class="TableData" style="width: 20%">
         <input type="text" id="planName"  >
         <input type="hidden" id="planNo"  name="planNo">
         <input type="button"  href="#plan_modal" value="添加" data-toggle='modal' >
      </td>
      <td nowrap class="col-md-2 control-label">需求人数:</td>
      <td class="TableData">
        <input type="text"name="requNum" id="requNum" class="form-control" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label" style="width: 20%">需求部门:</td>
      <td class="TableData">
         <input type="text"  id="departmentName" name="requJob" readonly="readonly">
         <input type="hidden" id="departmentId">
         <input type="button"  href="#depart_modal" value="添加" data-toggle='modal' >
      </td>
      <td nowrap class="col-md-4 control-label" style="width: 20%">需求岗位:</td>
      <td class="TableData" style="width: 20%">
        <input type="text"  id="positionName" name="requDept" readonly="readonly">
        <input type="hidden" id="positionId" >
        <input type="button"  href="#position_modal" value="添加" data-toggle='modal'  >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">用工日期:</td>
      <td class="TableData">
        <input type="date"name="requTime" id="requTime"class="form-control"  >
      </td>
      <td nowrap class="col-md-2 control-label">申请人:</td>
      <td class="TableData">
         <input type="text" name="petitioner" class="form-control" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">岗位要求:</td>
      <td class="TableData">
         <textarea class="form-control" name="requRequires" id="requRequires"></textarea>
      </td>
      <td nowrap class="col-md-2 control-label">备注:</td>
      <td class="TableData">
        <textarea class="form-control" name="remark" ></textarea>
      </td>
   </tr>
   <!-- <tr>
      <td nowrap class="col-md-2 control-label">附件名称:</td>
      <td class="TableData">
         <input type="text" name="attachmentName" class="form-control" >
      </td>
   </tr> -->
    <tr align="center" class="TableControl">
      <td colspan=4 nowrap>
        <input type="button" class="btn btn-default" value="添加"  onclick="requ_save()">
      </td>
    </tr>
  </table>
</form>
</div>
<!-- 计划 模态框 -->
<div class="modal fade" id="plan_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">招聘部门</h4>
				</div>
				<div class="modal-body">
				<form method="post" >
					<table class="table table-bordered" width="60%" align="center">
					      <tbody id="planNamemodal"></tbody>
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
  </body>
</html>
<script>
    function requ_save(){
			var obj=$("#requsave").serialize();
		    $.ajax({
		       url : "require/requSave",
        	   type : "post",
        	   data :obj,
	           dataType:'json',
        	   success : function(data) {
        	      alert("创建招聘需求");
        	}
 		}); 
	 }
	  /* 计划查询 */
     $('#plan_modal').on('show.bs.modal', function () {
        $.ajax({
        	url : "plan/select",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
       	 	dataType : 'json', 
        	success : function(data) {
           		$("#planNamemodal").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    var plan=data[i].PLAN_NO+","+data[i].PLAN_NAME+","+data[i].PLAN_RECR_NO
        		          +","+data[i].departmentId+","+data[i].departmentName
        		          +","+data[i].positionId+","+data[i].positionName
        		          +","+data[i].POSITION_REQUIRE+","+data[i].WORK_DATE;
        		    tr+="<td><button type='button' id='"+plan+"' class='insert btn btn-default' data-dismiss='modal'>'"+data[i].PLAN_NAME+"'</button></td>";
        		    tr+="</tr>";
        		     $("#planNamemodal").append(tr); 
        	}}
 		}); 
     })
	$(function(){
				$("#planNamemodal").on("click",".insert",function(){
				    var name=this.id;
					var plan= name.split(",");
					for(var i=0; i<plan.length;i++){
        		      var planNo=plan[0];
        		      var planName=plan[1];
        		      var requNum=plan[2];
        		      var departmentId=plan[3];
        		      var departmentName=plan[4];
        		      var positionId=plan[5];
        		      var positionName=plan[6];
        		      var requRequires=plan[7];
        		      var requTime=plan[8];
					}
				/* 清空下面两个框的值 */
				$("#planNo").val("");
           		$("#planName").val("");
           		$("#requNum").val("");
           		$("#departmentId").val("");
           		$("#departmentName").val("");
           		$("#positionId").val("");
           		$("#positionName").val("");
           		$("#requRequires").val("");
           		$("#requTime").val("");
           		/*赋值*/
				$("#planNo").val(planNo);
			    $("#planName").val(planName); 
			    $("#requNum").val(requNum);
			    $("#departmentId").val(departmentId);
			    $("#departmentName").val(departmentName);
			    $("#positionId").val(positionId);
			    $("#positionName").val(positionName);
			    $("#requRequires").val(requRequires);
			    $("#requTime").val(requTime);
				})
			}) 	 
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
                $("#planNo").val("");
           		$("#planName").val("");
           		$("#positionName").val("");
           		$("#positionId").val("");
				$("#departmentId").val("");
			    $("#departmentName").val(""); 
            }
	 }
  </script>
  
