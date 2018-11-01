<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
	<script src="resource/js/jquery.min.js"></script>
	<script src="resource/js/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resource/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="resource/jqueryExt.js"></script>
     <script type="text/javascript" src="resource/jquery.form.js"></script>
      <script type="text/javascript" src="resource/js/jquery.serializejson.js"></script>
     <script type="text/javascript" src="resource/js/jquery.serializejson.min.js"></script> 
  </head>
  
  <body>
   <table border="1" class="table">
     <thead>
       <tr class="success">
         <!-- <th>唯一自增</th> -->
         <th>部门名称</th>
         <th>角色名</th>
         <th>人员名</th>
         <th>排班名称</th>
         <th>是/否</th>
         <th>排班开始日期</th>
         <th>排班结束日期</th>
         
         <th><input type="button"  data-toggle="modal" data-target="#myModal"  class="aa btn btn-default" value="添加"></th>
       </tr>
     </thead>
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
    
    <!-- 模态框弹出录入内容 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="modalTitle1" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">
							&times;
							<!-- 关闭按钮 -->
						</button>
						<h4 class="modal-title" id="modalTitle1">添加考勤排班设置</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" role="form" id="file1">
							<div class="form-group">
								<label for="roleName" class="col-sm-2 control-label">部门名称:</label>
								<div class="col-sm-4">
							    <input type="hidden" id="ids" name="id" class="form-control" >
							
								<select id="departFind" class="form-control" name="departmentId"></select>
								</div>
							</div>

							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">角色名:</label>
								<div class="col-sm-4">
								
								<select id="roleFind" class="form-control" name="roleId"></select>
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">人员名:</label>
								<div class="col-sm-4">
								
								<select id="staffFind" class="form-control" name="staff_id"></select>
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">排班名称:</label>
								<div class="col-sm-4">
								<select id="name" class="form-control" name="name" >
								<option value="1">休息</option>
								<option value="2">正常班</option>
								<option value="3">全日班</option>
								</select>
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">是/否:</label>
								<div class="col-sm-4">
								<input type="radio" id="status" name="status" value="1" checked="checked">是
								<input type="radio" id="status" name="status" value="2" >否
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">排班开始日期:</label>
								<div class="col-sm-4">
									<input type="date" id="date_start" class="form-control" name="date_start"/>   
						
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">排班结束日期:</label>
								<div class="col-sm-4">
									 <input type="date" id="date_end" class="form-control" name="date_end"/> 
										
								</div>
							</div>
							        
							
							<input type="button"  id="saveOrUpdate" data-toggle='modal' data-target='#myModal' class="btn btn-primary" value="保存">
						</form>

					</div>
					<div class="modal-footer">
						
						<button type="button"  class="up btn btn-default" data-dismiss="modal">关闭
						</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
   
  </body>
</html>
<script>
  $(function(){
    scheFind(1);
    roleFind();
    departFind();
    staffFind();
  });
  function scheFind(startPage){
    $.ajax({
       url:"attend_schedule/scheFind",
       type:"post",
       data : {
				"startPage" : startPage
			}, 
       dataType:"json",
       success:function(data){
          $("#tbody").empty();
         var ary = data.list;
          for(var i=0;i<ary.length;i++){
           var obj = ary[i];
             var sts=ary[i].status;
          var stsstr=null;
          if(sts=='1'){
            stsstr="是"
          };
          if(sts=='2'){
            stsstr="否"
          };   
           var name=null;
          if(obj.name=='1'){
          name="休息"
          };
          if(obj.name=='2'){
          name="正常班"
          };
          if(obj.name=='3'){
          name="全日班"
          };
            var tr="<tr>";
                 /* tr+="<td>"+obj.id+"</td>"; */
                 tr+="<td id='depart'>"+obj.departmentName+"</td>";
                 tr+="<td id='role'>"+obj.roleName+"</td>";
                 tr+="<td id='staff'>"+obj.STAFF_NAME+"</td>";
                 tr+="<td>"+name+"</td>";              
                 tr+="<td>"+stsstr+"</td>"; 
                 tr+="<td>"+obj.date_start+"</td>";
                 tr+="<td>"+obj.date_end+"</td>";
                /*  name="+obj.departmentName+" */
                 tr+="<td><input type='button' data-toggle='modal' data-target='#myModal' id="+obj.id+" class='findById btn btn-default' value='修改'></td>";
                 tr+="<td><input type='button' id="+obj.id+"  class='delete btn btn-default' value='删除'></td>";
                 tr+="<td><input type='button' id="+obj.id+"  class='updateState btn btn-default' value='状态修改'></td>";
                                 tr+="</tr>";
                 $("#tbody").append(tr);
          }
          //当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					scheFind(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if(last<curr){
					   $("#currPage").val(last);
					   scheFind(last);
					}
					if(curr<=0){
					  $("#currPage").val(1);
					   scheFind(1);
					}
					 scheFind(curr);
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
		scheFind(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		scheFind(currPage + 1);
	})
	$("#shouye").click(function() {
		scheFind(1);
	})
  

  $(document).on("click",".aa",function(){
          $("#ids").val("");
          $("#departmentId").val("");
          $("#roleId").val("");
          $("#staff_id").val("");
          $("#name").val("");
          $("#status").val("");
          $("#date_start").val("");
          $("#date_end").val("");
  });
  
  
   $(document).on("click","#saveOrUpdate",function(){
     var obj=$("#file1").serializeObject();//将表单数据转换json对象
     alert(JSON.stringify(obj));
     $.ajax({
       url:"attend_schedule/saveOrUpdate",
       type:"post",
       async:true,
       contentType:"application/json;charset=utf-8",//发送的内容类型utf-8 
       data:JSON.stringify(obj),//将json对象转换成json字符串
       dataType:"text",
       success:function(data){
          scheFind();
       }
     });
  });
  
    $(document).on("click",".findById",function(){
   var id=this.id;
   var departName=$(this).parent().parent().find("#depart").html();
   var roleName=$(this).parent().parent().find("#role").html();
   var staffName=$(this).parent().parent().find("#staff").html();
     $("#departFind").html("");
     $("#roleFind").html("");
     $("#staffFind").html("");
    $.ajax({
       url:"attend_schedule/scheFindById",
       data:{"id":id},
       type:"post",
       dataType:"json",
       success:function(data){
          $("#ids").val(data.id);
          $("#departmentId").val(data.departmentName);
          $("#roleId").val(data.roleName);
          $("#staff_id").val(data.STAFF_NAME);
          $("#name").val(data.name);
          $("#status").val(data.status);
          $("#date_start").val(data.date_start);
          $("#date_end").val(data.date_end);
       }
    });
    $.ajax({
				        url:"attend_schedule/departFind",
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        	for(var i=0;i<data.length;i++){
				        	if(departName==data[i].departmentName){
				        	$("#departFind").append("<option value='"+data[i].departmentId+"' selected='selected'>"+data[i].departmentName+"</option>");
				        	}else{
				        		$("#departFind").append("<option value='"+data[i].departmentId+"'>"+data[i].departmentName+"</option>");
				        	}
				        }
				        }
			      });
			      
			       $.ajax({
				        url:"attend_schedule/staffFind",
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        for(var i=0;i<data.length;i++){
				        if(staffName==data[i].STAFF_NAME){
				        $("#staffFind").append("<option value='"+data[i].staff_id+"' selected='selected'>"+data[i].STAFF_NAME+"</option>"); 
				        	}else{
				        $("#staffFind").append("<option value='"+data[i].staff_id+"'>"+data[i].STAFF_NAME+"</option>"); 
				        	}  
	 }
				        }
			      }); 
			      
			       $.ajax({
				        url:"attend_schedule/roleFind",
				        dataType:"json",
				        type:"post",
				        success:function(data){
				         for(var i=0;i<data.length;i++){
				         if(roleName==data[i].roleName){
				         $("#roleFind").append("<option value='"+data[i].roleId+"' selected='selected'>"+data[i].roleName+"</option>");
				        	}else{
				        		$("#roleFind").append("<option value='"+data[i].roleId+"'>"+data[i].roleName+"</option>");
				        	} 
				        }
				        }
			      });
		
	
		
  });

  
   $(document).on("click",".delete",function(){ 
    var id=this.id;
    $.ajax({
       url:"attend_schedule/scheDelete",
       data:{"id":id},
       
       type:"post",
       dataType:"text",
       success:function(data){
         alert(data);
         scheFind();
       }
    });
  });
  
   $(document).on("click",".updateState",function(){
    
    var id=this.id;
    alert(id);
  
    $.ajax({
       url:"attend_schedule/updateState",
       data:{"id":id},   
       type:"post",
       dataType:"text",
       success:function(data){
         alert(data);
         scheFind();
       }
    });
  });
  
  function roleFind(){
				 $.ajax({
				        url:"attend_schedule/roleFind",
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        	 for(var i=0;i<data.length;i++){
				        		$("#roleFind").append("<option value='"+data[i].roleId+"'>"+data[i].roleName+"</option>");
				        	} 
				        }
			      });
		
	}
	 function departFind(){
				 $.ajax({
				        url:"attend_schedule/departFind",
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        	for(var i=0;i<data.length;i++){
				        		$("#departFind").append("<option value='"+data[i].departmentId+"'>"+data[i].departmentName+"</option>");
				        	}
				        }
			      });
		
	}
 function staffFind(){
				  $.ajax({
				        url:"attend_schedule/staffFind",
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        	  for(var i=0;i<data.length;i++){
				        		$("#staffFind").append("<option value='"+data[i].staff_id+"'>"+data[i].STAFF_NAME+"</option>"); 
				         	
				        	}  
				        	 /*  $.each(data,function(i,n){
				        		/* $("#staffFind").append("<option value='"+data[i].staff_id+"'>"+data[i].STAFF_NAME+"</option>"); */ 
				         	 	/* if(n.staff_id==${staff_id}){
                             	$("#staffFind").append("<option value='"+n.staff_id+"' selected='selected'>"+n.STAFF_NAME+"</option>");
	                            }else{
	                           $("#staffFind").append("<option value='"+n.staff_id+"'>"+n.STAFF_NAME+"</option>");
	                          	}  
				        	}   */
	 
				        }
			      }); 
	
	 } 

</script>