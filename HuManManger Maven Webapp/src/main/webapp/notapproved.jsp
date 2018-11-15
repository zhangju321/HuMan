<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'notapproved.jsp' starting page</title>
    
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
	<script src="resource/js/bootstrap/js/bootstrapValidator.min.js"></script>
	<link type="text/css" rel="stylesheet" href="resource/js/bootstrap/css/bootstrapValidator.min.css">
	<script src="resource/js/bootstrap/js/bootstrap.min.js"></script>
	<script src="resource/jquery.serialize.js"></script>
  </head>
  
  <body>
  <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="tabbable" id="tabs-260991">
				<ul class="nav nav-tabs">
					<li class="active">
						 <a href="#panel-464761" data-toggle="tab">请假</a>
					</li>
					<li>
						 <a href="#panel-779659" data-toggle="tab">外出</a>
					</li>
					<li>
						 <a href="#panel-779660" data-toggle="tab">出差</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-464761">
				<p>
		<table class="table table-bordered table-hover">      
    		<tr>
    			<td>编号</td>
    			<td>员工</td>
    			<td>原因</td>
    			<td>开始时间</td>
    			<td>结束时间</td>
    			<td>申请状态</td>
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
	<!--  驳回模态框 -->
   <div class="modal fade" id="myModabh" tabindex="-1" role="dialog" aria-labelledby="modalTitles" aria-hidden="true">
	<div class="modal-dialog" style="width:550px">
		<div class="modal-content" style="height:280px">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times; <!-- 关闭按钮 -->
				</button>
				<h4 class="modal-title" id="modalTitles">
					驳回
				</h4>
			</div>
	<div class="modal-body">
     <form id="formbh" method="post" class="form-horizontal" >
     
      <div class="form-group">
        <label for="s.stuCode" class="col-md-4 control-label">驳回原因:</label>
          <div class="col-md-6">
            <textarea name="operate" id="operate"  class="form-control" rows="3" required placeholder="请输入原因"></textarea>
            <input type="hidden" id="vocationId" name="vocation_Id"/>
         </div>
      </div>
       <div class="modal-footer">
<!--                 <button type="button" onclick="comitbh()" data-dismiss="modal" data-target='#myModalbh' class="btn btn-primary">确认驳回</button>       		
 -->		        <button type="button" id="btn-test"  data-target='#myModal' class="btn btn-primary">驳回</button>
 <button type="button" class="btn btn-default" data-dismiss="modal" >关闭</button>
	   </div> 
    </form>
    	
    </div>
	</div>
	
    </div><!-- /.modal-content -->
   </div><!-- /.modal -->
	</p>
	</div>
<!-- 外出 -->
	<div class="tab-pane" id="panel-779659">
			<p>
				<table class="table table-bordered table-hover">
    		<tr>
    		   
    		    <td>外出编号</td> 
    		    <td>外出人员</td>
    			<td>外出原因</td>
    			<td>外出地点</td>    			
    			<td>开始时间</td>
    			<td>结束时间</td>  
    			<td>状态</td>    					
    			<td>操作</td>    			      			 		
    		</tr>
    		<tbody id="tbodyGo"></tbody>
    	</table>
    	<ul class="pager">
		<li><button type="button" class="btn btn-default" id="shouye2">首页</button></li>
		<li><button type="button" class="btn btn-default" id="syy2">上一页</button></li>
		<li><button type="button" class="btn btn-default" id="xyy2">下一页</button></li>
		<li><button type="button" class="btn btn-default" id="weiye2">尾页</button></li>
		<li style="font-weight: lighter;">当前第<input type="text" id="currPage2" style="height:35px;width:50px;border-radius:10px;text-align: center;"/>页</li>
	</ul>
	<!--  驳回模态框 -->
   <div class="modal fade" id="myModabh2" tabindex="-1" role="dialog" aria-labelledby="modalTitlesg" aria-hidden="true">
	<div class="modal-dialog" style="width:550px">
		<div class="modal-content" style="height:250px">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times; <!-- 关闭按钮 -->
				</button>
				<h4 class="modal-title" id="modalTitlesg">
					驳回
				</h4>
			</div>
	<div class="modal-body">
     <form id="formbh2" method="post" class="form-horizontal" >
     
      <div class="form-group">
        <label for="s.stuCode" class="col-md-4 control-label">驳回原因:</label>
          <div class="col-md-6">
            <textarea name="operate" id="operateg"  class="form-control" rows="3" required placeholder="请输入原因"></textarea>
            <input type="hidden" id="outId" name="out_Id"/>
         </div>
      </div>
       <div class="modal-footer">
                <button type="button" onclick="comitbhg()" data-dismiss="modal" data-target='#myModalbh2' class="btn btn-primary">确认驳回</button>       		
		        <button type="button" class="btn btn-default" data-dismiss="modal" >关闭</button>
	   </div> 
    </form>
    	
    </div>
	</div>
	
    </div><!-- /.modal-content -->
   </div><!-- /.modal -->
			</p>
	</div>
<!-- 出差 -->
					<div class="tab-pane" id="panel-779660">
						<p>
							<table class="table table-bordered table-hover">
    		<tr>
    		    <td>出差编号</td>
    		    <td>出差人员</td>
    			<td>出差原因</td>
    			<td>出差地点</td>
    			<td>开始时间</td>
    			<td>结束时间</td> 
    			<td>状态</td>     					    			
    			<td>操作</td>      			 		
    		</tr>
    		<tbody id="travelbody"></tbody>
    	</table>
    	<ul class="pager">
			<li><button type="button" class="btn btn-default" id="shouye3">首页</button></li>
			<li><button type="button" class="btn btn-default" id="syy3">上一页</button></li>
			<li><button type="button" class="btn btn-default" id="xyy3">下一页</button></li>
			<li><button type="button" class="btn btn-default" id="weiye3">尾页</button></li>
			<li style="font-weight: lighter;">当前第<input type="text" id="currPage3" style="height:35px;width:50px;border-radius:10px;text-align: center;"/>页</li>
	   </ul>
	   <!--  驳回模态框 -->
   <div class="modal fade" id="myModabh3" tabindex="-1" role="dialog" aria-labelledby="modalTitlest" aria-hidden="true">
	<div class="modal-dialog" style="width:550px">
		<div class="modal-content" style="height:250px">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times; <!-- 关闭按钮 -->
				</button>
				<h4 class="modal-title" id="modalTitlest">
					驳回
				</h4>
			</div>
	<div class="modal-body">
     <form id="formbht" method="post" class="form-horizontal" >     
      <div class="form-group">
        <label for="s.stuCode" class="col-md-4 control-label">驳回原因:</label>
          <div class="col-md-6">
            <textarea name="operate" id="operatet"  class="form-control" rows="3" required placeholder="请输入原因"></textarea>
            <input type="hidden" id="travelId" name="travel_Id"/>
         </div>
      </div>
       <div class="modal-footer">
                <button type="button" onclick="comitbht()" data-dismiss="modal" data-target='#myModalbh3' class="btn btn-primary">确认驳回</button>       		
		        <button type="button" class="btn btn-default" data-dismiss="modal" >取消</button>
	   </div> 
    </form>
    	
    </div>
	</div>
	
    </div><!-- /.modal-content -->
   </div><!-- /.modal -->
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div> 
  </body>
</html>
<script>
$(function(){
    queryvAll(1);
   
  });
  function queryvAll(startPage){
    $.ajax({
       url:"vocation/notApproved",
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
                 tr+="<td>"+obj.vocation_Id+"</td>";
        			tr+="<td>"+obj.staff_Name+"</td>";
        			tr+="<td>"+obj.vocation_Reason+"</td>";
        			tr+="<td>"+obj.vocation_Qi_Time+"</td>";
        			tr+="<td>"+obj.vocation_Jie_Time+"</td>";
        			if(obj.status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(obj.status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(obj.status_Name==2){
		        		tr+="<td>驳回</td>";
		        		}
        			if(obj.status_Name==0){
		        	 tr+="<td><button type='button' id='"+obj.vocation_Id+"' class='updateSta btn btn-danger'>通过</button><button id='"+obj.vocation_Id+"' class='updateSta2 btn btn-primary' data-toggle='modal' data-target='#myModabh'>驳回</button></td>";		        		
		        		}                                                                                        								         	  		     
        			tr+="</tr>";
        			$("#tbody").append(tr);
          }
          //当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					queryvAll(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if(last<curr){
					   $("#currPage").val(last);
					   queryvAll(last);
					}
					if(curr<=0){
					  $("#currPage").val(1);
					   queryvAll(1);
					}
					 queryvAll(curr);
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
		queryvAll(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		queryvAll(currPage + 1);
	})
	$("#shouye").click(function() {
		queryvAll(1);
	})

 $(function(){
		
		queryvAll();
		})
$("#tbody").on("click",".updateSta",function(){
		 var vocation_Id=this.id;
		$.ajax({
			url:"vocation/updateStatus",
			type : "post",
        	data:{
        		"vocation_Id" : vocation_Id,
        	},
       	 	dataType : "text",//返回的数据类型
        	success : function(data) {
        		queryvAll();
        	}	
		})
	})
	$("#tbody").on("click",".updateSta2",function(){
		 var vocation_Id=this.id;
		 $("#vocationId").val(vocation_Id);
		alert(vocation_Id); 
		$.ajax({
			url:"vocation/queryId",
			type : "post",
			 data:{
        		"vocation_Id" : vocation_Id,
        	},
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {
        		$("#operate").val(data.operate);
        	}	
		})
	})
	//表单验证
 $(function () {
            $("#formbh").bootstrapValidator({
                live: 'disabled',//验证时机，enabled是内容有变化就验证（默认），disabled和submitted是提交再验证
                excluded: [':disabled', ':hidden', ':not(:visible)'],//排除无需验证的控件，比如被禁用的或者被隐藏的
                submitButtons: '#form1',//指定提交按钮，如果验证失败则变成disabled，但我没试成功，反而加了这句话非submit按钮也会提交到action指定页面
                message: '通用的验证失败消息',//好像从来没出现过
                feedbackIcons: {//根据验证结果显示的各种图标
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                operate: {
                    message: '驳回原因验证失败',
                    validators: {
                        notEmpty: {
                            message: '驳回原因不能为空'
                        }
                    }
                },
                
            }
            });
            $("#btn-test").click(function () {//非submit按钮点击后进行验证，如果是submit则无需此句直接验证
                $("#formbh").bootstrapValidator('validate');//提交验证
                if ($("#formbh").data('bootstrapValidator').isValid()) {//获取验证结果，如果成功，执行下面代码
                    alert("验证成功");//验证成功后的操作，如ajax
                    var obj=$("#formbh").serialize();
				//alert(obj)
			$.ajax({
	        	url : "vocation/updateStatus2",
	        	type : "post",	        		        	
	        	data :obj,
	       	 	dataType : 'text',//返回的数据类型
	        	success : function(data) {
	        	$("#myModal").modal("hide");
	        		location.reload();
	        		queryvAll();
	        	}
	 		});
                }
            });

  });
/* 外出 */
$(function(){
    conFind2(1);
  });
  function conFind2(startPage){
    $.ajax({
       url:"goOut/notApproved",
       type:"post",
       data : {
				"startPage" : startPage
			}, 
       dataType:"json",
       success:function(data){
          $("#tbodyGo").empty();
          var ary = data.list;
          for(var i=0;i<ary.length;i++){
           var obj = ary[i];
            var tr="<tr>";      
		        	tr+="<td>"+obj.out_Id+"</td>";			  
        			tr+="<td>"+obj.staff_Name+"</td>";
        			tr+="<td>"+obj.reason+"</td>";
        			tr+="<td>"+obj.place+"</td>";        			
        			tr+="<td>"+obj.start_Time+"</td>";
        			tr+="<td>"+obj.end_Time+"</td>";
        			 if(obj.status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(obj.status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(obj.status_Name==2){
		        		tr+="<td>驳回</td>";
		        		}  
        			if(obj.status_Name==0){                                                                          
		        	 tr+="<td><button type='button' id='"+obj.out_Id+"' class='updateStag btn btn-danger'>通过</button><button  id='"+obj.out_Id+"' class='updateStag2 btn btn-primary' data-toggle='modal' data-target='#myModabh2'>驳回</button></td>";		        		
		        		}     
		        	tr+="</tr>";
        			$("#tbodyGo").append(tr);  
        			
          }
          //当前页的值
				$("#currPage2").val(data.pageNum);
				$("#weiye2").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					conFind2(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage2").val();
					if(last<curr){
					   $("#currPage2").val(last);
					   conFind2(last);
					}
					if(curr<=0){
					  $("#currPage2").val(1);
					   conFind2(1);
					}
					 conFind2(curr);
				});
				if (data.isFirstPage) {
					$("#syy2").attr("disabled", "disabled");
					$("#shouye2").attr("disabled", "disabled");
				} else {
					$("#syy2").removeAttr("disabled", "disabled");
					$("#shouye2").removeAttr("disabled", "disabled");
				}
				if (data.isLastPage) {
					$("#xyy2").attr("disabled", "disabled");
					$("#weiye2").attr("disabled", "disabled");
				} else {
					$("#xyy2").removeAttr("disabled", "disabled");
					$("#weiye2").removeAttr("disabled", "disabled");
				}
       }
    });
  };
  	/* 按钮的赋值 */
	$("#syy2").click(function() {
		var currPage = parseInt($("#currPage2").val());
		conFind2(currPage - 1);
	})
	$("#xyy2").click(function() {
		var currPage = parseInt($("#currPage2").val());
		conFind2(currPage + 1);
	})
	$("#shouye2").click(function() {
		conFind2(1);
	})

 $(function(){
		conFind2();
		})
$("#tbodyGo").on("click",".updateStag",function(){
		 var out_Id=this.id;
		$.ajax({
			url:"goOut/updateStatus",
			type : "post",
        	data:{
        		"out_Id" : out_Id,
        	},
       	 	dataType : "text",//返回的数据类型
        	success : function(data) {
        		conFind2();
        	}	
		})
	})
	$("#tbodyGo").on("click",".updateStag2",function(){
		var out_Id=this.id;
		 $("#outId").val(out_Id);
		$.ajax({
			url:"goOut/queryId",
			type : "post",
			 data:{
        		"out_Id" : out_Id,
        	},
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {
        		$("#operateg").val(data.operate);
        	}	
		})
	})
	function comitbhg(){
				var obj=$("#formbh2").serialize();
			$.ajax({
	        	url : "goOut/updateStatus2",
	        	type : "post",	        		        	
	        	data :obj,
	       	 	dataType : 'text',//返回的数据类型
	        	success : function(data) {	        		
	        		conFind2();
	        	}
	 		});
			}
/* 出差 */
$(function(){
    conFind3(1);
   
  });
  function conFind3(startPage){
    $.ajax({
       url:"travel/notApproved",
       type:"post",
       data : {
				"startPage" : startPage
			}, 
       dataType:"json",
       success:function(data){
          $("#travelbody").empty();
          var ary = data.list;
          for(var i=0;i<ary.length;i++){
           var obj = ary[i];
            var tr="<tr>";                 
        			tr+="<td>"+obj.travel_Id+"</td>";
        			tr+="<td>"+obj.staff_Name+"</td>";
        			tr+="<td>"+obj.travel_Reason+"</td>";
        			tr+="<td>"+obj.travel_Place+"</td>";
        			tr+="<td>"+obj.start_Time+"</td>";
        			tr+="<td>"+obj.end_Time+"</td>";
        			if(obj.status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(obj.status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(obj.status_Name==2){
		        		tr+="<td>驳回</td>";
		        		}
        			if(obj.status_Name==0){                                                                     		        		
		        	 tr+="<td><button type='button' id='"+obj.travel_Id+"' class='updateStat btn btn-danger'>通过</button><button  id='"+obj.travel_Id+"' class='updateStat2 btn btn-primary' data-toggle='modal' data-target='#myModabh3'>驳回</button></td>";		        		
		        		}   			        		
        			tr+="</tr>";
        			$("#travelbody").append(tr);
          }
          //当前页的值
				$("#currPage3").val(data.pageNum);
				$("#weiye3").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					conFind3(last);
				})
				$("#currPage3").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage3").val();
					if(last<curr){
					   $("#currPage3").val(last);
					   conFind3(last);
					}
					if(curr<=0){
					  $("#currPage3").val(1);
					   conFind3(1);
					}
					 conFind3(curr);
				});
				if (data.isFirstPage) {
					$("#syy3").attr("disabled", "disabled");
					$("#shouye3").attr("disabled", "disabled");
				} else {
					$("#syy3").removeAttr("disabled", "disabled");
					$("#shouye3").removeAttr("disabled", "disabled");
				}
				if (data.isLastPage) {
					$("#xyy3").attr("disabled", "disabled");
					$("#weiye3").attr("disabled", "disabled");
				} else {
					$("#xyy3").removeAttr("disabled", "disabled");
					$("#weiye3").removeAttr("disabled", "disabled");
				}
       }
    });
  };
  	/* 按钮的赋值 */
	$("#syy3").click(function() {
		var currPage = parseInt($("#currPage").val());
		conFind3(currPage - 1);
	})
	$("#xyy3").click(function() {
		var currPage = parseInt($("#currPage").val());
		conFind3(currPage + 1);
	})
	$("#shouye3").click(function() {
		conFind3(1);
	})	
 $(function(){
		conFind3();
		})	
$("#travelbody").on("click",".updateStat",function(){
		 var travel_Id=this.id;
		$.ajax({
			url:"travel/updateStatus",
			type : "post",
        	data:{
        		"travel_Id" : travel_Id,
        	},
       	 	dataType : "text",//返回的数据类型
        	success : function(data) {
        		conFind3();
        	}	
		})
	})	
	$("#travelbody").on("click",".updateStat2",function(){
		var travel_Id=this.id;
		 $("#travelId").val(travel_Id);
		alert(travel_Id); 
		$.ajax({
			url:"travel/overrule",
			type : "post",
			 data:{
        		"travel_Id" : travel_Id,
        	},
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {
        		$("#operatet").val(data.operate);
        	}	
		})
	})
	
	function comitbht(){
				var obj=$("#formbht").serialize();
			$.ajax({
	        	url : "travel/updateStatus2",
	        	type : "post",	        		        	
	        	data :obj,
	       	 	dataType : 'text',//返回的数据类型
	        	success : function(data) {	        		
	        		conFind3();
	        	}
	 		});
			}

</script>