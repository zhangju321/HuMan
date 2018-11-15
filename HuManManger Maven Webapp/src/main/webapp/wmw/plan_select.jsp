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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css">
</head>
<body>     

<div id="none_select"  style="width:98%;margin:0 auto;">
<p></p>
      <ul class="nav nav-tabs">
	  <li class="active"><a href="/HuManManger/wmw/plan_select.jsp">人才筛选管理</a></li>
	  <li><a href="/HuManManger/wmw/plan_save.jsp">创建筛选计划</a></li>
    </ul>
	<!-- 招聘计划查询 -->
	<table class="table table-bordered">
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
	<div class="modal fade" id="plan_modal" role="dialog" style="overflow:scroll;" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:900px;">
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
						    <td nowrap class="col-md-1 control-label" style="width: 5%">计划名称:</td>
							<td class="TableData" style="width: 25%">
							   <input type="text" name="planName" id="PLAN_NAME"class="form-control" >
							</td>
							<td nowrap class="col-md-1 control-label" style="width: 5%">招聘人数:</td>
							<td class="TableData" style="width: 25%">
							   <input type="text" name="planRecrNo" id="PLAN_RECR_NO"class="form-control" >
							</td>
						</tr>
						<tr>
							<td nowrap class="col-md-4 control-label" style="width: 5%">招聘部门:</td>
                            <td class="TableData" style="width: 25%">
                              <input type="text"  id="departmentName">
                              <input type="hidden" id="departmentId" name="departmentId">
                              <input type="button"  href="#depart_modal" value="修改" data-toggle='modal'  >
                           </td>
                           <td nowrap class="col-md-2 control-label" style="width: 5%">招聘岗位:</td>
                           <td class="TableData" style="width: 25%">
                               <input type="text"  id="positionName">
                               <input type="hidden" id="positionId" name="positionId">
                               <input type="button"  href="#position_modal" value="修改" data-toggle='modal'  >
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
							<td nowrap class="col-md-2 control-label">预算费用(元):</td>
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
								<td nowrap class="col-md-2 control-label">工资范围(元):</td>
								<td class="TableData"><input type="text" name="salaryArea"
									class="form-control" id="SALARY_AREA"></td>
							</tr>
							<tr>
									<td nowrap class="col-md-2 control-label">审批人:</td>
									<td class="TableData" style="width: 20%">
									<input type="text" id="uname"> 
									<input type="hidden" name="id"id="uid">
									<input type="button" href="#user_modal"value="添加" data-toggle='modal'>
									</td>
								</tr>
							<tr>
							   	<td nowrap class="col-md-2 control-label">岗位要求:</td>
								<td class="TableData" colspan=3>
								<textarea class="form-control" name="positionRequire" id="POSITION_REQUIRE"></textarea>
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
							<!-- <tr>
								<td nowrap class="col-md-2 control-label">附件:</td>
								<td class="TableData" >
								<textarea class="form-control" name="attachmentName" id="ATTACHMENT_NAME"></textarea>
								</td>
							</tr> -->
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
   <!-- 详细信息模态框 -->
   <div class="modal fade" id="details_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" >详细信息</h4>
				</div>
				<div class="modal-body">
				<form method="post"  id="plansave">
                   <table class="table table-bordered" width="60%" align="center">
                       <tbody id="from_details"></tbody>
                   </table>
                </form>
			</div>
        <div class="modal-footer">
			<button type="button" class="btn btn-default"data-dismiss="modal">关闭</button>
		</div>
		</div>
      </div>
   </div>
                          <!-- 模态框 -->
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
        	success : function(data){
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
        		    var name=data[i].PLAN_NO+","+data[i].PLAN_NAME;
        		    if(data[i].PLAN_STATUS==1){
        		    tr+="<td><input type='button' id='"+data[i].PLAN_NO+"' value='详细信息' href='#details_modal'  data-toggle='modal'  class='details btn btn-primary'>"+
        		    "<input type='button' id='"+name+"' value='删除'  class='delete btn btn-primary'></td>"; 
        		    }else{
        		   tr+="<td><input type='button' id='"+data[i].PLAN_NO+"' value='详细信息' href='#details_modal' data-toggle='modal'  class='details btn btn-primary'>"+
        		    "<input type='button' id='"+data[i].PLAN_NO+"' value='修改' href='#plan_modal' data-toggle='modal' class='update  btn btn-primary' >"+
        		    "<input type='button' id='"+name+"' value='删除'  class='delete btn btn-primary'></td>"; 
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
							$("#departmentName").val(data[0].departmentName);
							$("#positionName").val(data[0].positionName);
							$("#PLAN_RECR_NO").val(data[0].PLAN_RECR_NO);
							$("#PLAN_DITCH option[value='"+data[0].PLAN_DITCH+"']").attr("selected", true);
							$("#PLAN_BCWS").val(data[0].PLAN_BCWS);
							$("#START_DATE").val(data[0].START_DATE);
							$("#END_DATE").val(data[0].END_DATE);
							$("#WORK_DATE").val(data[0].WORK_DATE);
							$("#SALARY_AREA").val(data[0].SALARY_AREA);
							$("#POSITION_REQUIRE").val(data[0].POSITION_REQUIRE);
							$("#uid").val(data[0].id);
							$("#uname").val(data[0].uname);
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
					var name=this.id;
					var plan= name.split(",");
					for(var i=0; i<plan.length;i++){
        		      var pNo=plan[0];
        		      var pName=plan[1];
					}
					if(confirm("是否删除"+"'"+pName+"'"+"计划？")) {
				$.ajax({
					url : "plan/planDelete",
					type : "post",
					async : true,
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(pNo) ,
					dataType : 'Json',
					success : function(data) {
						queryAll();
					}
				});
				}
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
						$("#from_details").html("");
						    var tr="<tr>";
        		            tr+="<td>计划名称：</td><td>"+data[0].PLAN_NAME+"</td><td>招聘人数：</td><td>"+data[0].PLAN_RECR_NO+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>招聘部门：</td><td>"+data[0].departmentName+"</td><td>招聘岗位：</td><td>"+data[0].positionName+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>招聘渠道：</td><td>"+ditch(data[0].PLAN_DITCH)+"</td><td>预算费用：</td><td>"+data[0].PLAN_BCWS+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>开始日期：</td><td>"+data[0].START_DATE+"</td><td>结束日期：</td><td>"+data[0].END_DATE+"</td>";        		            
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>用工日期：</td><td>"+data[0].WORK_DATE+"</td><td>工资范围：</td><td>"+data[0].SALARY_AREA+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>审批人：</td><td>"+data[0].uname+"</td><td>创建时间：</td><td>"+data[0].REGISTER_TIME+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>岗位要求：</td><td>"+data[0].POSITION_REQUIRE+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>招聘说明：</td><td>"+data[0].RECRUIT_DIRECTION+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>招聘备注：</td><td>"+data[0].RECRUIT_REMARK+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>审批时间：</td><td>"+data[0].APPROVE_DATE+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>审批意见：</td><td>"+data[0].APPROVE_COMMENT+"</td>";
        		            tr+="</tr>";
        		            $("#from_details").append(tr); 
						}
					});
				})
			})
			 function ditch(PLAN_STATUS){
  	   if(PLAN_STATUS==""){
  	       return '无';
  	   }else if(PLAN_STATUS==1){
  	       return '网络招聘';
  	   }else if(PLAN_STATUS==2){
  	       return '招聘会招聘';
  	   }else if(PLAN_STATUS==3){
  	       return '人才猎头推荐';
  	   }
  	}
		       /* 模态框 */
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
        	url : "users/usersname",
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
</script>