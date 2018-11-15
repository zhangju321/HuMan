<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'rencaiADD.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- 使用模态窗口引入bootstrap -->
   <%--  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css"> --%>
   <link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
   
  </head>
  
  <body>
    <form method="post" id="form1">
		<table class="table table-bordered ><!-- class="Table" width="50%" align="center" --> 
			<tr align="center" class="TableControl">
				<td colspan=4 nowrap>
					<p></p>
				</td>
			</tr>
			<tr>
				
				<td class="TableData" style="width: 20%">
				    <input type="hidden"name="EXPERT_ID" class="form-control">
				</td>
			</tr> 
			<tr>
			<td nowrap class="col-md-2 control-label" style="width: 10%">计划名称:</td>
				<td class="TableData" style="width: 20%">
					<select class="planNo form-control" name="planNo" id="queryplan">
					</select>
				    
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">应聘者姓名:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="EMPLOYEE_NAME" class="form-control">
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
				   <input type="date"name="EMPLOYEE_BIRTH"  class="form-control">
				   </td>
			</tr>
			<tr>
			 
				<td nowrap class="col-md-4 control-label" style="width: 20%">年龄:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="EMPLOYEE_AGE" class="form-control">
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
				   <input type="text"name="EMPLOYEE_NATIONALITY" class="form-control">
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
					<input type="text"name="EMPLOYEE_PHONE" class="form-control">
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">邮箱:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="EMPLOYEE_EMAIL" class="form-control">
				   </td>
			</tr>
			<tr><td>教育背景</td></tr>
			<tr>
			<td nowrap class="col-md-2 control-label" style="width: 10%">学历:</td>
				<td class="TableData" style="width: 20%">
					 <select class="sele form-control" name="EMPLOYEE_HIGHEST_SCHOOL">
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
				   <select class="sele form-control" name="EMPLOYEE_HIGHEST_DEGREE">
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
					<input type="date"name="GRADUATION_DATE" class="form-control">
				   
				    
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">毕业学校:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="GRADUATION_SCHOOL" class="form-control">
				   </td>
			</tr>
			<tr>
			<td nowrap class="col-md-2 control-label" style="width: 10%">专业:</td>
				<td class="TableData" style="width: 20%">
					<input type="hidden"name="EMPLOYEE_MAJOR" class="form-control">
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">计算机水平:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="COMPUTER_LEVEL" class="form-control">
				   </td>
			</tr>
			<tr>
			<td nowrap class="col-md-2 control-label" style="width: 10%">外语语种:</td>
				<td class="TableData" style="width: 20%">
					<input type="hidden"name="FOREIGN_LANGUAGE1" class="form-control">
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">外语水平:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="FOREIGN_LEVEL1" class="form-control">
				   </td>
			</tr>
			<tr><td>其他</td></tr>
			<tr>
			<td nowrap class="col-md-2 control-label" style="width: 10%">入库时间:</td>
				<td class="TableData" style="width: 20%">
					<input type="date"name="RUKUTIME" class="form-control">
				   
				    
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">招聘渠道:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="RECRU_CHANNEL" class="form-control">
				   </td>
			</tr>
			<tr>
			<td nowrap class="col-md-2 control-label" style="width: 10%">是否通过筛选:</td>
				<td class="TableData" style="width: 20%">
				<select class="sele form-control" name="WHETHER_BY_SCREENING">
        	                              <option value="1">是</option>
        	                              <option value="2">否</option>
        	                            </select>
				</td> 
			</tr>
			<tr align="center" class="TableControl">
                 <td colspan=4 nowrap>
        <input type="button" class="btn btn-default" value="保存"  onclick="Poolsave()">
		</table>
	</form>
  </body>
</html>
<<script type="text/javascript">

$(function(){ 
		queryplan();
		 Phoneyan();
		})
	 
	 function Poolsave(){
			var obj=$("#form1").serialize();
			alert(obj);
		    $.ajax({
		       url : "hrpool/savehrpool",
        	   type : "post",
        	   data :obj,
	           dataType:'json',
        	   success : function(data) {
        	      alert("123");
        	}
 		}); 
	 }
	  //计划
			function queryplan(){
			alert(2);
				  $.ajax({
				        url:"hrpool/queryplan",
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        	  for(var i=0;i<data.length;i++){
				        		$("#queryplan").append("<option value='"+data[i].PLAN_NO+"'>"+data[i].PLAN_NAME+"</option>"); 
				         	
				        	}  
				        	
				        }
			      }); 
	
	 } 
	//手机号正则
	function Phoneyan(){
	var phoneReg = /(^1[3|4|5|7|8]\d{9}$)|(^09\d{8}$)/;
	//电话
	var phone = $.trim($('#EMPLOYEE_PHONE').val());
	if (!phoneReg.test(phone)) {
		alert('请输入有效的手机号码！');
		return false;
	}
}
</script>
