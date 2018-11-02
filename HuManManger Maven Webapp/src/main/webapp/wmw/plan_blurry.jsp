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
</head>
<body>
	 <p>招聘计划审批</p>
     <ul class="nav nav-tabs">
     <li class="active"><a href="/HuManManger/wmw/plan_blurry.jsp">审批招聘计划</a></li>
	  <li><a onclick="queryzero()">未办理</a></li>
	  <li><a onclick="queryone()">已批准</a></li>
	  <li><a onclick="querytwo()">未批准</a></li>
    </ul>
    <!-- 状态 -->
<!-- 招聘计划查询 -->
	<table class="table table-condensed">
		<tr>
			<td>计划编号</td>
			<td>计划名称</td>
			<td>招聘人数</td>
			<td>开始日期</td>
			<td>结束日期</td>
			<td>用工日期</td>
			<td>计划状态</td>
			<td>操作</td>
		</tr>
		<tbody id="plan_status"></tbody>
	</table>
</body>
</html>
<script>
 $(function(){
	    queryzero();
	 })
function queryzero(){
        var id=0;
		$.ajax({
        	url : "plan/querystatus",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
        	data:JSON.stringify(id),
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
        		    tr+="<td>"+status(data[i].PLAN_STATUS)+"</td>";
        		    tr+="<td><input type='button' id='"+data[i].PLAN_NO+"' value='批准' class='one'><input type='button' id='"+data[i].PLAN_NO+"' value='不批准' class='two'></td>"; 
        		    tr+="</tr>";
        		     $("#plan_status").append(tr); 
        	}}
 		}); 
	 }
	 function status(PLAN_STATUS){
  	   if(PLAN_STATUS==0){
  	       return '待批准';
  	   }else if(PLAN_STATUS==1){
  	       return '批准';
  	   }else if(PLAN_STATUS==2){
  	       return '未批准';
  	   }
  	}
	 
	 $(function(){
	    queryzero();
	 })
	 /* 根据ID修改 */
	$(function(){
				$("#plan_status").on("click",".one",function(){
					var id=this.id;
					$.ajax({
						url:"plan/oneupdate",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
						queryzero();
						}
					});
				})
			})
			$(function(){
				$("#plan_status").on("click",".two",function(){
					var id=this.id;
					$.ajax({
						url:"plan/twoupdate",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
						queryzero();
						}
					});
				})
			})
			
			function queryone(){
        var id=1;
		$.ajax({
        	url : "plan/querystatus",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
        	data:JSON.stringify(id),
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
        		    tr+="<td>"+status(data[i].PLAN_STATUS)+"</td>";
        		    tr+="<td><input type='button' id='"+data[i].PLAN_NO+"' value='不批准' class='two'></td>"; 
        		    tr+="</tr>";
        		     $("#plan_status").append(tr); 
        	}}
 		}); 
	 }
	 function querytwo(){
        var id=2;
		$.ajax({
        	url : "plan/querystatus",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
        	data:JSON.stringify(id),
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
        		    tr+="<td>"+status(data[i].PLAN_STATUS)+"</td>";
        		    tr+="<td><input type='button' id='"+data[i].PLAN_NO+"' value='批准' class='one'></td>"; 
        		    tr+="</tr>";
        		     $("#plan_status").append(tr); 
        	}}
 		}); 
	 }
	 
</script>






