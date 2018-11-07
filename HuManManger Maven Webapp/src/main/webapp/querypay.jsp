<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'querypay.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
<script
	src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<%-- <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/demo.css">
 --%>
  </head>
  
  <body>
    	<!--查询人员考勤情况  -->
			<table class="table table-hover">

				<thead>
					<tr  class="warning">
					<th>部门名称</th>	
					<th>职务名称</th>
					<th>人员名称</th>
						<th>职务工资</th>
						<th>应缴保险总额</th>
						<th>津贴</th>
						<th>奖金</th>
						<th>考勤扣款总额</th>
						<th>应发工资</th>
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
			
			
			<!--查看详情  -->
					<div class="container">
	<div class="row clearfix" >
		<div class="col-md-12 column">
			 <a id="modal-880261"  role="button" class="btn" ></a>
			
			<div class="modal fade" id="modal-xq" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
				<div class="modal-dialog">
					<div class="modal-content"  style="width:1000px">
						<div class="modal-header">
							 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">
								薪资详情
							</h4>
						</div>
						<div class="modal-body" >
					
			<div id="myTabContent" class="tab-content">
		<div class="tab-pane fade in active" id="home">
			
			<table class="table table-condensed table-bordered">
 
				<tbody id="tbody2">

			</table>
			
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
			
			<!--  修改模态框-->		
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
								修改薪资
							</h4>
						</div>
						<div class="modal-body" >
					
			<div id="myTabContent" class="tab-content">
		<div class="tab-pane fade in active" id="home">
			<p>
			<form class="form-horizontal" role="form" id="form">
					<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">薪资基数编号</label>
					<div class="col-sm-3">
							<input type="hidden"  name="payid"  id="pid">
					</div>
				</div>
					<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">部门名称</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" 
							placeholder="请项目编号"  id="deparname" readonly="readonly">
							<input type="hidden"  name="departmentId"  id="deparid">
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">人员名称</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" 
							placeholder="请项目编号" id="staffname" readonly="readonly">
							<input type="hidden"  name="staff_id"  id="staffid">
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">职务工资</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" 
							placeholder="请项目编号" name="tax_salary" id="tax" >
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">保险总额</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" 
							placeholder="请项目编号" name="insurance" id="insur" readonly="readonly">
					</div>
						<input type="button" class="btn btn-default" value="计算保险总额"
							onclick="bx()">
				</div>
				
				
				
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">津贴</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" 
							placeholder="请项目编号" name="subvention" id="sub">
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">奖金</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" 
							placeholder="请项目编号" name="Bonus" id="bonus" readonly="readonly">
					</div>
				</div>
				
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">考勤扣款总额</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" 
							placeholder="请项目编号" name="K_withhold" id="with" readonly="readonly">
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">应发工资</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" 
							placeholder="应发工资" name="after_tax_salary" id="after_tax" readonly="readonly">
					</div>
					<input type="button" class="btn btn-default" value="计算应发工资"
							onclick="bx2()">
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
  
  	
	
	
		
	//获取查询的列值,方便修改
$(function(){
	$("#tbody").on("click",".update",function(){
	//获取福利编号  并将值加到修改的input内
	 var payid=$(this).parent().parent().find("#pay").html();
	   $("#pid").val(payid);
	
	//获取部门编号姓名  并将值加到修改的input内
	   var deparname=$(this).parent().parent().find("#dname").html();
	   $("#deparname").val(deparname);
	  var deparid=$(this).parent().parent().find("#did").html();
	  $("#deparid").val(deparid);
	  
	  //获取职务编号姓名  并将值加到修改的input内
	   var positiname=$(this).parent().parent().find("#positiname").html();
	   $("#posname").val(positiname);
	  var positid=$(this).parent().parent().find("#positid").html();
	  $("#posid").val(positid);
	    //获取员工编号姓名  并将值加到修改的input内
	  var staffname=$(this).parent().parent().find("#staname").html();
	  $("#staffname").val(staffname); 
	   var staffid=$(this).parent().parent().find("#stid").html();
	  $("#staffid").val(staffid); 
	  
	  
	   //获取职务工资  并将值加到修改的input内
	    var tax=$(this).parent().parent().find("#sal").html();
	  $("#tax").val(tax);
	   //获取保险总额  并将值加到修改的input内
	  var insur=$(this).parent().parent().find("#insuran").html();
	  $("#insur").val(insur);
	  //获取津贴  并将值加到修改的input内
	    var sub=$(this).parent().parent().find("#subven").html();
	  $("#sub").val(sub);
	    //获取奖金  并将值加到修改的input内
	    var bonus=$(this).parent().parent().find("#bon").html();
	  $("#bonus").val(bonus);
	   
	   //获取考勤扣款  并将值加到修改的input内
	    var withhold=$(this).parent().parent().find("#withhold").html();
	  $("#with").val(withhold);
	   
	  });
	})
	//计算保险总额
	function bx(){
	  //获取职务工资  并将值加到修改的input内
	    var tax=$("#tax").val();
	    var insur=tax*0.08
	    $("#insur").val(insur);
	}
	//计算应发工资
 function bx2() {
  		var yf1 = $("#tax").val(); //职务工资
  		 var num1 = parseInt(yf1); 
  		var yf2 = $("#insur").val(); //个人保险扣款
  		 var num2 = parseInt(yf2); 
  		var yf3 = $("#sub").val(); //津贴
  		  var num3 = parseInt(yf3); 
  		var yf4 = $("#bonus").val(); //奖金
  		  var num4 = parseInt(yf4);  
  		var yf5 = $("#with").val(); //考勤扣款
  	  var num5 = parseInt(yf5);  
      
  		var yf = num1 - num2 + num3 + num4 - num5; //应发工资=职务工资-个人保险扣款+津贴+奖金-考勤扣款
  		$("#after_tax").val(yf);
  		  if(yf5>30){
	 			$("#bonus").val(0);
	 			}else{
	 			$("#bonus").val(200);
	 			}
  	}
  	
  	
  	//单挑查询薪资各个总额详情
  	
  	/* $(function(){
				$("#tbody").on("click",".update",function(){
					var id=this.id;
					
					$.ajax({
						url:"pay/selectid",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
							
							$("#project_id").val(data[0].project_id);
							$("#project_name").val(data[0].project_name);
							$("#project_type").val(data[0].project_type);
						}
					});
				})
			}) */
  		//修改
			function update1(){
				var obj=$("#form").serialize();
				 
				$.ajax({
					url : "pay/payupdate",
					type : "post",
					async : true,
					 data:obj,//数据类型不需要转化成json
					dataType : 'text', //返回类型type
					success : function(data) {
						findAll();
						location.reload();
					}
				});
			}		
  	/*删除  */
					$(document).on("click",".delete",function(){
						 var id=this.id;
	   alert(id);
					 	if(confirm("确认删除？")){
					 		$.ajax({
					 		url : "pay/paydelete",
					 		data : {"payid":id},
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
					
					//单条查询详情
					 $(function(){
				$("#tbody").on("click",".xq",function(){
					var id=this.id;
					$.ajax({
						url:"pay/querypayid",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
				
				$("#tbody2").html("");
				for (var i = 0; i < data.length; i++) {
					var obj = data[i];
					
					var tr = "<tr>";
					tr += "<tr>"
					tr += "<td>部门名称</td><td>" + obj.departmentName + "</td>";
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>职务名称 </td><td>" + obj.positionName + "</td>";
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>员工名称</td><td>" + obj.STAFF_NAME + "</td>";
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>职务工资</td><td>" + obj.tax_salary + "</td>";
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>奖金(元)</td><td>" + obj.Bonus + "</td>";
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>津贴(元)</td><td>" + obj.subvention + "</td>";
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>考勤扣款总额(元)</td><td>" + obj.K_withhold + "</td>";
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>个人养老保险(元)</td><td>" + obj.endowment_insurance + "</td>";//个人养老
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>个人医疗保险(元)</td><td>" + obj.medical_insurance + "</td>";//个人医疗
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>个人生育保险(元)</td><td>" + obj.birth_insurance + "</td>";//个人生育
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>个人失业保险(元)</td><td>" + obj.unemployment_insurance + "</td>";//个人失业
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>个人工伤保险(元)</td><td>" + obj.injury_insurance + "</td>";//个人工伤
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>个人住房公积金(元)</td><td>" + obj.housing_fund + "</td>";//个人住房
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>个人保险扣款总额(元)</td><td>" + obj.B_withhold + "</td>";//个人总额
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>单位养老保险(元)</td><td>" + obj.endowment_insurance_d + "</td>";
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>单位医疗保险(元)</td><td>" + obj.medical_insurance_d + "</td>";
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>单位生育保险(元)</td><td>" + obj.birth_insurance_d + "</td>";
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>单位失业保险(元)</td><td>" + obj.unemployment_insurance_d + "</td>";
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>单位工伤保险(元)</td><td>" + obj.injury_insurance_d + "</td>";
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>单位住房公积金(元)</td><td>" + obj.housing_fund_d + "</td>";
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>单位保险扣款总额(元)</td><td>" + obj.D_withhold + "</td>";
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>保险总额(元)</td><td>" + obj.insurance + "</td>";//保险总额
					tr += "</tr>";
					tr += "<tr>"
					tr += "<td>应发工资(元)</td><td>" + obj.after_tax_salary + "</td>";//应发工资
					tr += "</tr>";
					$("#tbody2").append(tr);
					}
						}
					});
				})
			})
			
			
			
			
			 function findAll(startPage){
    $.ajax({
       url : "pay/querypay",
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
					tr += "<td id='pay' style='display:none'>" + obj.payid + "</td>";
					tr += "<td id='did' style='display:none'>" + obj.departmentId + "</td>";
					tr += "<td id='dname'>" + obj.departmentName + "</td>";
				    tr += "<td id='positid' style='display:none'>" + obj.positionId + "</td>";
					tr += "<td id='pay' id='positiname'>" + obj.positionName + "</td>";
					tr += "<td id='stid' style='display:none'>" + obj.staff_id + "</td>";
					tr += "<td id='staname'>" + obj.STAFF_NAME + "</td>";
					tr += "<td id='sal'>" + obj.tax_salary + "</td>";	
					tr += "<td id='insuran'>" + obj.insurance + "</td>";//保险总额
					tr += "<td id='subven'>" + obj.subvention + "</td>";//津贴
					tr += "<td id='bon'>" + obj.Bonus + "</td>";//奖金
					tr += "<td id='withhold'>" + obj.K_withhold + "</td>";//考勤扣款总额
					tr += "<td id='tax_sala'>" + obj.after_tax_salary + "</td>";//应发工资
					tr += "<td><input type='button' id='" + obj.payid + "' value='修改' class='update  btn btn-default' href='#modal-container-8802612' data-toggle='modal'></td>";
                    tr +="<td><input type='button' id='" + obj.payid + "' value='删除' class='delete btn btn-default'></td>";
                    tr +="<td><input type='button' id='" + obj.payid + "' value='查看详情' class='xq btn btn-default' href='#modal-xq' data-toggle='modal'></td>";
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
  $(function() {
		findAll(1);
	})
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
	
  </script>
</html>
