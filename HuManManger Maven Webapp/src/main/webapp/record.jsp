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
<link rel="stylesheet" type="text/css" href="resource/js/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resource/js/bootstrap/css/bootstrap-theme.min.css">
	<script src="resource/jquery-1.11.3.min.js"></script>
	<script src="resource/js/bootstrap/js/bootstrap.min.js"></script>
	<script src="resource/jquery.serialize.js"></script>
	<script src="resource/js/bootstrap/js/tableExport.js"></script>
  </head>
  
  <body>
       
    <form id="form1" >
     
                部门:  <select id="depart" name="departmentId" >
                <option value="0" selected>--选择部门--</option>
           </select>         
     </form>
      <form>
                               员工姓名:<input type="text" name="staffName" id="staffName"/></td>                
           <input type="button" value="搜索" id="like1"/></td>                           
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
    	<ul class="pager">
		<li><button type="button" class="btn btn-default" id="shouye">首页</button></li>
		<li><button type="button" class="btn btn-default" id="syy">上一页</button></li>
		<li><button type="button" class="btn btn-default" id="xyy">下一页</button></li>
		<li><button type="button" class="btn btn-default" id="weiye">尾页</button></li>
		<li style="font-weight: lighter;">当前第<input type="text" id="currPage" style="height:35px;width:50px;border-radius:10px;text-align: center;"/>页</li>
	</ul>
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
			<div>
			<a onclick="$('.pvtTable').tableExport({type:'excel',
                        mso: {
                         styles:['border-bottom', 'border-top', 'border-left', 'border-right']
                         }});">导出为 Excel</a>
          </div>
	<div class="modal-body">  
    <table class="pvtTable table table-bordered table-hover">
      <div style="background-color:#D2E9FF;border:1px">请假记录</div>
    		<tr>
    		    
    		    <td>请假人员</td>
    			<td>请假原因</td>
    			<td>开始时间</td>
    			<td>结束时间</td>
    			<td>状态</td> 
    				
    		</tr>
    		<tbody id="tbody2">   		
    		</tbody>
    	</table>
    </div>
    
    <div class="modal-body">  
    <table class="pvtTable table table-bordered table-hover">
      <div style="background-color:#D2E9FF;border:1px">出差记录</div>
    		<tr>
    		    
    		    <td>出差人员</td>
    			<td>出差原因</td>
    			<td>出差地点</td>
    			<td>开始时间</td>
    			<td>结束时间</td>
    			<td>状态</td> 
    			<	
    		</tr>
    		<tbody id="tbody3">   		
    		</tbody>
    	</table>
    </div>
     <div class="modal-body">  
    <table class="pvtTable table table-bordered table-hover">
      <div style="background-color:#D2E9FF;border:1px">外出记录</div>
    		<tr>
    		    
    		    <td>外出人员</td>
    			<td>外出原因</td>
    			<td>外出地点</td>
    			<td>开始时间</td>
    			<td>结束时间</td>
    			<td>状态</td> 
    				
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
  function querymh(){
  var staffName=$("#staffName").val();  
  //alert(staffName);
  $.ajax({
        	url : "staffInfo/querymh",
        	type : "post",
        	async : true,
        	data:{"staffName":staffName},
       	 	dataType : 'Json',
        	success : function(data) {
        		$("#tbody").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
        			var tr="<tr>"; 
        			tr+="<td>"+data[i].departmentname+"</td>";
        			tr+="<td>"+data[i].staff_Id+"</td>";
        			tr+="<td>"+data[i].STAFF_NAME+"</td>";        			
        			tr+="<td><button class='queryId btn btn-primary' id='"+data[i].staff_Id+"' data-toggle='modal' data-target='#myModall'>详情</button></td>";          			      					        	  		     
        			tr+="</tr>";
        			$("#tbody").append(tr);
        		}     
        	}
 		});
  }
  $("#like1").click(function(){
	    querymh();
	})
  $(function(){
    conFind(1);
  });
  function conFind(startPage){
    $.ajax({
       url:"staffInfo/queryStaff",
       type:"post",
       data : {                
				"startPage" : startPage
			}, 
       dataType:"json",
       success:function(data){
          $("#tbody").empty();
          var ary = data.list;
          for(var i=0;i<ary.length;i++){
           var obj = ary[i];//获取当前对象
            var tr="<tr>";
                 tr+="<td>"+obj.departmentname+"</td>";
        			tr+="<td>"+obj.staff_Id+"</td>";
        			tr+="<td>"+obj.staff_Name+"</td>";        			
        			tr+="<td><button class='queryId btn btn-primary' id='"+obj.staff_Id+"' data-toggle='modal' data-target='#myModall'>详情</button></td>";          			      					        	  		     
        			tr+="</tr>";
        			$("#tbody").append(tr);
          }
          //当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					conFind(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if(last<curr){
					   $("#currPage").val(last);
					   conFind(last);
					}
					if(curr<=0){
					  $("#currPage").val(1);
					   conFind(1);
					}
					 conFind(curr);
				});
				if (data.isFirstPage) {
					$("#syy").attr("disabled", "disabled");
					$("#shouye").attr("disabled", "disabled");
				} else {
					$("#syy").removeAttr("disabled", "disabled");
					$("#shouye").removeAttr("disabled", "disabled");
				}
				if (data.isLastPage) {
					$("#xyy").attr("disabled", "disabled");
					$("#weiye").attr("disabled", "disabled");
				} else {
					$("#xyy").removeAttr("disabled", "disabled");
					$("#weiye").removeAttr("disabled", "disabled");
				}
       }
    });
  };
  	/* 按钮的赋值 */
	$("#syy").click(function() {
		var currPage = parseInt($("#currPage").val());
		conFind(currPage - 1);
	})
	$("#xyy").click(function(){
		var currPage = parseInt($("#currPage").val());
		conFind(currPage + 1);
	})
	$("#shouye").click(function() {
		conFind(1);
	})
	/* 根据下拉框选中的类型进行查询 */
	$("#depart").bind("change",function(){
            var departmentId = $(this).val();
            godeptId(departmentId);
            
        });
function godeptId(departmentId){
     $.ajax({
			url:"staffInfo/queryDepartId",
			type : "post",			
        	data:{
        		"departmentId" : departmentId,
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
 $(function(){
		findDepart();
		conFind();
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
		  $("#depart").append("<option value='"+data[i].departmentId+"'>"+data[i].departmentName+"</option>");
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
        			tr+="<td>"+data[i].STAFF_NAME+"</td>";
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
        			tr+="</tr>";
        			$("#tbody2").append(tr);
        		}     
				
        	}	
		})
	})
	
	
	$("#tbody").on("click",".queryId",function(){
		 var sta_Staff_Id=this.id;
		
		$.ajax({
			url:"travel/queryStaff2",
			type : "post",			
        	 data:{
        		"sta_Staff_Id" : sta_Staff_Id,
        	}, 
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {  
        	    $("#tbody3").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
        			var tr="<tr>";        			
        			tr+="<td>"+data[i].STAFF_NAME+"</td>";
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
        			tr+="</tr>";
        			$("#tbody3").append(tr);
        		}     
				
        	}	
		})
	})
	$("#tbody").on("click",".queryId",function(){
		 var sta_Staff_Id=this.id;
		
		$.ajax({
			url:"goOut/queryStaff3",
			type : "post",			
        	 data:{
        		"sta_Staff_Id" : sta_Staff_Id,
        	}, 
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {  
        	    $("#tbody4").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
        			var tr="<tr>";        			
        			tr+="<td>"+data[i].STAFF_NAME+"</td>";
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
        			tr+="</tr>";
        			$("#tbody4").append(tr);
        		}     
				
        	}	
		})
	})
	

</script>