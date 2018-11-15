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

<title>已审批招聘计划</title>

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
     <li ><a href="/HuManManger/wmw/plan_zero.jsp">待审批招聘计划</a></li>
     <li class="active"><a href="/HuManManger/wmw/plan_one.jsp">已批准招聘计划</a></li>
     <li ><a href="/HuManManger/wmw/plan_two.jsp">未批准招聘计划</a></li>
    </ul>
    <!-- 状态 -->
<!-- 招聘计划查询 -->
<div style="width:98%;margin:0 auto;">
<p></p>
	<table class="table table-bordered">
		<tr>
			<td style="width:4%;">计划编号</td>
			<td style="width:5%;">计划名称</td>
			<td style="width:5%;">招聘人数</td>
			<td style="width:5%;">开始日期</td>
			<td style="width:5%;">结束日期</td>
			<td style="width:5%;">用工日期</td>
			<td style="width:5%;">计划状态</td>
			<td style="width:8%;">操作</td>
		</tr>
		<tbody id="plan_status"></tbody>
	</table>
</div>
<!-- 详细信息 模态框-->
   <div class="modal fade" id="one_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" >详细信息</h4>
				</div>
				<div class="modal-body">
				<form method="post" >
					<table class="table table-bordered" width="60%" align="center">
						<tbody id="one_details"></tbody>
				    </table>
               </form>
			</div>
        <div class="modal-footer">
			<button type="button" class="btn btn-default"data-dismiss="modal">关闭</button>
		</div>
		</div>
      </div>
   </div>
   <!-- 修改状态 -->
     <div class="modal fade" id="approval_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	 <div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" >审批</h4>
				</div>
				<div class="modal-body">
				<form method="post" id="from_approval">
					<table class="table table-bordered" width="60%" align="center">
						<tbody id="zero_approval"></tbody>
						<tr>
						  <td>审批意见</td>
						  <td  colspan=3>
						  <input type="hidden" id="planNo"  name="planNo">
				          <input type="hidden" id="approveDate"  name="approveDate">
				          <input type="hidden" name="planStatus" id="planStatus" >
						  <textarea class="form-control" name="approveComment" id="approveComment"></textarea>
						  </td>
						</tr>
				    </table>
               </form>
			</div>
        <div class="modal-footer">
			<button type="button" class="btn btn-default"data-dismiss="modal"  onclick="statusUpdate(2)">不批准</button>
		</div>
		</div>
      </div>
   </div>
</body>
</html>
<script>
 $(function(){
	    queryone();
	 })
   function queryone(){
        var uid=${user.id};
        var status=1;
		$.ajax({
        	url : "plan/querystatus",
        	type : "post",
        	async : true,
        	data:{"id":uid,"planStatus":status},
       	 	dataType : 'json', 
        	success : function(data) {
        		$("#plan_status").html("");
        		  for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    tr+="<td>"+data[i].PLAN_NO+"</td>";
        		    tr+="<td>"+data[i].PLAN_NAME+"</td>";
        		    tr+="<td>"+data[i].PLAN_RECR_NO+"</td>";
        		    tr+="<td>"+data[i].START_DATE+"</td>";
        		    tr+="<td>"+data[i].END_DATE+"</td>";
        		    tr+="<td>"+data[i].WORK_DATE+"</td>"; 
        		    tr+="<td>已批准</td>";
        		    tr+="<td><input type='button' id='"+data[i].PLAN_NO+"' value='详细信息' href='#one_modal' data-toggle='modal'  class='details btn btn-primary'>"+
        		    "<input type='button' id='"+data[i].PLAN_NO+"' value='不批准' href='#approval_modal' data-toggle='modal'  class='approval btn btn-primary'></td>"; 
        		    tr+="</tr>";
        		     $("#plan_status").append(tr); 
        	}}
 		}); 
	 }
	  /* 详细信息 */
	$(function(){
				$("#plan_status").on("click",".details",function(){
					var planNo=this.id;
					$.ajax({
                    url : "plan/queryId",
        	        type : "post",
        	        async : true,
        	        contentType:"application/json;charset=utf-8",
					data:JSON.stringify(planNo),
       	         	dataType : 'json', 
                 	success : function(data) {
        		           $("#one_details").html("");
                           var tr="<tr >";
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
        		            tr+="<td>计划状态：</td><td>"+planStatus(data[0].PLAN_STATUS)+"</td><td>创建时间：</td><td>"+data[0].REGISTER_TIME+"</td>";
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
        		            tr+="<td>审批人：</td><td>"+data[0].uname+"</td><td>审批时间：</td><td>"+data[0].APPROVE_DATE+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>审批意见：</td><td>"+data[0].APPROVE_COMMENT+"</td>";
        		            tr+="</tr>";
        		            $("#one_details").append(tr); 
						}
					});
				})
			})
			 /* 判断状态 */
	 function planStatus(PLAN_STATUS){
  	   if(PLAN_STATUS==0){
  	       return '待批准';
  	   }else if(PLAN_STATUS==1){
  	       return '已批准';
  	   }else if(PLAN_STATUS==2){
  	       return '未批准';
  	   }
  	}
	 /* 招聘渠道 */
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
  	  /*审批查询*/
  	  $(function(){
				$("#plan_status").on("click",".approval",function(){
					var planNo=this.id;
					$.ajax({
                    url : "plan/queryId",
        	        type : "post",
        	        async : true,
        	        contentType:"application/json;charset=utf-8",
					data:JSON.stringify(planNo),
       	         	dataType : 'json', 
                 	success : function(data) {
        		           $("#zero_approval").html("");
        		           $("#planNo").val(data[0].PLAN_NO);
                           var tr="<tr >";
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
        		            $("#approveComment").val(data[0].APPROVE_COMMENT);
        		            $("#zero_approval").append(tr); 
						}
					});
				})
			})
  	  /*修改状态*/
			function statusUpdate(status){
			        var now = new Date();
	             var year = now.getFullYear(); //得到年份
	             var month = now.getMonth();//得到月份
            	 var date = now.getDate();//得到日期
	             var hour = now.getHours();//得到小时
	             var minu = now.getMinutes();//得到分钟
	             var sec = now.getSeconds();//得到秒
	             month = month + 1;
	             if (month < 10) month = "0" + month;
	             if (date < 10) date = "0" + date;
	             if (hour < 10) hour = "0" + hour;
	             if (minu < 10) minu = "0" + minu;
	             if (sec < 10) sec = "0" + sec;
	             var  MyDate= year +"-"+month +"-"+date +" "+hour+":"+minu+":"+sec;
			        $("#approveDate").val(MyDate);
			        $("#planStatus").val(status);
					var obj=$("#from_approval").serialize();
					$.ajax({
						url:"plan/statusUpdate",
						type:"post",
						async:true,
						data:obj,
						dataType: 'Json',
						success:function(data){
						  queryone();
						}
					});
				}
</script>
