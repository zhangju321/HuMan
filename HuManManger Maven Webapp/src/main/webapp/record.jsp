<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'record.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap-theme.min.css">
	<script src="resources/bootstrap/jquery-1.11.3.min.js"></script>
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/jquery.serialize.js"></script>
	
  </head>
  
  <body>
       
    <form id="form1" method="post" class="form-horizontal">
      <div class="form-group">
        <label for="departmentid" class="col-md-4 control-label">部门:</label>
         <div class="col-md-6">
           <select id="depart" name="departmentid" >
                <option selected>显示所有部门员工</option>
           </select>
         </div>
      </div>
     </form>
     
    
     <div class="modal-body">
  
    <table class="table table-bordered table-hover">
      
    		<tr>
    			<td>部门</td>
    			<td>员工编号</td>
    			<td>员工</td>
    			<td>操作</td> 		
    		</tr>
    		<tbody id="tbody">   		
    		</tbody>
    	</table>
    </div>
    
    
    <div class="modal fade" id="myModall" tabindex="-1" role="dialog" aria-labelledby="modalTitle1" aria-hidden="true">
	<div class="modal-dialog" style="width:800px">
		<div class="modal-content" style="height:750px">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times; <!-- 关闭按钮 -->
				</button>
				<h4 class="modal-title" id="modalTitle1">
					考勤记录
				</h4>
			</div>
	<div class="modal-body">  
    <table class="table table-bordered table-hover">
      <div style="background-color:#D2E9FF;border:1px">请假记录</div>
    		<tr>
    		    
    		    <td>请假人员</td>
    			<td>请假原因</td>
    			<td>开始时间</td>
    			<td>结束时间</td>
    			<td>状态</td> 
    			<td>操作</td>		
    		</tr>
    		<tbody id="tbody2">   		
    		</tbody>
    	</table>
    </div>
    
    <div class="modal-body">  
    <table class="table table-bordered table-hover">
      <div style="background-color:#D2E9FF;border:1px">出差记录</div>
    		<tr>
    		    
    		    <td>出差人员</td>
    			<td>出差原因</td>
    			<td>出差地点</td>
    			<td>开始时间</td>
    			<td>结束时间</td>
    			<td>状态</td> 
    			<td>操作</td>		
    		</tr>
    		<tbody id="tbody3">   		
    		</tbody>
    	</table>
    </div>
     <div class="modal-body">  
    <table class="table table-bordered table-hover">
      <div style="background-color:#D2E9FF;border:1px">外出记录</div>
    		<tr>
    		    
    		    <td>外出人员</td>
    			<td>外出原因</td>
    			<td>外出地点</td>
    			<td>开始时间</td>
    			<td>结束时间</td>
    			<td>状态</td> 
    			<td>操作</td>		
    		</tr>
    		<tbody id="tbody4">   		
    		</tbody>
    	</table>
    </div>
    
	</div>
	
    </div><!-- /.modal-content -->
   </div><!-- /.modal -->
    
  </body>
</html>
<script>

	/* 根据下拉框选中的类型进行查询 */
	$("#depart").bind("change",function(){
            var departmentid = $(this).val();
            godeptId(departmentid);
        });
function godeptId(departmentid){
     $.ajax({
			url:"staffInfo/queryDepartId",
			type : "post",			
        	data:{
        		"departmentid" : departmentid,
        	},
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {  						
				$("#tbody").empty();
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
        			var tr="<tr>"; 
        			tr+="<td>"+data[i].departmentname+"</td>";
        			tr+="<td>"+data[i].staff_Id+"</td>";
        			tr+="<td>"+data[i].staff_Name+"</td>";        			
        			tr+="<td><button class='queryId btn btn-primary' id='"+data[i].staff_Id+"' data-toggle='modal' data-target='#myModall'>记录</button></td>";          			      					        	  		     
        			tr+="</tr>";
        			$("#tbody").append(tr);
        		}
        	}	    
      })

}
 function goStaff(){
		 	$.ajax({
        	url : "staffInfo/queryStaff",
        	type : "post",
        	async : true,
        	data:$("#tbody").serialize(),
       	 	dataType : 'Json',
        	success : function(data) {
        		$("#tbody").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
        			var tr="<tr>"; 
        			tr+="<td>"+data[i].departmentname+"</td>";
        			tr+="<td>"+data[i].staff_Id+"</td>";
        			tr+="<td>"+data[i].staff_Name+"</td>";        			
        			tr+="<td><button class='queryId btn btn-primary' id='"+data[i].staff_Id+"' data-toggle='modal' data-target='#myModall'>详情</button></td>";          			      					        	  		     
        			tr+="</tr>";
        			$("#tbody").append(tr);
        		}     
        	}
 		});
		} 
 $(function(){
		findDepart();
		goStaff();
		})
		
	 function findDepart(){	
		 $.ajax({
	     url:"staffInfo/findAll",
		 data:{},//绑定要给后台提交的数据
		 dataType:'json',
		 type:"post",
		 async:true,
		 success:function(data){
		 for(var i=0;i<data.length;i++){
		  $("#depart").append("<option value='"+data[i].departmentid+"'>"+data[i].departmentname+"</option>");
		 	}
		 	
		 		
		      }
		  });		
	} 
	$("#tbody").on("click",".queryId",function(){
		 var sta_Staff_Id=this.id;
		
		$.ajax({
			url:"vocation/queryStaff",
			type : "post",			
        	 data:{
        		"sta_Staff_Id" : sta_Staff_Id,
        	}, 
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {  
        	    $("#tbody2").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
        			var tr="<tr>";        		        				
        			tr+="<td>"+data[i].staff_Name+"</td>";
        			tr+="<td>"+data[i].vocation_Reason+"</td>";
        			tr+="<td>"+data[i].vocation_Qi_Time+"</td>";
        			tr+="<td>"+data[i].vocation_Jie_Time+"</td>";        			
        			if(data[i].status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(data[i].status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(data[i].status_Name==2){
		        		tr+="<td>驳回</td>";
		        		}        			
        			tr+="<td><button class='delete btn btn-primary' id='"+data[i].vocation_Id+"' data-toggle='modal'>删除</button></td>";          			      					        	  		     
        			tr+="</tr>";
        			$("#tbody2").append(tr);
        		}     
				
        	}	
		})
	})
	$(function(){
		$("#tbody2").on("click",".delete",function() {
			var vocation_Id =this.id;
			alert(vocation_Id);
			if(confirm("确认删除？")){
			$.ajax({
				url : "vocation/delete",
				type : "post",
				async : true,
				contentType: "application/json; charset=utf-8",
				data : JSON.stringify(vocation_Id),
				dataType : 'text',
				success:function(data){
				alert(data);
				
 		}
		 	});
     	}else{
	 		alert("取消了删除！");
		 	}
					 	
		})
	}) 
	
	$("#tbody").on("click",".queryId",function(){
		 var staff_Id=this.id;
		
		$.ajax({
			url:"travel/queryStaff2",
			type : "post",			
        	 data:{
        		"staff_Id" : staff_Id,
        	}, 
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {  
        	    $("#tbody3").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
        			var tr="<tr>";        			
        			tr+="<td>"+data[i].staff_Name+"</td>";
        			tr+="<td>"+data[i].travel_Reason+"</td>";
        			tr+="<td>"+data[i].travel_Place+"</td>";
        			tr+="<td>"+data[i].start_Time+"</td>";
        			tr+="<td>"+data[i].end_Time+"</td>";        			
        			if(data[i].status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(data[i].status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(data[i].status_Name==2){
		        		tr+="<td>驳回</td>";
		        		}        			
        			tr+="<td><button class='delete btn btn-primary' id='"+data[i].travel_Id+"' data-toggle='modal' data-target='#myModall'>详情</button></td>";          			      					        	  		     
        			tr+="</tr>";
        			$("#tbody3").append(tr);
        		}     
				
        	}	
		})
	})
	$("#tbody").on("click",".queryId",function(){
		 var staff_Id=this.id;
		
		$.ajax({
			url:"goOut/queryStaff3",
			type : "post",			
        	 data:{
        		"staff_Id" : staff_Id,
        	}, 
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {  
        	    $("#tbody4").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
        			var tr="<tr>";        			
        			tr+="<td>"+data[i].staff_Name+"</td>";
        			tr+="<td>"+data[i].reason+"</td>";
        			tr+="<td>"+data[i].place+"</td>";
        			tr+="<td>"+data[i].start_Time+"</td>";
        			tr+="<td>"+data[i].end_Time+"</td>";        			
        			if(data[i].status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(data[i].status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(data[i].status_Name==2){
		        		tr+="<td>驳回</td>";
		        		}        			
        			tr+="<td><button class='delete btn btn-primary' id='"+data[i].staff_Id+"' data-toggle='modal' data-target='#myModall'>详情</button></td>";          			      					        	  		     
        			tr+="</tr>";
        			$("#tbody4").append(tr);
        		}     
				
        	}	
		})
	})
	
	
	
/* $("#tbody").on("click",".queryId",function(){
		 var staff_Id=this.id;
		 
		$.ajax({
			url:"staffInfo/queryById",
			type : "post",			
        	data:{
        		"staff_Id" : staff_Id,
        	},
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {       						
				if (data.staff_Id!=null) {
				window.location.href="record2.jsp";																		
			} else {
				alert("出错了！");				
			}				
        	}	
		})
	}) */
	

</script>