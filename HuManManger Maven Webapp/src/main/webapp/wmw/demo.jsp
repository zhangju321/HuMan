<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'demo.jsp' starting page</title>
    
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
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#selectFilterName">开始演示模态框</button>
    <!-- 模态框（Modal） -->
<div class="modal fade" id="selectFilterName" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
            </div>
            <div class="modal-body">
                <table>
                   <tbody id="filterName"></tbody>
                </table>
            </div>
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
    $('#selectFilterName').on('show.bs.modal', function () {
        $.ajax({
        	url : "recru/QueryFilter",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
       	 	dataType : 'json', 
        	success : function(data) {
           		$("#selectFilterName").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    tr+="<td >"+data[i].EMPLOYEE_NAME+"</td>";
        		    tr+="</tr>";
        		     $("#selectFilterName").append(tr); 
        	}}
 		}); 
     })
</script>