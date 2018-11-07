<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'welf.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
<script	src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

	
  </head>

  <body>
  <table class="table table-hover">

				<thead>
				 <h3>福利操作</h3> 
					<tr class="warning">
						<th>部门名称</th>
						<th>人员名称</th>
						<th>福利项目名</th>
						<th>福利活动时间</th>
						<th>金额</th>
						<th>是否纳税</th>
						<th>物品</th>
						<th>备注</th>
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
			
			
			
			
			<div id="myTabContent" class="tab-content">
		<div class="tab-pane fade in active" id="home">
			<p>
			<form class="form-horizontal" role="form" id="form1">
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">部门名:</label>
					<div class="col-sm-3">
					
						<input type="text" class="form-control" 
							placeholder="部门名" id="bname" >
							<input type="hidden"  name="departmentId"  id="bid">
							
					</div>
					
				
					<label for="lastname" class="col-sm-1 control-label">员工名:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" 
							placeholder="员工名" id="sname">
							<input type="hidden"  name="staff_id"  id="sid">
					</div>
					<a href="#modal-container-880261" data-toggle="modal">选择部门人员</a> 
				</div>
				
                   <div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">福利时间:</label>
					<div class="col-sm-3">
						<input type="Date" class="form-control" id="lastname"
							placeholder="福利时间" name="issue_date">
					</div>
					<label for="lastname" class="col-sm-1 control-label">福利项目名称:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname"
							placeholder="福利请项目名称" name="welfare_type">
					</div>
				</div>
				
						
				
				   <div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">福利物品:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname"
							placeholder="福利物品" name="goods">
					</div>
			        <label for="lastname" class="col-sm-1 control-label">福利金额:</label>
					<div class="col-sm-3">
						<input type="text	" class="form-control" id="lastname"
							placeholder="金额" name="welfare_monery">
					</div>
					</div>
					
				
				
				
			
			
				  <div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">备注</label>
					<div class="col-sm-3">
						<textarea class="form-control" rows="3" name="remark">
                      </textarea>					
                      </div>
                      		<label for="lastname" class="col-sm-1 control-label">是否纳税:</label>
					<div class="col-sm-3">
						 <select class="form-control" name="tax" id="sele1">
      <option value="是">是</option>
      <option value="否">否</option>
      </select>
				</div>
				
</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-7">
						<input type="button" class="btn btn-default" value="添加"
							onclick="save()">
					</div>
				</div>
			</form>
			</div>
			</div>
			
			
			
			
			
			<!-- 添加部门人事模态框 -->
			
			
			
			<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			 <a id="modal-880261"  role="button" class="btn" ></a>
			
			<div class="modal fade" id="modal-container-880261" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content" style="width:500px">
						<div class="modal-header">
							 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">
								部门信息
							</h4>
						</div>
						<div class="modal-body">
							
							<table class="table table-hover">
				<thead>
					<tr class="warning">
						<th>部门编号</th>
						<th>部门名称</th>
						<th>人员编号</th>
						<th>人员名称</th>
					</tr>
				</thead>
				<tbody id="tbody2">

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
								
						<div class="modal-footer">
							 <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> 
					</div>
					
				</div>
				
			</div>
			
		</div>
	</div>
</div>	
	</div>	
		
		
		<!-- 修改页面模态框 -->
		
				
			<div class="container">
	<div class="row clearfix" >
		<div class="col-md-12 column">
			 <a id="modal-880261"  role="button" class="btn" ></a>
			
			<div class="modal fade" id="modal-container-8802612" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
				<div class="modal-dialog">
					<div class="modal-content"  style="width:1000px">
						<div class="modal-header">
							 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">
								修改福利
							</h4>
						</div>
						<div class="modal-body" >
					
			<div id="myTabContent" class="tab-content">
		<div class="tab-pane fade in active" id="home">
			<p>
			<form class="form-horizontal" role="form" id="form2">
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">部门名:</label>
					<div class="col-sm-3">
					<input type="hidden"  name="welfareid"  id="welfareid">
						<input type="text" class="form-control" 
							placeholder="部门名" id="deparname" readonly="readonly">
							<input type="hidden"  name="departmentId"  id="deparid">
							
					</div>
					
				
					<label for="lastname" class="col-sm-1 control-label">员工名:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="staffname"
							placeholder="福利请项目名称" readonly="readonly">
							<input type="hidden"  name="staff_id"  id="staffid">
							
					</div>
					
				</div>
                   <div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">福利时间:</label>
					<div class="col-sm-3">
						<input type="Date" class="form-control" id="time"
							placeholder="福利时间" name="issue_date">
					</div>
					<label for="lastname" class="col-sm-1 control-label">福利项目名称:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="welfname"
							placeholder="福利请项目名称" name="welfare_type">
					</div>
				</div>
				
						
				
				   <div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">福利物品:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="goods"
							placeholder="福利物品" name="goods">
					</div>
			        <label for="lastname" class="col-sm-1 control-label">福利金额:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="money"
							placeholder="金额" name="welfare_monery">
					</div>
					</div>
					
				
			
				  <div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">备注</label>
					<div class="col-sm-3">
						<textarea class="form-control" rows="3" name="remark" id="bz">
                      </textarea>					
                      </div>
                      		<label for="lastname" class="col-sm-1 control-label">是否纳税:</label>
					<div class="col-sm-3">
						 <select class="form-control" name="tax" id="sele">
      <option value="是">是</option>
      <option  value="否">否</option>
      </select>
				</div>
				</div>


				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-7">
						<input type="button" class="btn btn-default" value="修改"
							onclick="update1()">
					</div>
				</div>
			</form>
			</div>
			</div>
			
							</div>
						<div class="modal-footer">
							 <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> 
					</div>
					
				</div>
				
			</div>
			
		</div>
	</div>
</div>	
	</div>		
  </body>
  
  
  <script>
//查询福利全部

		 function findAll(startPage){
    $.ajax({
       url : "welfare/queryWelfare",
       type:"post",
       async : true,
       data : {
				"startPage" : startPage
			}, 
       dataType:"json",
     		success : function(data) {
				

				$("#tbody").html("");
				 var ary = data.list;
                  for(var i=0;i<ary.length;i++){
                     var obj = ary[i];
					var tr = "<tr>";
					tr += "<td id='welfid' style='display:none'>" + obj.welfareid + "</td>"
					tr += "<td id='deid' style='display:none'>" + obj.departmentId + "</td>";
					tr += "<td id='dname'>" + obj.departmentName + "</td>";
					tr += "<td id='staid' style='display:none'>" + obj.staff_id + "</td>";
					tr += "<td id='staname'>" + obj.STAFF_NAME + "</td>";
					tr += "<td id='welftype'>" + obj.welfare_type + "</td>";
					tr += "<td id='date'>" + obj.issue_date + "</td>";
					tr += "<td id='welfmoney'>" + obj.welfare_monery + "</td>";
					tr += "<td id='welftax'>" + obj.tax + "</td>";
					tr += "<td id='welfgoods'>" + obj.goods + "</td>";
					tr += "<td id='welfremark'>" + obj.remark + "</td>";
					tr += "<td><input type='button' id='" + obj.welfareid + "' value='修改' class='update btn btn-default' href='#modal-container-8802612' data-toggle='modal'></td>";
                    tr +="<td><input type='button' id='" + obj.welfareid + "' value='删除' class='delete btn btn-default'></td>"
					tr += "</tr>";
					$("#tbody").append(tr);
          }
          //当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					findAll(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if(last<curr){
					   $("#currPage").val(last);
					   findAll(last);
					}
					if(curr<=0){
					  $("#currPage").val(1);
					   findAll(1);
					}
					 findAll(curr);
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
		findAll(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		findAll(currPage + 1);
	})
	$("#shouye").click(function() {
		findAll(1);
	})
  $(function() {
		findAll(1);
	})
	
	//获取查询的列值,方便修改
$(function(){
	$("#tbody").on("click",".update",function(){
	//获取福利编号  并将值加到修改的input内
	 var welfid=$(this).parent().parent().find("#welfid").html();
	   $("#welfareid").val(welfid);
	
	//获取部门编号姓名  并将值加到修改的input内
	   var deparname=$(this).parent().parent().find("#dname").html();
	   $("#deparname").val(deparname);
	  var deparid=$(this).parent().parent().find("#deid").html();
	  $("#deparid").val(deparid);
	    //获取员工编号姓名  并将值加到修改的input内
	  var staffname=$(this).parent().parent().find("#staname").html();
	  $("#staffname").val(staffname); 
	   var staffid=$(this).parent().parent().find("#staid").html();
	  $("#staffid").val(staffid); 
	   //获取福利活动时间  并将值加到修改的input内
	    var time=$(this).parent().parent().find("#date").html();
	  $("#time").val(time);
	   //获取福利项目名  并将值加到修改的input内
	  var welfname=$(this).parent().parent().find("#welftype").html();
	  $("#welfname").val(welfname);
	  //获取福利活动物品  并将值加到修改的input内
	    var goods=$(this).parent().parent().find("#welfgoods").html();
	  $("#goods").val(goods);
	    //获取福利活动金额  并将值加到修改的input内
	    var money=$(this).parent().parent().find("#welfmoney").html();
	  $("#money").val(money);
	   
	   //获取备注  并将值加到修改的input内
	    var remark=$(this).parent().parent().find("#welfremark").html();
	  $("#bz").val(remark);
	   //获取是否纳税  并将值加到修改的input内
	    var tax=$(this).parent().parent().find("#welftax").html();
	  $("#sele").val(tax);
	  });
	})
	
	//添加
	function save() {
		/* 表单序列化 */
		var str = $("#form1").serialize();
		/* var ddd=3;
		$("#project_id").val(ddd);
		alert(333); */
		$.ajax({
			url : "welfare/welfSave",
			type : "post",
			async : true,
			data : $("#form1").serialize(), //数据类型不需要转化成json
			dataType : 'text', //返回类型type
			success : function(data) {
				findAll();
					if(data>0){
					alert("添加成功");
					location.reload();
				}else{
					alert("人员福利添加重复");
					location.reload();
				}
			}
		});
	}
	//查询部门
	
		 function findAll2(startPage){
    $.ajax({
       url : "welfare/queryDepar",
       type:"post",
       async : true,
       data : {
				"startPage" : startPage
			}, 
       dataType:"json",
     		success : function(data) {
				
 
				$("#tbody2").html("");
				var ary = data.list;
                for(var i=0;i<ary.length;i++){
                   var obj = ary[i];
					var tr = "<tr>";
					tr += "<td id='bmid'>" + obj.departmentId + "</td>";
					tr += "<td id='bmname'>" + obj.departmentName + "</td>";
					tr += "<td id='rsid'>" + obj.staff_id + "</td>";
					tr += "<td id='rsname'>" + obj.STAFF_NAME + "</td>";
                    tr +="<td><input type='button' id='" + obj.departmentId+ "' value='设置福利' class='fl btn btn-default''></td>"
					tr += "</tr>";
					$("#tbody2").append(tr);
					
          }
          //当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					findAll2(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if(last<curr){
					   $("#currPage").val(last);
					   findAll2(last);
					}
					if(curr<=0){
					  $("#currPage").val(1);
					   findAll2(1);
					}
					 findAll2(curr);
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
		findAll2(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		findAll2(currPage + 1);
	})
	$("#shouye").click(function() {
		findAll2(1);
	})
  
  $(function() {
		findAll2(1);
	})
	
	
	
//添加操作的，部门人员名称编号通过点击获得
$(function(){
	$("#tbody2").on("click",".fl",function(){
	//获取部门编号姓名  并将值加到薪资技术的input内
	   var bm=$(this).parent().parent().find("#bmname").html();
	  $("#bname").val(bm);
	  var bid=$(this).parent().parent().find("#bmid").html();
	  $("#bid").val(bid);
	    //获取员工编号姓名  并将值加到薪资技术的input内
	  var ygname=$(this).parent().parent().find("#rsname").html();
	  alert(ygname);
	  $("#sname").val(ygname); 
	  
	   var ygid=$(this).parent().parent().find("#rsid").html();
	  $("#sid").val(ygid); 
	  location.reload();
	  });
	})
		/*删除  */
					$(document).on("click",".delete",function(){
						 var id=this.id;
					 	if(confirm("确认删除？")){
					 		$.ajax({
					 		url : "welfare/welfdelete",
					 		data : {"welfareid":id},
					 		type : "post",
					 		dataType : 'text',
					 		success:function(data){
					 			/* alert(data); */
					 			findAll();
					 		}
					 	});
					 	}else{
					 		alert("取消删除！");
					 	}
					 	
					})	
			
			//修改
			function update1(){
				var obj=$("#form2").serialize(); 
				$.ajax({
					url : "welfare/welfupdate",
					type : "post",
					async : true,
					 data:obj,//数据类型不需要转化成json
					dataType : 'text', //返回类型type
					success : function(data) {
						location.reload();
					}
				});
			}		

</script>
  
</html>
