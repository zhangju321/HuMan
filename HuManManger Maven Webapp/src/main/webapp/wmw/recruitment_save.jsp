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

<title>招聘录用</title>
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
	 <p>招聘录用</p>
     <ul class="nav nav-tabs">
	  <li class="active"><a href="/HuManManger/wmw/recruitment_select.jsp">招聘录用管理</a></li>
	  <li><a href="/HuManManger/wmw/recruitment_save.jsp">新建招聘录用</a></li>
	  <li><a href="/HuManManger/wmw/recruitment_select.jsp">招聘录用查询</a></li>
    </ul>

<!-- 添加招聘需求-->
<form method="post"  id="requsave">
<table class="Table" width="60%" align="center">
<tr align="center" class="TableControl">
      <td colspan=4 nowrap>
        <p>创建招聘录用</p>
      </td>
    </tr>
   <tr>
      <td nowrap class="TableData" style="width: 20%">录用者姓名:</td>
      <td class="TableData" style="width: 20%">
      <input type="text" name="planName" class=BigInput size="15"  readonly value="">
      <input type="hidden" name="EXPERT_ID" value="">
      <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#filter_Name">选择</button>
      <!-- onClick="filterName()" -->
    </td>
      <td nowrap class="col-md-4 control-label" style="width: 20%">计划名称:</td>
      <td class="TableData" style="width: 20%">
        <INPUT type="text" name="requDept" class="form-control" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label" style="width: 20%">录用部门:</td>
      <td class="TableData">
         <INPUT type="text" name="requJob" class="form-control"   >
      </td>
      <td nowrap class="col-md-2 control-label">录用岗位:</td>
      <td class="TableData">
        <input type="text"name="requNum" class="form-control" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">录用日期:</td>
      <td class="TableData">
         <input type="text" name="requRequires" class="form-control" >
      </td>
      <td nowrap class="col-md-2 control-label">员工类型:</td>
      <td class="TableData">
        <input type="date"name="requTime" class="form-control"  >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">用工日期:</td>
      <td class="TableData">
         <input type="text" name="petitioner" class="form-control" >
      </td>
      <td nowrap class="col-md-2 control-label">审批人:</td>
      <td class="TableData">
        <input type="text"name="remark" class="form-control" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">正式入职时间:</td>
      <td class="TableData">
        <input type="date"name="remark" class="form-control" >
      </td>
      <td nowrap class="col-md-2 control-label">正式起薪时间:</td>
      <td class="TableData">
         <input type="date" name="attachmentName" class="form-control" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">备注:</td>
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

<!-- 查询模态框 -->
		<!-- 模态框（Modal） -->
<div class="modal fade" id="filter_Name" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
            </div>
            <div class="modal-body">在这里添加一些文本</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
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
        	      alert("录用成功");
        	}
 		}); 
	 }
	 
	 function filterName(){
		    $.ajax({
		       url : "filter/filterName",
        	   type : "post",
        	   data :obj, 
	           dataType:'json',
        	   success : function(data) {
                   
        	   }
 		   }); 
	    }
  </script>
  
