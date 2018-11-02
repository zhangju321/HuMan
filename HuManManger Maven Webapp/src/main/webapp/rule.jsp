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
	<link rel="stylesheet" href="js/layui/css/layui.css"  media="all">
	<script src="resource/js/jquery.min.js"></script>
	<script src="resource/js/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resource/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="resource/jqueryExt.js"></script>
     <script type="text/javascript" src="resource/jquery.form.js"></script>
     
  <script src="js/layui/layui.js" charset="utf-8"></script>
     
  </head>
  
  <body>
  <div style="text-align: center">
  <input type="button"  data-toggle="modal" data-target="#myModal"  class="em btn btn-default" value="增加排班"></th>
 </div>
   <table border="1" class="table">   
     <thead>   
       <tr class="success">
         <th>加班时间</th>
         <th>加班奖励</th>
         <th>迟到次数</th>
         <th>迟到惩罚</th>
         <th>早退次数</th>
         <th>早退惩罚</th>
         <th>迟到多久算旷工</th>
         <th>早退多久算旷工</th>
         <th></th>
         <th></th>
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
						<h4 class="modal-title" id="modalTitle1">新建统计规则</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" role="form" id="file1">
							<div class="form-group">
								<label for="roleName" class="col-sm-2 control-label">加班时间:</label>
								<div class="col-sm-4">
							   <input type="hidden" id="kid" name="kid" class="form-control" >
							    <input type="text" id="overtime_hour" name="overtime_hour" class="form-control">
								</div>
							</div>

							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">加班奖励:</label>
							 <div class="col-sm-4">
								<input type="text" id="overtime_bonus" name="overtime_bonus" class="form-control">
								</div>
                             
							</div> 
			
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">迟到次数:</label>
								<div class="col-sm-4">
								<input type="text" id="late_hour" name="late_hour" class="form-control">
								</div>
                              
	   						</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">迟到惩罚:</label>
								 <div class="col-sm-4">
								<input type="text" id="late_bonus" name="late_bonus" class="form-control">
								</div> 
								
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">早退次数:</label>
								 <div class="col-sm-4">
								<input type="text" id="eraly_hour" name="eraly_hour" class="form-control">
								</div> 
								
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">早退惩罚:</label>
								<div class="col-sm-4">
									<input type="text" id="early_bonus" class="form-control" name="early_bonus" />
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">迟到多久算旷工:</label>
								<div class="col-sm-4">
									 <input type="text" id="one_late_hour" class="form-control" name="one_late_hour"> 
										
								</div>
							</div>
							        
							
							<div class="form-group">
								<label for="sellCount" class="col-sm-2 control-label">早退多久算旷工:</label>
								<div class="col-sm-4">
									 <input type="text" id="one_eraly_hour" class="form-control" name="one_eraly_hour"> 
										
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
    ruleFind(1);
  });
  function ruleFind(startPage){
    $.ajax({
       url:"rule/ruleFind",
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
            var tr="<tr>";   
                 tr+="<td>"+obj.overtime_hour+"</td>";
                 tr+="<td>"+obj.overtime_bonus+"</td>";
                 tr+="<td>"+obj.late_hour+"</td>";
                 tr+="<td>"+obj.late_bonus+"</td>";
                 tr+="<td>"+obj.eraly_hour+"</td>";
                 tr+="<td>"+obj.early_bonus+"</td>";
                 tr+="<td>"+obj.one_late_hour+"</td>";
                 tr+="<td>"+obj.one_eraly_hour+"</td>";
                 tr+="<td><input type='button' data-toggle='modal' data-target='#myModal' id="+obj.kid+"  class='findById btn btn-default' value='修改'></td>";
                 tr+="<td><input type='button' id="+obj.kid+"  class='delete btn btn-default' value='删除'></td>";
                 tr+="</tr>";
                 $("#tbody").append(tr);
          }
           //当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					ruleFind(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if(last<curr){
					   $("#currPage").val(last);
					   ruleFind(last);
					}
					if(curr<=0){
					  $("#currPage").val(1);
					   ruleFind(1);
					}
					 ruleFind(curr);
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
		ruleFind(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		ruleFind(currPage + 1);
	})
	$("#shouye").click(function() {
		ruleFind(1);
	})

  $(document).on("click",".em",function(){
          $("#kid").val("");
          $("#overtime_hour").val("");
          $("#overtime_bonus").val("");
          $("#late_hour").val("");
          $("#late_bonus").val("");
          $("#eraly_hour").val(""); 
          $("#early_bonus").val("");
          $("#one_late_hour").val("");
           $("#one_eraly_hour").val("");
          
            });
   $(document).on("click","#saveOrUpdate",function(){
     var obj=$("#file1").serializeObject();//将表单数据转换json对象
     $.ajax({
       url:"rule/saveOrUpdate",
       type:"post",
       async:true,
       contentType:"application/json;charset=utf-8",//发送的内容类型utf-8
       data:JSON.stringify(obj),//将json对象转换成json字符串
       dataType:"text",
       success:function(data){
          ruleFind();
       }
     });
  });
  
   $(document).on("click",".findById",function(){
    var id=this.id;
    
    $.ajax({
       url:"rule/ruleFindById",
  
       data:{"kid":id},
       type:"post",
       dataType:"json", 
 
       success:function(data){
          $("#kid").val(data.kid);
          $("#overtime_hour").val(data.overtime_hour);
          $("#overtime_bonus").val(data.overtime_bonus);
          $("#late_hour").val(data.late_hour);
          $("#late_bonus").val(data.late_bonus);
          $("#eraly_hour").val(data.eraly_hour);
          $("#early_bonus").val(data.early_bonus);
          $("#one_late_hour").val(data.one_late_hour);
          $("#one_eraly_hour").val(data.one_eraly_hour);
       }
    });
  });
  
   $(document).on("click",".delete",function(){
    
    var id=this.id;
    $.ajax({
       url:"rule/ruleDelete",
       data:{"kid":id},
       type:"post",
       dataType:"text",
       success:function(data){
         alert(data);
         ruleFind();
       }
    });
  });
	
</script>

