<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>招聘筛选</title>
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
	  <li><a href="/HuManManger/wmw/filter_select.jsp">人才筛选管理</a></li>
	  <li class="active"><a href="/HuManManger/wmw/filter_save.jsp">创建筛选计划</a></li>
    </ul>
	<!-- 添加招聘筛选 -->
<div style="width:1000px" class="col-md-4 control-label">
<p></p>
	<form method="post" id="filter_form">
		<table class="table table-bordered" width="50%" align="center" >
			<tr align="center" class="TableControl">
				<td colspan=4 nowrap>
					<p>创建招聘筛选</p>
				</td>
			</tr>
			<tr>
			    <td nowrap class="col-md-4 control-label" style="width: 20%">应聘人员:</td>
				<td class="TableData" style="width: 20%">
                    <input type="text" id="employeeName" name="employeeName">
				    <input type="hidden"name="expertId" id="expertId"  class="form-control">
                    <input type="button"  href="#pool_modal" value="添加" data-toggle='modal' >
				</td>
				<td nowrap class="col-md-2 control-label" style="width: 10%">计划名称:</td>
				<td class="TableData" style="width: 20%">
				   <input type="hidden"name="planNo" id="planNo" class="form-control">
				   <input type="text" id="planName" class="form-control">
				</td>
			</tr>
			<tr>
				<td nowrap class="col-md-1 control-label" style="width: 10%">应聘岗位:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="position" id="position" class="form-control">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">所学专业:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="employeeMajor" id="employeeMajor" class="form-control">
				</td>
			</tr>
			<tr>
				<td nowrap class="col-md-1 control-label" style="width: 10%">联系电话:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="employeePhone"  id="employeePhone" class="form-control">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">发起人:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"class="form-control" value="${user.uname}">
				    <input type="hidden"name="transactorStep" id="transactorStep" value="${user.id}">
				</td>
			</tr>
			<tr>
				   <input type="hidden"name="stepFlag" id="stepFlag" class="form-control" value="0">
				   <input type="hidden"name="endFlag" id="endFlag" class="form-control" value="0">
			</tr>
			<tr>
				    <td>下一次筛选人员:</td>
                    <td>
                    <input type="text"   id="uname" readonly="readonly">
                    <input type="hidden"  name="nextTransaStep" id="uid">
                    <input type="button"  href="#user_modal" value="添加" data-toggle='modal'  >
               </td>
				<td nowrap class="col-md-1 control-label" style="width: 10%">下一次筛选时间:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text" name="nextDateTime" id="start" required placeholder="请选择下一次筛选时间" class="form-control"/>
				</td>
			</tr> 
			<tr align="center" class="TableControl">
               <td colspan=4 nowrap>
                  <input type="button" class="btn btn-default" value="添加"  onclick="filtersave()">
               </td>
            </tr>
		</table>
	</form>
 </div>
 
 <!-- 未筛选人员 模态框 -->
<div class="modal fade" id="pool_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">招聘部门</h4>
				</div>
				<div class="modal-body">
				<form method="post" >
					<table class="table table-bordered" width="60%" align="center">
					      <tbody id="poolName"></tbody>
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
      /* 面试人员查询 */
     $('#pool_modal').on('show.bs.modal', function () {
        $.ajax({
        	url : "filter/selectpool",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
       	 	dataType : 'json', 
        	success : function(data) {
           		$("#poolName").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    var pool=data[i].EXPERT_ID+","+data[i].EMPLOYEE_NAME+","+data[i].PLAN_NO
        		    +","+data[i].PLAN_NAME+","+data[i].POSITION+","+data[i].EMPLOYEE_MAJOR
        		    +","+data[i].EMPLOYEE_PHONE;
        		    tr+="<td><button type='button' id='"+pool+"' class='insert btn btn-default' data-dismiss='modal'>'"+data[i].EMPLOYEE_NAME+"'</button></td>";
        		    tr+="</tr>";
        		     $("#poolName").append(tr); 
        	}}
 		}); 
     })
	$(function(){
				$("#poolName").on("click",".insert",function(){
				    var pool=this.id;
					var pool= pool.split(",");
					for(var i=0; i<pool.length;i++){
        		      var expertId=pool[0];
        		      var employeeName=pool[1];
        		      var planNo=pool[2];
        		      var planName=pool[3];
        		      var position=pool[4];
        		      var employeeMajor=pool[5];
        		      var employeePhone=pool[6];
					}
           		/*赋值*/
				$("#expertId").val(expertId);
			    $("#employeeName").val(employeeName); 
			    $("#planNo").val(planNo);
			    $("#planName").val(planName); 
			    $("#position").val(position);
			    $("#employeeMajor").val(employeeMajor); 
			    $("#employeePhone").val(employeePhone);
				})
			}) 
		/* 清空 */
		function empty(none){
            if (none==1) {
                $("#expertId").val("");
			    $("#employeeName").val(""); 
			    $("#planNo").val("");
			    $("#planName").val(""); 
			    $("#position").val("");
			    $("#employeeMajor").val(""); 
			    $("#employeePhone").val("");
            }else if(none==0){
                $("#uname").val("");
            }
	 }
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

     function filtersave(){
             var obj=$("#filter_form").serialize();
		     $.ajax({
		       url : "filter/filtersave",
        	   type : "post",
        	   data :obj,
	           dataType:'text',
        	   success : function(data) {
        	      alert("创建筛选成功");
        	      location.href="wmw/filter_select.jsp";
        	}  
 		}); 
	 }
	 var start = {};
    jeDate('#start',{
       format: 'YYYY-MM-DD hh:mm:ss',
            minDate: function (that) {
                //that 指向实例对象
                var nowMinDate = jeDate.valText('#start') == "" && jeDate.valText(that.valCell) == "";
                return nowMinDate ? jeDate.nowDate({DD:0}) : end.minDate ;
            }, //设定最大日期为当前日期
        donefun: function(obj){
            end.minDate = obj.val; //开始日选好后，重置结束日的最小日期
        }
    });
      //蓝色主题色
    jeDate("#start",{
        theme:{ bgcolor:"#00A1CB",color:"#ffffff", pnColor:"#00CCFF"},
        format: "YYYY-MM-DD hh:mm:ss"
    });
  </script>