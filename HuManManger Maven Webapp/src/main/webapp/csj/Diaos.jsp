<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Diaos.jsp' starting page</title>
    
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
  <a href="csj/DiaoAdd.jsp">新建人事调动</a>
   	<div  style="width:1300px">
	<table class="table table-condensed">
		<tr>
			<td>调动人员</td>
			<td>调动类型</td>
			<td>调动日期</td>
			<td>调动生效日期</td>
			<td>操作</td>
		</tr>
		<tbody id="transfer_tbody"></tbody>
	</table>
</div>
 <div class="modal fade" id="transferUpdate_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" style="width:700px">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel"></h4>
					</div>
		<div class="modal-body"> 
		<!-- 修改 -->
		<form method="post" id="Update_form">
		<table class="table table-bordered ><!-- class="Table" width="50%" align="center" --> 
			<tr align="center" class="TableControl">
				<td colspan=4 nowrap>
					<p></p>
				</td>
			</tr>
			<tr>
				
				<td class="TableData" style="width: 20%">
				    <input type="hidden"name="TRANSFER_ID"  id="TRANSFER_ID"  class="form-control">
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-2 control-label" style="width: 10%">调动人员:</td>
				<td class="TableData" style="width: 20%">
					<input type="hidden"name="sta_staff_Id" id="sta_staff_Id" class="form-control">
				    <input type="text" id="staffName" class="form-control">
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">调动类型:</td>
				<td class="TableData" style="width: 20%">
				     <select class="sele form-control" name="TRANSFER_TYPE" id="TransferType">
        	                              <option value="1">晋升</option>
        	                              <option value="2">降级</option>
        	                              <option value="3">平调</option>
        	                            </select>

      </td>
			</tr>
			<tr>
				<td nowrap class="col-md-1 control-label" style="width: 10%">调动日期:</td>
				<td class="TableData" style="width: 20%">
				   <input type="datetime"name="TRANSFER_DATE" id="TransfferDate" class="form-control">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">调动生效日期:</td>
				<td class="TableData" style="width: 20%">
				    <input type="datetime"name="TRANSFER_EFFECTIVE_DATE" id="ShengxiaoDate" class="form-control">
				</td>
			</tr>
			<tr>
				<td nowrap class="col-md-1 control-label" style="width: 10%">调动前部门:</td>
				 <td class="TableData" style="width: 20%">
		          <input type="text" id="DIAOQIAN" name="DIAOQIAN">
		          <input type="button"  href="#qian_modal" value="添加" data-toggle='modal' >
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">调动后部门:</td>
				<td class="TableData" style="width: 20%">
		          <input type="text" id="DIAOHOU" name="DIAOHOU">
		          <input type="button"  href="#hou_modal" value="添加" data-toggle='modal' >
				</td>
			</tr>
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">调动手续办理:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="MATERIALS_CONDITION"  id="MATERIALS_CONDITION"  class="form-control">
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">附件上传:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="ATTACHMENT_NAME"  id="ATTACHMENT_NAME"  class="form-control">
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 10%">调动原因:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="TRAN_REASON"  id="TRAN_REASON"  class="form-control">
				</td>
			</tr> 
			<tr>
				<td class="TableData" style="width: 20%">
				    <input type="hidden"name="LAST_UPDATE_TIME"  id="LAST_UPDATE_TIME"  class="form-control">
				</td>
			</tr> 
		</table>
	</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal"onclick="transfer_update()">修改</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
				</div>
			</div>
		</div>

<!-- 部门 模态框 -->
<div class="modal fade" id="qian_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">招聘部门</h4>
				</div>
				<div class="modal-body">
				<form method="post" >
					<table class="table table-bordered width="60%" align="center">
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
   <!-- 部门 模态框 -->
<div class="modal fade" id="hou_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">招聘部门</h4>
				</div>
				<div class="modal-body">
				<form method="post" >
					<table class="table table-bordered width="60%" align="center">
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
    <!-- 详细信息模态框 -->
   <div class="modal fade" id="details_modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">招聘计划详情</h4>
				</div>
				<div class="modal-body"  style="width:98%;margin:1 auto;">
				<form method="post" id="from_details">
					<table  class="table table-bordered">
			          <tbody id="plandetails" ></tbody>
				    </table>
               </form>
			</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-default"data-dismiss="modal">关闭</button>
		</div>
		</div>
      </div>
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
        	url : "stfer/queryAll",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
       	 	dataType : 'json', 
        	success : function(data) {
        		$("#transfer_tbody").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    tr+="<td>"+data[i].STAFF_NAME+"</td>";
        		    tr+="<td>"+ditch(data[i].TRANSFER_TYPE)+"</td>";
        		    tr+="<td>"+data[i].TRANSFER_DATE+"</td>";
        		    tr+="<td>"+data[i].TRANSFER_EFFECTIVE_DATE+"</td>";
        		    tr+="<td><input type='button' id='"+data[i].TRANSFER_ID+"' value='详细信息' href='#details_modal'  data-toggle='modal'  class='details btn btn-primary'></td>";
        		   	tr+="<td><input type='button' data-toggle='modal' data-target='#transferUpdate_modal'  id='"+data[i].TRANSFER_ID+"'   class='update  btn btn-default' value='修改'></td>";
        		   	tr+="<td><input type='button' id='"+data[i].TRANSFER_ID+"' value='删除' class='deleteTransfer btn btn-primary'></td>";
        		    tr+="</tr>";
        		    $("#transfer_tbody").append(tr); 
        	}}
 		}); 
	 }
	 /* 根据ID查询 */
	$(function(){
				$("#transfer_tbody").on("click",".update",function(){
					var id=this.id;
					$.ajax({
						url:"stfer/queryId",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
						    $("#TRANSFER_ID").val(data[0].TRANSFER_ID);
						    $("#sta_staff_Id").val(data[0].sta_staff_id);
						    $("#staffName").val(data[0].STAFF_NAME);
						    $("#TransferType").val(data[0].TRANSFER_TYPE);
							$("#TransfferDate").val(data[0].TRANSFER_DATE);
							$("#ShengxiaoDate").val(data[0].TRANSFER_EFFECTIVE_DATE);
							$("#DIAOQIAN").val(data[0].DIAOQIAN);
							$("#DIAOHOU").val(data[0].DIAOHOU);
							$("#MATERIALS_CONDITION").val(data[0].MATERIALS_CONDITION);
							$("#ATTACHMENT_NAME").val(data[0].ATTACHMENT_NAME);
							$("#TRAN_REASON").val(data[0].TRAN_REASON);
						}
					});
				})
			})
			/* 模态框修改 */
	   function transfer_update(){
	   var now=new Date();
	    var year = now.getFullYear(); //得到年份
	    var month = now.getMonth();//得到月份
	    var date = now.getDate();//得到日期
	    //var day = now.getDay();//得到周几
	    var hour = now.getHours();//得到小时
	    var minu = now.getMinutes();//得到分钟
	    var sec = now.getSeconds();//得到秒
	  month = month + 1;
	  if (month < 10) month = "0" + month;
	  if (date < 10) date = "0" + date;
	  if (hour < 10) hour = "0" + hour;
	  if (minu < 10) minu = "0" + minu;
	  if (sec < 10) sec = "0" + sec;
	          var MyDate = year +"-"+month +"-"+date +" "+hour+":"+minu+":"+sec;
	          alert(MyDate);
	          $("#LAST_UPDATE_TIME").val(MyDate);
			  var obj=$("#Update_form").serialize();
		    $.ajax({
		       url : "stfer/update",
        	   type : "post",
        	   data :obj,
	           dataType:'json',
        	   success : function(data) {
        	      queryAll();
        	}
 		}); 
	 }
	   /*删除*/
	 $(function(){
				$("#transfer_tbody").on("click",".deleteTransfer",function(){
					var id=this.id;
					alert(id);
					$.ajax({
						url:"stfer/delete",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
						queryAll();
						}
					});
				})
			})
			
			
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
	 
	 /*详细信息*/
			$(function(){
				$("#transfer_tbody").on("click",".details",function(){
					var id=this.id;
					alert(1);
					$.ajax({
						url:"stfer/queryId",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
						$("#from_details").html("");
						    var tr="<tr >";
        		            tr+="<td>姓名:</td><td>"+data[0].staffName+"</td><td>调动类型:</td><td>"+ditch(data[0].TRANSFER_TYPE)+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>调动日期:</td><td>"+data[0].TRANSFER_DATE+"</td><td>电动生效日期:</td><td>"+data[0].TRANSFER_EFFECTIVE_DATE+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>调动前部门:</td><td>"+data[0].DIAOQIAN+"</td><td>调动后部门:</td><td>"+data[0].DIAOHOU+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>调动手续办理</td><td>"+data[0].START_DATE+"</td>";		            
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>调动原因</td><td>"+data[0].TRAN_REASON+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>备注</td><td>"+data[0].DESPACHO+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>附件文档</td><td>"+data[0].ATTACHMENT_NAME+"</td>";
        		            tr+="</tr>";
        		            tr+="<td>登记时间</td><td>"+data[0].ADD_TIME+"</td>";
        		            tr+="</tr>";
        		            tr+="<td>最后修改时间</td><td>"+data[0].LAST_UPDATE_TIME+"</td>";
        		            tr+="</tr>";
        		            $("#from_details").append(tr); 
						}
					});
				})
			})             
			
		function ditch(TRANSFER_TYPE){
  	   if(TRANSFER_TYPE==""){
  	       return '无';
  	   }else if(TRANSFER_TYPE==1){
  	       return '晋升';
  	   }else if(TRANSFER_TYPE==2){
  	       return '降级';
  	   }else if(TRANSFER_TYPE==3){
  	       return '平调';
  	   }
  	}
 </script>