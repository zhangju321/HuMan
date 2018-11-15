<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%                 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%-- fn:split 把字符串按照指定字符切分 ${fn:split(customerNames, ";")}  --%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>面试筛选</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
    <script	src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    
    <script src="resource/js/bootstrap/js/bootstrapValidator.min.js"></script>
	<link type="text/css" rel="stylesheet" href="resource/js/bootstrap/css/bootstrapValidator.min.css">
	<script src="resource/jquery.serialize.js"></script>	
	<link type="text/css" rel="stylesheet" href="resource/jedate/test/jeDate-test.css">
    <link type="text/css" rel="stylesheet" href="resource/jedate/skin/jedate.css">	
	<script type="text/javascript" src="resource/jedate/src/jedate.js"></script>
  </head>
  
  <body>
  <p></p>
      <ul class="nav nav-tabs">
	  <li class="active"><a href="/HuManManger/wmw/filter_select.jsp">人才筛选管理</a></li>
	  <li><a href="/HuManManger/wmw/filter_save.jsp">创建筛选计划</a></li>
    </ul>
<!-- 筛选计划查询 -->
<div  style="width:1300px; margin:0 auto;">
<p></p>
	<table class="table table-bordered">
		<tr>
			<td>应聘人姓名</td>
			<td>应聘岗位</td>
			<td>所学专业</td>
			<td>联系电话</td>
			<td>发起人</td>
			<td>操作</td>
		</tr>
		<tbody id="filterSelect_tbody"></tbody>
	</table>
</div>
<!-- 修改模态框 -->
		<div class="modal fade" id="filterUpdate_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" style="width:700px">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">人才筛选信息修改</h4>
					</div>
		<div class="modal-body">
		<!-- 修改 -->
		<form method="post" id="filterUpdate_form">
		<table class="table table-bordered" width="50%" align="center" >
			<tr align="center" class="TableControl">
				<td colspan=4 nowrap>
					<p>修改招聘筛选</p>
				</td>
			</tr>
			<tr>
			     <input type="hidden"name="filterId" id="filterId" class="form-control">
			     <input type="hidden" id="planNo" class="form-control">
			</tr>
			<tr>
				<td nowrap class="col-md-2 control-label" style="width: 10%">计划名称:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"id="planName" class="form-control" readonly="readonly">
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">应聘人员:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"id="employeeName"  class="form-control" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td nowrap class="col-md-1 control-label" style="width: 10%">应聘岗位:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text" id="position" class="form-control" readonly="readonly">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">所学专业:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text" id="employeeMajor" class="form-control" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td nowrap class="col-md-1 control-label" style="width: 10%">联系电话:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text" id="employeePhone" class="form-control" readonly="readonly">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">发起人:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text" id="upstep" class="form-control" readonly="readonly">
				    <input type="hidden" id="transactorStep" class="form-control" >
				</td>
			</tr>
			<tr>
				<td>下一次筛选人员:</td>
                    <td>
                    <input type="text" id="upuname" readonly="readonly">
                    <input type="hidden" name="nextTransaStep" id="upuid">
                    <input type="button" href="#user_modal" value="添加" data-toggle='modal'  >
               </td>
				<td nowrap class="col-md-1 control-label" style="width: 10%">下一次筛选时间:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text" name="nextDateTime" id="upstart" required placeholder="请选择下一次筛选时间" class="form-control"/>
				</td>
			</tr> 
		</table>
	</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal"onclick="filter_update()">修改</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
				</div>
			</div>
		</div>

<!-- 第一次面试模态框 -->
<div class="modal fade" id="filterOne_modal" role="dialog" style="overflow:scroll;"aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px"><!-- auto -->
		<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">筛选办理</h4>
					</div>
		<div class="modal-body">
		<!-- 面试人员信息 -->
		<form action="" >
		   <table  class="table table-bordered">
		    <tr align="center" class="TableControl">
				<td colspan=4 nowrap>
					<p>面试人员信息</p>
				</td>
			 </tr>
		     <tbody id="filter_Infor"></tbody>
		   </table>
		</form>
		<!-- 第一次筛选信息 -->
		<form action="" id="filterOne_InforForm" style="display:none">
		   <table  class="table table-bordered">
		     <tbody id="filterOne_Infor"></tbody>
		   </table>
		</form>
		<!-- 第二次筛选信息 -->
		<form action="" id="filterTwo_InforForm" style="display:none">
		   <table  class="table table-bordered">
		     <tbody id="filterTwo_Infor"></tbody>
		   </table>
		</form>
		<!-- 第一次筛选form -->
		<form method="post" id="filterOne_FilterForm" >
		<table class="table table-bordered" width="50%" align="center" >
		   <tr align="center" class="TableControl">
				<td colspan=4 nowrap>
					<p>第一次筛选</p>
				</td>
			</tr>
			<tr>
			<td>
			     <input type="hidden"name=filterId  id="filterOne" class="form-control">
			     <input type="hidden"name="stepFlag"  id="stepFlag1" value="1" class="form-control">
			     <input type="hidden"name="endFlag"  id="endFlag1"  class="form-control">
			</td>
			</tr>
			<tr>
				<td nowrap class="col-md-2 control-label" style="width: 10%">初选方式:</td>
                <td class="TableData">
                   <select name="filterMethod1" style="background: white;" class="form-control" > 
					  <option value="">请选择</option>
					  <option value="1">笔试</option>
                      <option value="2">面试</option>
		          </select>
               </td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">初选时间:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text" name="filterDateTime1" id="start1" required placeholder="选择筛选时间" class="form-control"/>
				</td>
			</tr>
			<tr>
				<td nowrap class="col-md-1 control-label" style="width: 10%">初选内容:</td>
				<td class="TableData" style="width: 20%" colspan=3>
				   <textarea class="form-control" name="firstContent1" ></textarea>
				</td>
		    </tr>
		    <tr>
		        <td nowrap class="col-md-1 control-label" style="width: 10%">初选意见:</td>
				<td class="TableData" style="width: 20%" colspan=3>
				   <textarea class="form-control" name="firstView1" ></textarea>
				</td>
			</tr>
			<tr>
				<td nowrap class="col-md-1 control-label" style="width: 10%">初选办理人:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text" value="${user.uname}" class="form-control" readonly="readonly">
				   <input type="hidden" name="transactorStep1" value="${user.id}">
				</td>
				<td nowrap class="TableData">是否通过：</td>
                <td class="TableData">
                <select name="passOrNot1" id="passOrNot1" style="background:white" title="" onChange="next_play(1);">
                  <option value="0" >未通过</option>
                  <option value="1" >通过</option>
                </select>
                </td>
			</tr>
			<tr id="next1" style="display:none">
                <td nowrap class="col-md-2 control-label">下一步骤办理人:</td>
                <td >
                  <input type="text"   id="uname1"  readonly="readonly">
                  <input type="hidden"  id="uid1"  name="nextTransaStep1"  >
                  <input type="button"  href="#user1_modal" value="添加" data-toggle='modal'  >
                </td>
                <td nowrap class="TableData">下一次筛选时间：</td>
                <td class="TableData">
                  <input type="text" name="nextDateTime1" id="start2" required placeholder="选择筛选时间" class="form-control"/>
                </td>
             </tr>
             </table>
             <!-- 下一步,结束按钮 -->
             <table>
		     <tr>
		        <td>
		        <button type="button" class="btn btn-primary" style="display:none" id="filterOne_next" data-dismiss="modal"onclick="filterClose_One(1,1)">下一步骤</button>
			    <button type="button" class="btn btn-default" data-dismiss="modal"onclick="filterClose_One(2,1)">结束筛选</button>
		        </td>
		     </tr>
		  </table>
	   </form>
	   <!-- 第二次筛选信息模态框 -->
	   <form method="post" id="filterTwo_FilterForm"  style="display:none">
		<table class="table table-bordered"  width="50%" align="center" >
		   <tr align="center" class="TableControl">
				<td colspan=4 nowrap>
					<p>第二次筛选</p>
			     <input type="hidden"name=filterId  id="filterTwo" class="form-control">
			     <input type="hidden"name="stepFlag"  id="stepFlag2" value="2" class="form-control">
			     <input type="hidden"name="endFlag"  id="endFlag2" class="form-control">
				</td>
			</tr>

			<tr>
				<td nowrap class="col-md-2 control-label" style="width: 10%">复选方式:</td>
                <td class="TableData">
                   <select name="filterMethod2" style="background: white;" class="form-control" > 
					  <option value="">请选择</option>
					  <option value="1">笔试</option>
                      <option value="2">面试</option>
		          </select>
               </td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">复选时间:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text" name="filterDateTime2" id="start3" required placeholder="选择筛选时间" class="form-control"/>
				</td>
			</tr>
			<tr>
				<td nowrap class="col-md-1 control-label" style="width: 10%">复选内容:</td>
				<td class="TableData" style="width: 20%" colspan=3>
				   <textarea class="form-control" name="firstContent2" ></textarea>
				</td>
		    </tr>
		    <tr>
		        <td nowrap class="col-md-1 control-label" style="width: 10%">复选意见:</td>
				<td class="TableData" style="width: 20%" colspan=3>
				   <textarea class="form-control" name="firstView2" ></textarea>
				</td>
			</tr>
			<tr>
				<td nowrap class="col-md-1 control-label" style="width: 10%">复选办理人:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text" class="form-control" readonly="readonly" value="${user.uname}">
				   <input type="hidden" name="transactorStep2"class="form-control" value="${user.id}">
				</td>
				<td nowrap class="TableData">是否通过：</td>
                <td class="TableData">
                <select name="passOrNot2" id="passOrNot2" style="background:white" title="" >
                  <option value="0" >未通过</option>
                  <option value="1" >通过</option>
                </select>
                </td>
			</tr>
	   </table>
             <!-- 下一步,结束按钮 -->
             <table>
		     <tr>
		        <td>
			    <button type="button" class="btn btn-default" data-dismiss="modal"onclick="filterClose_One(2,2)">结束筛选</button>
		        </td>
		     </tr>
		  </table>
	   </form>
	</div>
</div>
</div>
</div>	
 <!-- 修改 审批人 模态框-->
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
    <!--  审批人 模态框-->
   <div class="modal fade" id="user1_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" >审批人</h4>
				</div>
				<div class="modal-body">
				<form method="post" id="from_user">
					<table class="table table-bordered" width="60%" align="center">
							  <tbody id="user1Name"></tbody>
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
</body>
</html>
<script>
/* 执行查询全部 */
 $(function(){
	    filterSelect();
	 })
	 /* 查询全部 */
function filterSelect(){
var id=${user.id};
		$.ajax({
        	url : "filter/select",
        	type : "post",
        	async : true,
        	data:{"id":id},
       	 	dataType : 'json', 
        	success : function(data) {
        		$("#filterSelect_tbody").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    tr+="<td>"+data[i].EMPLOYEE_NAME+"</td>";
        		    tr+="<td>"+data[i].POSITION+"</td>";
        		    tr+="<td>"+data[i].EMPLOYEE_MAJOR+"</td>";
        		    tr+="<td>"+data[i].EMPLOYEE_PHONE+"</td>"; 
        		    tr+="<td>"+data[i].TRANSACTOR_STEP+"</td>";
        		    tr+="<td>"+flag(data[i].END_FLAG,data[i].STEP_FLAG,data[i].PASS_OR_NOT1,data[i].PASS_OR_NOT2)+"</td>";
        		    var filter_step=data[i].FILTER_ID+","+data[i].STEP_FLAG;
        		    if(data[i].STEP_FLAG==0 || data[i].STEP_FLAG==1){
        		    tr+="<td>"+
        		    "<input type='button' id='"+data[i].FILTER_ID+"' value='修改' href='#filterUpdate_modal' data-toggle='modal' class='update btn btn-primary'>"+
        		    "<input type='button' id='"+data[i].FILTER_ID+"' value='删除' class='delete btn btn-primary'>"+
        		    "<input type='button' id='"+filter_step+"' value='面试'  data-toggle='modal' class='interview btn btn-primary'>"+
        		    "<input type='button' id='"+filter_step+"' value='详细信息'  data-toggle='modal' class='details btn btn-primary'></td>"; 
        		   }else{
        		    tr+="<td>"+
        		    "<input type='button' id='"+data[i].FILTER_ID+"' value='修改' href='#filterUpdate_modal' data-toggle='modal' class='update btn btn-primary' >"+
        		    "<input type='button' id='"+data[i].FILTER_ID+"' value='删除' class='delete btn btn-primary'>"+
        		    "<input type='button' id='"+filter_step+"' value='详细信息'  data-toggle='modal' class='details btn btn-primary'></td>"; 
        		    }
        		    tr+="</tr>";
        		     $("#filterSelect_tbody").append(tr); 
        	}}
 		}); 
	 }
			/* 根据ID查询 */
	$(function(){
				$("#filterSelect_tbody").on("click",".update",function(){
					var id=this.id;
					$.ajax({
						url:"filter/filterId",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
						    $("#filterId").val(data[0].FILTER_ID);
						    $("#planNo").val(data[0].PLAN_NO);
						    $("#planName").val(data[0].PLAN_NAME);
							$("#employeeName").val(data[0].EMPLOYEE_NAME);
							$("#position").val(data[0].positionName);
							$("#employeeMajor").val(data[0].EMPLOYEE_MAJOR);
							$("#employeePhone").val(data[0].EMPLOYEE_PHONE);
							$("#transactorStep").val(data[0].TRANSACTOR_STEP);
							$("#upstep").val(data[0].step);
							$("#upuid").val(data[0].NEXT_TRANSA_STEP);
							$("#upuname").val(data[0].next_step);
							$("#upstart").val(data[0].NEXT_DATE_TIME);
						}
					});
				})
			})
			/* 模态框修改 */
	   function filter_update(){
			var obj=$("#filterUpdate_form").serialize();
			alert(obj);
		    $.ajax({
		       url : "filter/filterUpdate",
        	   type : "post",
        	   data :obj,
	           dataType:'json',
        	   success : function(data) {
        	      filterSelect();
        	}
 		}); 
	 }
	  /*删除*/
	 $(function(){
				$("#filterSelect_tbody").on("click",".delete",function(){
					var id=this.id;
					$.ajax({
						url:"filter/filterDelete",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
						filterSelect();
						}
					});
				})
			})
			
			                                                                                      /* 筛选模态框操作 */
			
	 /*判断第几次筛选*/
	 $(function(){
				$("#filterSelect_tbody").on("click",".interview",function(){
					var id=this.id;
					var filter_Step= id.split(",");
					for(var i=0; i<filter_Step.length;i++){
        		      var filter_Id=filter_Step[0];
        		      var filterStep=filter_Step[1];
					 }
 					 /* 根据步骤编号判断第几次筛选*/
					if(filterStep==0){
					/*第一次筛选   查询人员信息（0），调用第一次模态框*/
					        $("#filterOne").val(filter_Id);/*添加id值*/
					        filter_SelectInfor(filter_Id);/*根据id查询第一次筛选信息*/
  	                        document.getElementById("filterOne_FilterForm").style.display='';
  	                        document.getElementById("filterTwo_FilterForm").style.display='none';
  	                        $('#filterOne_modal').modal('show');
  	                        
  	                }else if(filterStep==1){
  	                /*第二次筛选   查询人员信息(0) ，查询第一次筛选信息，并显示(a)，调用第二次筛选模态框*/
  	                        $("#filterTwo").val(filter_Id);
  	                        filter_SelectInfor(filter_Id);
  	                        filterOne_SelectInfor(filter_Id);
  	                        document.getElementById("filterOne_InforForm").style.display='';/* 显示第一次筛选信息 */
  	                        document.getElementById("filterOne_FilterForm").style.display='none';/* 隐藏第一次筛选 */
  	                        document.getElementById("filterTwo_FilterForm").style.display='';/* 显示第二次筛选 */
  	                        $('#filterOne_modal').modal('show');
  	                }
				})
			})
			/*详细信息 details*/
			 $(function(){
				$("#filterSelect_tbody").on("click",".details",function(){
					var id=this.id;
					var filter_Step= id.split(",");
					for(var i=0; i<filter_Step.length;i++){
        		      var filter_Id=filter_Step[0];
        		      var filterStep=filter_Step[1];
					 }
 					 /* 根据步骤编号判断*/
					if(filterStep==0){
					/*第一次筛选   查询人员信息*/
					        filter_SelectInfor(filter_Id);
  	                        $('#filterOne_modal').modal('show');
  	                        document.getElementById("filterOne_FilterForm").style.display='none';
  	                        document.getElementById("filterTwo_FilterForm").style.display='none';
  	                        
  	                }else if(filterStep==1){
  	                        filter_SelectInfor(filter_Id);
  	                        filterOne_SelectInfor(filter_Id);
  	                        document.getElementById("filterOne_InforForm").style.display='';/* 显示第一次筛选信息 */
  	                        document.getElementById("filterOne_FilterForm").style.display='none';/* 隐藏第一次筛选 */
  	                        document.getElementById("filterTwo_FilterForm").style.display='none';/* 隐藏第二次筛选 */
  	                        $('#filterOne_modal').modal('show');
  	                }else if(filterStep==2){
  	                        filter_SelectInfor(filter_Id);
  	                        filterOne_SelectInfor(filter_Id);
  	                        filterTwo_SelectInfor(filter_Id);
  	                        document.getElementById("filterOne_InforForm").style.display='';/* 显示第一次筛选信息 */
  	                        document.getElementById("filterTwo_InforForm").style.display='';
  	                        document.getElementById("filterOne_FilterForm").style.display='none';/* 隐藏第一次筛选 */
  	                        document.getElementById("filterTwo_FilterForm").style.display='none';/* 隐藏第二次筛选 */
  	                        $('#filterOne_modal').modal('show');
  	                }
				})
			})
			
	/*  基本人员信息查询 */
	function filter_SelectInfor(filter_Id){
                   $.ajax({
						url:"filter/filterId",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(filter_Id),
						dataType: 'Json',
						success:function(data){
						$("#filter_Infor").html("");
				        $("#filterOne_Infor").html("");
				        $("#filterTwo_Infor").html("");
						    var tr="<tr>";
        		            tr+="<td>应聘者姓名：</td><td>"+data[0].EMPLOYEE_NAME+"</td><td>招聘计划：</td><td>"+data[0].PLAN_NAME+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>应聘岗位：</td><td>"+data[0].positionName+"</td><td>所学专业：</td><td>"+data[0].EMPLOYEE_MAJOR+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>联系电话：</td><td>"+data[0].EMPLOYEE_PHONE+"</td><td>发起人：</td><td>"+data[0].step+"</td>";        		            
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>下一步办理人：</td><td>"+data[0].next_step+"</td><td>下一步筛选时间：</td><td>"+data[0].NEXT_DATE_TIME+"</td>";
        		            tr+="</tr>";
        		            $("#filter_Infor").append(tr); 
						}
					});
	 }
	 

	/*第一次筛选信息添加*/
	 function filterOne_Update(){
             var obj=$("#filterOne_FilterForm").serialize();
		     $.ajax({
		       url : "filter/filterOneUpdate",
        	  type : "post",
        	   data :obj,
	           dataType:'text',
        	   success : function(data) {
        	     filterSelect();
        	} 
 		});
	 }
	 /*第二次筛选信息添加*/
	 function filterTwo_Update(){
             var obj=$("#filterTwo_FilterForm").serialize();
		     $.ajax({
		       url : "filter/filterTwoUpdate",
        	  type : "post",
        	   data :obj,
	           dataType:'text',
        	   success : function(data) {
        	     filterSelect();
        	} 
 		});
	 }
	/* 第一次筛选信息查询 */
	function filterOne_SelectInfor(filter_Id){
                   $.ajax({
						url:"filter/filterId",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(filter_Id),
						dataType: 'Json',
						success:function(data){
				           $("#filterOne_Infor").html("");
						    var tr="<tr>";
						    tr+="<td align='center' class='TableControl' colspan=4 nowrap><p>第一次筛选信息</p></td>";
        		            tr+="</tr>";
        		            tr+="<td>初选方式：</td><td>"+method(data[0].FILTER_METHOD1)+"</td><td>初选时间：</td><td>"+data[0].FILTER_DATE_TIME1+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>初选内容：</td><td>"+data[0].FIRST_CONTENT1+"</td><td>初选意见：</td><td>"+data[0].FIRST_VIEW1+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>初选办理人：</td><td>"+data[0].step1+"</td><td>初选是否通过：</td><td>"+passornot(data[0].PASS_OR_NOT1)+"</td>";        		            
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>初选下一步办理人：</td><td>"+data[0].next_step1+"</td><td>初选下步筛选时间：</td><td>"+data[0].NEXT_DATE_TIME1+"</td>";
        		            tr+="</tr>";
        		            $("#filterOne_Infor").append(tr); 
						}
					});
	 }
	  
	  	/* 第二次筛选信息查询 */
	function filterTwo_SelectInfor(filter_Id){
                   $.ajax({
						url:"filter/filterId",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(filter_Id),
						dataType: 'Json',
						success:function(data){
				           $("#filterTwo_Infor").html("");
						    var tr="<tr>";
						    tr+="<td><p>第二次筛选信息</p></td>";
        		            tr+="</tr>";
        		            tr+="<td>复选方式：</td><td>"+method(data[0].FILTER_METHOD2)+"</td><td>复选时间：</td><td>"+data[0].FILTER_DATE_TIME2+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>复选内容：</td><td>"+data[0].FIRST_CONTENT2+"</td><td>复选意见：</td><td>"+data[0].FIRST_VIEW2+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>复选办理人：</td><td>"+data[0].step2+"</td><td>复选是否通过：</td><td>"+passornot(data[0].PASS_OR_NOT2)+"</td>";        		            
        		            tr+="</tr>";
        		            $("#filterTwo_Infor").append(tr); 
						}
					});
	 }
	  
	 function flag(edg,step,one,two){
	   if(edg==0){
	     return "待筛选";
	   }else{
	      if(step==1){
	        if(one==1){
	          return "已通过";
	        }else {
	          return "未通过";
	        }
	      }else if(step==2){
	        if(two==1){
	           return "已通过";
	         }else {
	          return "未通过";
	         }
	      }
	   }
	 }
	 /* 修改选办理人 */
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
				$("#upuid").val(uid);
			    $("#upuname").val(uname); 
				})
			})
			/* 筛选办理人 */
	 $('#user1_modal').on('show.bs.modal', function () {
        $.ajax({
        	url : "users/usersname",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
        	dataType : 'json', 
        	success : function(data) {
           		$("#user1Name").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    var user=data[i].id+","+data[i].uname;
        		    tr+="<td><button type='button' id='"+user+"' class='insert btn btn-default' data-dismiss='modal'>'"+data[i].uname+"'</button></td>";
        		    tr+="</tr>";
        		     $("#user1Name").append(tr); 
        	}}
 		}); 
     })
	$(function(){
				$("#user1Name").on("click",".insert",function(){
				    var user=this.id;
					var users= user.split(",");
					for(var i=0; i<users.length;i++){
        		      var uid=users[0];
        		      var uname=users[1];
					}
				$("#uid1").val(uid);
			    $("#uname1").val(uname); 
				})
			})
			
	 function empty(none){
            if (none==0) {
                $("#uid").val("");
                $("#uname").val("");
            }else if(none==1){
                $("#uid1").val("");
                $("#uname1").val("");
            }
	 }
	 /*判断筛选方式*/
	 function method(meth){
            if (meth==1) {
                return "笔试";
            }else if(meth==2){
                return "面试";
            }
	 }
	  /*判断是否通过*/
	function passornot(pass){
            if (pass==1) {
                return "通过";
            }else if(pass==2){
                return "未通过";
            }
	 }
	 
	                                                                    /* 按钮 */
	 /* 结束筛选判断按钮 */
	function filterClose_One(end,step){
	       if(step==1){
	          if (end==1)
	       {/* 继续筛选 */
		       $("#endFlag1").val(1);
		       filterOne_Update();
	       }else{/* 结束筛选 */
		       $("#endFlag1").val(2);
		       filterOne_Update();
           } 
	       }else if(step==2){
	           if (end==1)
	       {/* 继续筛选 */
		       $("#endFlag2").val(1);
		       filterTwo_Update();
	       }else{/* 结束筛选 */
		       $("#endFlag2").val(2);
		       filterTwo_Update();
           }}
           }
	/* 显示隐藏按钮 */
	function next_play(end){
	  /*模态框二*/
	 if(end==1){
	  if(document.getElementById("passOrNot1").value==0)
			{
			   document.getElementById("next1").style.display='none';
  			   document.getElementById("filterOne_next").style.display='none';
		}
			else
			{
				document.getElementById("next1").style.display='';
 				document.getElementById("filterOne_next").style.display='';
	    }}else if(end==2){
	    /*模态框二*/
	    if(document.getElementById("passOrNot2").value==0)
			{
			   document.getElementById("next2").style.display='none';
  			   document.getElementById("filterTwo_next").style.display='none';
		}
			else
			{
				document.getElementById("next2").style.display='';
 				 document.getElementById("filterTwo_next").style.display='';
	    }
	}}
	var upstart = {};
    jeDate('#upstart',{
       format: 'YYYY-MM-DD hh:mm:ss',
            minDate: function (that) {
                //that 指向实例对象
                var nowMinDate = jeDate.valText('#upstart') == "" && jeDate.valText(that.valCell) == "";
                return nowMinDate ? jeDate.nowDate({DD:0}) : end.minDate ;
            }, //设定最大日期为当前日期
    });
      //蓝色主题色
    jeDate("#upstart",{
        theme:{ bgcolor:"#00A1CB",color:"#ffffff", pnColor:"#00CCFF"},
        format: "YYYY-MM-DD hh:mm:ss"
    });
var start1 = {};
    jeDate('#start1',{
       format: 'YYYY-MM-DD hh:mm:ss',
            minDate: function (that) {
                //that 指向实例对象
                var nowMinDate1 = jeDate.valText('#start1') == "" && jeDate.valText(that.valCell) == "";
                return nowMinDate1 ? jeDate.nowDate({DD:0}) : end.minDate ;
            }, //设定最大日期为当前日期
    });
      //蓝色主题色
    jeDate("#start1",{
        theme:{ bgcolor:"#00A1CB",color:"#ffffff", pnColor:"#00CCFF"},
        format: "YYYY-MM-DD hh:mm:ss"
    });
    var start2 = {};
    jeDate('#start2',{
       format: 'YYYY-MM-DD hh:mm:ss',
            minDate: function (that) {
                //that 指向实例对象
                var nowMinDate2 = jeDate.valText('#start2') == "" && jeDate.valText(that.valCell) == "";
                return nowMinDate2 ? jeDate.nowDate({DD:0}) : end.minDate ;
            }, //设定最大日期为当前日期
    });
      //蓝色主题色
    jeDate("#start2",{
        theme:{ bgcolor:"#00A1CB",color:"#ffffff", pnColor:"#00CCFF"},
        format: "YYYY-MM-DD hh:mm:ss"
    });
    var start3 = {};
    jeDate('#start3',{
       format: 'YYYY-MM-DD hh:mm:ss',
            minDate: function (that) {
                //that 指向实例对象
                var nowMinDate3 = jeDate.valText('#start3') == "" && jeDate.valText(that.valCell) == "";
                return nowMinDate3 ? jeDate.nowDate({DD:0}) : end.minDate ;
            }, //设定最大日期为当前日期
    });
      //蓝色主题色
    jeDate("#start3",{
        theme:{ bgcolor:"#00A1CB",color:"#ffffff", pnColor:"#00CCFF"},
        format: "YYYY-MM-DD hh:mm:ss"
    });
</script>