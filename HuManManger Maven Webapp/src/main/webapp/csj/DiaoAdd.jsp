<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'DiaoAdd.jsp' starting page</title>
    
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
  <form method="post" id="Savetransfer">
		<table class="Table" width="50%" align="center" >
			<tr align="center" class="TableControl">
				<td colspan=4 nowrap>
					<p>新建人事调动信息</p>
				</td>
			</tr>
			<!-- <tr>
				
				<td class="TableData" style="width: 20%">
				    <input type="hidden"name="TRANSFER_ID"class="form-control">
				</td> -->
			</tr> 
			<tr>
				<td nowrap class="col-md-2 control-label" style="width: 10%">调动人员:</td>
				<td class="TableData" style="width: 20%">
					<input type="text" name="sta_staff_Id"  class="form-control">
				    <!-- <input type="text" id="staffName" class="form-control"> -->
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">调动类型:</td>
				<td class="TableData" style="width: 20%">
				     <select class="sele form-control" name="TRANSFER_TYPE">
        	                              <option value="1">晋升</option>
        	                              <option value="2">降级</option>
        	                              <option value="3">平调</option>
        	                            </select>

      </td>
			</tr>
			<tr>
				<td nowrap class="col-md-1 control-label" style="width: 10%">调动日期:</td>
				<td class="TableData" style="width: 20%">
				   <input type="date"name="TRANSFER_DATE" class="form-control">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">调动生效日期:</td>
				<td class="TableData" style="width: 20%">
				    <input type="date"name="TRANSFER_EFFECTIVE_DATE" class="form-control">
				</td>
			</tr>
			<tr>
				<td nowrap class="col-md-1 control-label" style="width: 10%">调动前部门:</td>
				<td class="TableData" style="width: 20%">
				<!--  <input type="text"name="DIAOQIAN"  class="form-control"> -->
				 <input type="text" id="DIAOQIAN" name="DIAOQIAN">
		          <input type="button"  href="#qian_modal" value="添加" data-toggle='modal' >
				   
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">调动后部门:</td>
				<td class="TableData" style="width: 20%">
				<!-- <input type="text"name="DIAOHOU"  class="form-control"> -->
				 <input type="text" id="DIAOHOU" name="DIAOHOU">
		          <input type="button"  href="#hou_modal" value="添加" data-toggle='modal' >
				</td>
			</tr>
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">调动手续办理:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="MATERIALS_CONDITION"  class="form-control">
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">附件上传:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="ATTACHMENT_NAME"  class="form-control">
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 10%">调动原因:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="TRAN_REASON"  class="form-control">
				</td>
			</tr> 
			<tr>
				<td class="TableData" style="width: 20%">
				    <input type="hidden"name="ADD_TIME" id="ADD_TIME" class="form-control">
				</td>
			</tr> 
			<tr align="center" class="TableControl">
      <td colspan=4 nowrap>
        <input type="button" class="btn btn-default" value="添加"  onclick="Save_transfer()">
		</table>
	</form>
	<!-- 前部门 模态框 -->
<div class="modal fade" id="qian_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">招聘部门</h4>
				</div>
				<div class="modal-body">
				<form method="post" >
					<table class="table table-bordered" width="60%" align="center">
					      <tbody id="qianName"></tbody>
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
   <!--后 部门 模态框 -->
<div class="modal fade" id="hou_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">招聘部门</h4>
				</div>
				<div class="modal-body">
				<form method="post" >
					<table class="table table-bordered" width="60%" align="center">
					      <tbody id="houName"></tbody>
				    </table>
               </form>
			</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-default"data-dismiss="modal"  onclick="empty(2)">清空</button>
			<button type="button" class="btn btn-default"data-dismiss="modal">关闭</button>
		</div>
		</div>
      </div>
   </div>
  </body>
</html>
<script>
	 function Save_transfer(){
	  var date = new Date();
            var year = date.getFullYear();
            var month = date.getMonth() + 1;
            var day = date.getDate();
            if (month < 10) {
                month = "0" + month;
            }
            if (day < 10) {
               day = "0" + day;
            }
            var MyDate = year + "-" + month + "-" + day;
              $("#ADD_TIME").val(MyDate);
			var obj=$("#Savetransfer").serialize();
			alert(obj);
		    $.ajax({
		       url : "stfer/savetransfer",
        	   type : "post",
        	   data :obj,
	           dataType:'json',
        	   success : function(data) {
        	      alert("创建成功");
        	}
 		}); 
	 }
	 /* 部门查询 */
     $('#qian_modal').on('show.bs.modal', function () {
        $.ajax({
        	url : "stfer/queryDe",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
       	 	dataType : 'json', 
        	success : function(data) {
           		$("#qianName").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    var depart=data[i].departmentId+","+data[i].departmentName;
        		    tr+="<td><button type='button' id='"+depart+"' class='insert btn btn-default' data-dismiss='modal'>'"+data[i].departmentName+"'</button></td>";
        		    tr+="</tr>";
        		     $("#qianName").append(tr); 
        	}}
 		}); 
     })
			   $(function(){
				$("#qianName").on("click",".insert",function(){
				    var name=this.id;
					var depart= name.split(",");
					for(var i=0; i<depart.length;i++){
        		      var depart_Id=depart[0];
        		      var depart_name=depart[1];
					}
				/* 清空下面两个框的值 */
           		/*赋值*/
			    $("#DIAOQIAN").val(depart_name); 
				})
			})          
			
				 /* 部门查询 */
     $('#hou_modal').on('show.bs.modal', function () {
        $.ajax({
        	url : "stfer/queryDe",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
       	 	dataType : 'json', 
        	success : function(data) {
           		$("#houName").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    var depart=data[i].departmentId+","+data[i].departmentName;
        		    tr+="<td><button type='button' id='"+depart+"' class='insert btn btn-default' data-dismiss='modal'>'"+data[i].departmentName+"'</button></td>";
        		    tr+="</tr>";
        		     $("#houName").append(tr); 
        	}}
 		}); 
     })
			   $(function(){
				$("#houName").on("click",".insert",function(){
				    var name=this.id;
					var depart= name.split(",");
					for(var i=0; i<depart.length;i++){
        		      var depart_Id=depart[0];
        		      var depart_name=depart[1];
					}
				/* 清空下面两个框的值 */
           		/*赋值*/
           		
			    $("#DIAOHOU").val(depart_name); 
				})
			})     
			
			   /* 清空 */
	function empty(none){
            if (none==1) {
                $("#DIAOQIAN").val("");
            }else if(none==2){
                $("#DIAOHOU").val("");
            }
	 }                
</script>