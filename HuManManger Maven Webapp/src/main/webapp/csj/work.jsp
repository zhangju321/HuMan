<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'work.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

  </head>
  
  <body>
    	<div  style="width:1300px">
	<table class="table table-condensed">
		<tr>
			<td>登记编号</td>
			<td>员工姓名</td>
			<td>部门名称</td>
			<td>登记次序</td>
			<td>登记类型</td>
			<td>规定时间</td>
			<td>登记ip</td>
			<td>应出勤</td>
			<td>实出勤</td>
			<td>休</td>
			<td>旷工</td>
			<td>迟到</td>
			<td>上班未登记</td>
			<td>早退</td>
			<td>下班未登记</td>
			<td>上班时间</td>
			<td>下班时间</td>
		</tr>
		<tbody id="work_body"></tbody>
	</table>
</div>
  </body>
</html>
<script>
	$(function(){ 
			queryAll();
			
			
		})
		
		/* 查询全部 */
function queryAll(){
		$.ajax({
        	url : "work/queryAll",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
       	 	dataType : 'json', 
        	success : function(data) {
        		$("#work_body").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    tr+="<td>"+data[i].work_id+"</td>";
        		    tr+="<td>"+data[i].staffName+"</td>";
        		    tr+="<td>"+data[i].departmentName+"</td>";
        		    tr+="<td>"+data[i].register_order+"</td>";
        		    tr+="<td>"+data[i].register_type+"</td>";
        		    tr+="<td>"+data[i].set_time+"</td>";
        		    tr+="<td>"+data[i].register_ip+"</td>";
        		    tr+="<td>"+data[i].attendance_should+"</td>";
        		    tr+="<td>"+data[i].attendance_actual+"</td>";
        		    tr+="<td>"+data[i].rest+"</td>";
        		    tr+="<td>"+data[i].absenteeism+"</td>";
        		    tr+="<td>"+data[i].late+"</td>";
        		    tr+="<td>"+data[i].work_unregistered+"</td>";
        		    tr+="<td>"+data[i].early_retreat+"</td>";
        		    tr+="<td>"+data[i].work_off+"</td>";
        		    tr+="<td>"+data[i].work_time+"</td>";
        		    tr+="<td>"+data[i].work_offtime+"</td>";
        		    tr+="</tr>";
        		    $("#work_body").append(tr); 
        	}}
 		}); 
	 }
</script>
