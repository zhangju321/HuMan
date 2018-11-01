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
    <script	src="${pageContext.request.contextPath}/resources/bootstrap/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css">

  </head>
  
  <body>
  <p>人才筛选</p>
      <ul class="nav nav-tabs">
	  <li><a href="/HuManManger/wmw/filter_select.jsp">人才筛选管理</a></li>
	  <li class="active"><a href="/HuManManger/wmw/filter_save.jsp">创建筛选计划</a></li>
	  <li><a href="/HuManManger/wmw/filter_select.jsp">人才筛选查询</a></li>
    </ul>
	<!-- 添加招聘筛选 -->
<div style="width:1000px" class="col-md-4 control-label">
	<form method="post" id="filter_form">
		<table class="Table" width="50%" align="center" >
			<tr align="center" class="TableControl">
				<td colspan=4 nowrap>
					<p>创建招聘筛选</p>
				</td>
			</tr>
			<tr>
				<td nowrap class="col-md-2 control-label" style="width: 10%">计划名称:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="planNo" id="planNo" class="form-control">
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">应聘人员:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="employeeName" id="employeeName"  class="form-control">
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
				    <input type="text"name="transactorStep"  id="transactorStep" class="form-control">
				</td>
			</tr>
			<tr>
				   <input type="hidden"name="stepFlag" id="stepFlag" class="form-control" value="0">
				   <input type="hidden"name="endFlag" id="endFlag" class="form-control" value="0">
			</tr>
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">下一次筛选人员:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="nextTransaStep"  id="nextTransaStep"  class="form-control">
				</td>
				<td nowrap class="col-md-1 control-label" style="width: 10%">下一次筛选时间:</td>
				<td class="TableData" style="width: 20%">
				   <input type="date"name="nextDateTime" id="nextDateTime"  class="form-control">
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
</body>
</html>

<script>
     function filtersave(){
             var obj=$("#filter_form").serialize();
		     $.ajax({
		       url : "filter/filtersave",
        	   type : "post",
        	   data :obj,
	           dataType:'text',
        	   success : function(data) {
        	      alert("创建筛选成功");
        	}  
 		}); 
	 }
  </script>
