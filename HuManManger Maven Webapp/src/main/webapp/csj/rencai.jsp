<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'rencai.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- 使用模态窗口引入bootstrap -->
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
   <%--  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css"> --%>
		
  </head>
  
  <body>
    	 <a href="csj/rencaiADD.jsp">新建人才</a>
   	<div  style="width:1300px">
	<table class="table table-condensed">
		<tr>
			<td>选择</td>
			<td>计划名称</td>
			<td>应聘者姓名</td>
			<td>出生日期</td>
			<td>联系电话</td>
			<td>学历</td>
			<td>专业</td>
			<td>入库时间</td>
			<td>操作</td>
		</tr>
		<tbody id="tbody"></tbody>
	</table>
</div>
    
   <div class="modal fade" id="poolModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
				    <input type="hidden"name="EXPERT_ID"  id="EXPERT_ID"  class="form-control">
				</td>
			</tr> 
			<tr>
			<td nowrap class="col-md-2 control-label" style="width: 10%">计划名称:</td>
				<td class="TableData" style="width: 20%">
					<input type="hidden"name="PLAN_NO" id="PLAN_NO" class="form-control">
				    <input type="text" id="PLAN_NAME" class="form-control">
				    
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">应聘者姓名:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="EMPLOYEE_NAME" id="EMPLOYEE_NAME" class="form-control">
				   </td>
			</tr>
			<tr>
			<td nowrap class="col-md-2 control-label" style="width: 10%">性别:</td>
				<td class="TableData" style="width: 20%">
					 <select class="sele form-control" name="EMPLOYEE_SEX">
        	                              <option value="1">男</option>
        	                              <option value="2">女</option>
        	                            </select>
				    
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">出生日期:</td>
				<td class="TableData" style="width: 20%">
				   <input type="date"name="EMPLOYEE_BIRTH" id="EMPLOYEE_BIRTH" class="form-control">
				   </td>
			</tr>
			<tr>
			 
				<td nowrap class="col-md-4 control-label" style="width: 20%">年龄:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="EMPLOYEE_AGE" id="EMPLOYEE_AGE" class="form-control">
				   </td></tr>
			<tr>
			<td nowrap class="col-md-2 control-label" style="width: 10%">籍贯:</td>
				<td class="TableData" style="width: 20%">
				<select class="sele form-control" name="EMPLOYEE_NATIVE_PLACE">
        	                              <option value="1">北京</option>
        	                              <option value="2">天津</option>
        	                              <option value="3">上海</option>
        	                              <option value="4">重庆</option>
        	                              <option value="6">河北</option>
        	                              <option value="7">山西</option>
        	                              <option value="8">辽宁</option>
        	                              <option value="9">吉林</option>
        	                              <option value="10">黑龙江</option>
        	                              <option value="11">江苏</option>
        	                              <option value="12">浙江</option>
        	                              <option value="13">安徽</option>
        	                              <option value="14">福建</option>
        	                              <option value="15">江西</option>
        	                              <option value="16">山东</option>
        	                              <option value="17">河南</option>
        	                              <option value="18">湖北</option>
        	                              <option value="19">湖南</option>
        	                              <option value="20">广东</option>
        	                              <option value="21">海南</option>
        	                              <option value="22">四川</option>
        	                              <option value="23">贵州</option>
        	                              <option value="24">云南</option>
        	                              <option value="25">陕西</option>
        	                              <option value="26">甘肃</option>
        	                              <option value="27">青海</option>
        	                              <option value="28">台湾</option>
        	                              <option value="29">内蒙古</option>
        	                              <option value="30">广西</option>
        	                              <option value="31">西藏</option>
        	                              <option value="32">宁夏</option>
        	                              <option value="33">新疆</option>
        	                              <option value="34">香港</option>
        	                              <option value="35">澳门</option>
        	                            </select>
					
				    
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">民族:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="EMPLOYEE_NATIONALITY" id="EMPLOYEE_NATIONALITY" class="form-control">
				   </td>
			</tr>
			<tr>
			<td nowrap class="col-md-2 control-label" style="width: 10%">政治面貌:</td>
				<td class="TableData" style="width: 20%">
					<select name="EMPLOYEE_POLITICAL_STATUS"  class="form-control">
                    <option value="1">群众</option>
					<option value="2">共青团员</option>
					<option value="3">中共党员</option>
					</select>
				    
				</td> 
			</tr>
			<tr><td>联系信息</td></tr>
			<tr>
			<td nowrap class="col-md-2 control-label" style="width: 10%">联系电话:</td>
				<td class="TableData" style="width: 20%">
					<input type="text"name="EMPLOYEE_PHONE" id="EMPLOYEE_PHONE" class="form-control">
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">邮箱:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="EMPLOYEE_EMAIL" id="EMPLOYEE_EMAIL" class="form-control">
				   </td>
			</tr>
			<td>教育背景</td>
			<tr>
			<td nowrap class="col-md-2 control-label" style="width: 10%">学历:</td>
				<td class="TableData" style="width: 20%">
					 <select class="sele form-control" name="EMPLOYEE_HIGHEST_SCHOOL" id="EMPLOYEE_HIGHEST_SCHOOL">
	                <option value="">请选择</option>
	                <option value="1">小学</option>
					<option value="2">初中</option>
					<option value="3">高中</option>
					<option value="4">中专</option>
					<option value="5">大专</option>
					<option value="6">本科</option>
					<option value="7">研究生</option>
					<option value="8">博士</option>
					<option value="9">博士后</option>
					<option value="11">技校</option>
					            </select>
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">学位:</td>
				<td class="TableData" style="width: 20%">
				    <select class="sele form-control" name="EMPLOYEE_HIGHEST_DEGREE" id="EMPLOYEE_HIGHEST_DEGREE">
                <option value="" selected>请选择</option>
                <option value="1">博士后</option>
				<option value="2">博士</option>
				<option value="3">MBA</option>
				<option value="4">硕士</option>
				<option value="5">双学士</option>
				<option value="6">学士</option>
				<option value="7">无</option>
				            </select>
				   </td>
			</tr>
			<tr>
			<td nowrap class="col-md-2 control-label" style="width: 10%">毕业时间:</td>
				<td class="TableData" style="width: 20%">
					<input type="date"name="GRADUATION_DATE" id="GRADUATION_DATE" class="form-control">
				   
				    
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">毕业学校:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="GRADUATION_SCHOOL" id="GRADUATION_SCHOOL" class="form-control">
				   </td>
			</tr>
			<tr>
			<td nowrap class="col-md-2 control-label" style="width: 10%">专业:</td>
				<td class="TableData" style="width: 20%">
					<input type="hidden"name="EMPLOYEE_MAJOR" id="EMPLOYEE_MAJOR" class="form-control">
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">计算机水平:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="COMPUTER_LEVEL" id="COMPUTER_LEVEL" class="form-control">
				   </td>
			</tr>
			<tr>
			<td nowrap class="col-md-2 control-label" style="width: 10%">外语语种:</td>
				<td class="TableData" style="width: 20%">
					<input type="hidden"name="FOREIGN_LANGUAGE1" id="FOREIGN_LANGUAGE1" class="form-control">
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">外语水平:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="FOREIGN_LEVEL1" id="FOREIGN_LEVEL1" class="form-control">
				   </td>
			</tr>
			<tr><td>其他</td></tr>
			<tr>
			<td nowrap class="col-md-2 control-label" style="width: 10%">入库时间:</td>
				<td class="TableData" style="width: 20%">
					<input type="date"name="RUKUTIME" id="RUKUTIME" class="form-control">
				   
				    
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">招聘渠道:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="RECRU_CHANNEL" id="RECRU_CHANNEL" class="form-control">
				   </td>
			</tr>
			<tr>
			<td nowrap class="col-md-2 control-label" style="width: 10%">是否通过筛选:</td>
				<td class="TableData" style="width: 20%">
					<select class="sele form-control" name="WHETHER_BY_SCREENING" id="WHETHER_BY_SCREENING">
        	                              <option value="1">是</option>
        	                              <option value="2">否</option>
        	                            </select>
				</td> 
			</tr>
		</table>
	</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal"onclick="pool_update()">修改</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
				</div>
			</div>
		</div>
     				

  </body>
</html>
<script type="text/javascript">
		$(function(){ 
			queryAll();
		})
		
	/*查询  */
		function queryAll(){
		$.ajax({
        	url : "hrpool/queryAll",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
       	 	dataType : 'json', 
        	success : function(data) {
        		$("#tbody").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    tr+="<td><input type='checkbox' ></td>";
        		    tr+="<td>"+data[i].PLAN_NAME+"</td>";
        		    tr+="<td>"+data[i].EMPLOYEE_NAME+"</td>";
        		    tr+="<td>"+data[i].EMPLOYEE_BIRTH+"</td>";
        		    tr+="<td>"+data[i].EMPLOYEE_PHONE+"</td>";
        		    tr+="<td>"+data[i].EMPLOYEE_HIGHEST_SCHOOL+"</td>";
        		    tr+="<td>"+data[i].EMPLOYEE_MAJOR+"</td>";
        		    tr+="<td>"+data[i].RUKUTIME+"</td>";
        		    tr+="<td><input type='button' id='"+data[i].EXPERT_ID+"' value='详细信息' href='#details_modal'  data-toggle='modal'  class='details btn btn-primary'></td>";
        		   	tr+="<td><input type='button' data-toggle='modal' data-target='#poolModal'  id='"+data[i].EXPERT_ID+"'   class='queryByid  btn btn-default' value='修改'></td>";
        		   	tr+="<td><input type='button' id='"+data[i].EXPERT_ID+"' value='删除' class='deletePool btn btn-primary'></td>";
        		    tr+="</tr>";
        		    $("#tbody").append(tr); 
        	}}
 		}); 
	 }
		
		 /* 删除 */
    /*删除*/
	 $(function(){
				$("#tbody").on("click",".deletePool",function(){
					var id=this.id;
					alert(id)
					$.ajax({
						url:"hrpool/deletePool",
						type:"post",
						async:true,
						data:{"EXPERT_ID":id},
						dataType: 'Json',
						success:function(data){
						queryAll();
						}
					});
				})
			})
    /*修改前查询  */
     $(function(){
				$("#tbody").on("click",".queryByid",function(){
					var id=this.id;
					$.ajax({
						url:"hrpool/queryByid",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
						    $("#EXPERT_ID").val(data[0].EXPERT_ID);
						    $("#PLAN_NAME").val(data[0].PLAN_NAME);
						    $("#EMPLOYEE_NAME").val(data[0].EMPLOYEE_NAME);
						    $("#EMPLOYEE_SEX").val(data[0].EMPLOYEE_SEX);
						    $("#EMPLOYEE_BIRTH").val(data[0].EMPLOYEE_BIRTH);
						    $("#EMPLOYEE_AGE").val(data[0].EMPLOYEE_AGE);
						    $("#EMPLOYEE_NATIVE_PLACE").val(data[0].EMPLOYEE_NATIVE_PLACE);
						    $("#EMPLOYEE_NATIONALITY").val(data[0].EMPLOYEE_NATIONALITY);
						    $("#EMPLOYEE_POLITICAL_STATUS").val(data[0].EMPLOYEE_POLITICAL_STATUS);
						    $("#EMPLOYEE_PHONE").val(data[0].EMPLOYEE_PHONE);
						    $("#EMPLOYEE_EMAIL").val(data[0].EMPLOYEE_EMAIL);
						    $("#EMPLOYEE_HIGHEST_SCHOOL").val(data[0].EMPLOYEE_HIGHEST_SCHOOL);
						    $("#EMPLOYEE_HIGHEST_DEGREE").val(data[0].EMPLOYEE_HIGHEST_DEGREE);
						    $("#GRADUATION_DATE").val(data[0].GRADUATION_DATE);
						    $("#GRADUATION_SCHOOL").val(data[0].GRADUATION_SCHOOL);
						    $("#EMPLOYEE_MAJOR").val(data[0].EMPLOYEE_MAJOR);
						    $("#COMPUTER_LEVEL").val(data[0].COMPUTER_LEVEL);
						    $("#FOREIGN_LANGUAGE1").val(data[0].FOREIGN_LANGUAGE1);
						    $("#FOREIGN_LEVEL1").val(data[0].FOREIGN_LEVEL1);
						    $("#RUKUTIME").val(data[0].RUKUTIME);
						    $("#RECRU_CHANNEL").val(data[0].RECRU_CHANNEL);
						   /*  $("#WHETHER_BY_SCREENING").val(data[0].WHETHER_BY_SCREENING); */
						    
						}
					});
				})
			})
    /* 模态框修改 */
	   function pool_update(){
			  var obj=$("#Update_form").serialize();
		    $.ajax({
		       url : "hrpool/updatePool",
        	   type : "post",
        	   data :obj,
	           dataType:'json',
        	   success : function(data) {
        	      queryAll();
        	}
 		}); 
	 }
		</script>