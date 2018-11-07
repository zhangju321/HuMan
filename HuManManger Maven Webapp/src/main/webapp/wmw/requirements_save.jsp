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
    <p>招聘需求</p>
     <ul class="nav nav-tabs">
	  <li><a href="/HuManManger/wmw/requirements_select.jsp">招聘需求管理</a></li>
	  <li class="active"><a href="/HuManManger/wmw/requirements_save.jsp">创建招聘需求</a></li>
	  <li><a href="/HuManManger/wmw/requirements_select.jsp">招聘需求查询</a></li>
    </ul>
<!-- 添加招聘需求-->
<form method="post"  id="requsave">
<table class="Table" width="60%" align="center">
<tr align="center" class="TableControl">
      <td colspan=4 nowrap>
        <p>创建招聘需求</p>
      </td>
    </tr>
   <tr>
      <td nowrap class="col-md-1 control-label" style="width: 10%">计划名称:</td>
      <td class="TableData" style="width: 20%">
         <input type="hidden" id="planName"  class="form-control" >
         <input type="text" id="planNo"  name="planNo" class="form-control" >
      </td>
      <td nowrap class="col-md-4 control-label" style="width: 20%">需求部门:</td>
      <td class="TableData" style="width: 20%">
        <INPUT type="text" name="requDept" class="form-control"  >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label" style="width: 20%">需求岗位:</td>
      <td class="TableData">
         <INPUT type="text" name="requJob" class="form-control"   >
      </td>
      <td nowrap class="col-md-2 control-label">需求人数:</td>
      <td class="TableData">
        <input type="text"name="requNum" class="form-control" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">岗位要求:</td>
      <td class="TableData">
         <input type="text" name="requRequires" class="form-control" >
      </td>
      <td nowrap class="col-md-2 control-label">用工日期:</td>
      <td class="TableData">
        <input type="date"name="requTime" class="form-control"  >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">申请人:</td>
      <td class="TableData">
         <input type="text" name="petitioner" class="form-control" >
      </td>
      <td nowrap class="col-md-2 control-label">备注:</td>
      <td class="TableData">
        <input type="text"name="remark" class="form-control" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">附件名称:</td>
      <td class="TableData">
         <input type="text" name="attachmentName" class="form-control" >
      </td>
   </tr>
    <tr align="center" class="TableControl">
      <td colspan=4 nowrap>
        <input type="button" class="btn btn-default" value="添加"  onclick="requ_save()">
      </td>
    </tr>
  </table>
</form>
  </body>
</html>
<script>
    function requ_save(){
			var obj=$("#requsave").serialize();
			alert(obj);
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
  </script>
  
