<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'staffionSave.jsp' starting page</title>
    
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
  
			<form method="post" id="staf_form">
		<table class="table table-bordered ><!-- class="Table" width="50%" align="center" --> 
			<tr align="center" class="TableControl">
				<td colspan=4 nowrap>
					<p></p>
				</td>
			</tr>
			<tr><td>基本信息</td></tr>
			<tr>
				
				<td class="TableData" style="width: 20%">
				    <input type="hidden"name="staffId"  id="staff_id"  class="form-control">
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-2 control-label" style="width: 10%">部门:</td>
				<td class="TableData" style="width: 20%">
					<select class="department form-control" id="staffFind" name="departmentId">
					</select>
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">角色:</td>
				<td class="TableData" style="width: 20%">
				     <select class="roleId form-control" id="rolesFind" name="rolesId">
         </select>

      </td>
			</tr>
			<tr>
				<td nowrap class="col-md-1 control-label" style="width: 10%">工号:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="STAFF_NO" class="form-control">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">姓名:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="staffName" class="form-control">
				</td>
			</tr>
			<tr>
				<td nowrap class="col-md-1 control-label" style="width: 10%">身份证:</td>
				 <td class="TableData" style="width: 20%">
		          <input type="text" name="STAFF_CARD_NO" class="form-control">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">出生日期:</td>
				<td class="TableData" style="width: 20%">
		          <input type="date" name="STAFF_BIRTH" class="form-control">
				</td>
			</tr>
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">年龄:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="STAFF_AGE" class="form-control">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">性别:</td>
				<td class="TableData" style="width: 20%">
				    <select class="sele form-control" name=" STAFF_SEX">
        	                              <option value="1">男</option>
        	                              <option value="2">女</option>
        	                            </select>
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">籍贯:</td>
				<td class="TableData" style="width: 20%">
				     <select class="sele form-control" name="STAFF_NATIVE_PLACE">
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
				    <input type="text"name="STAFF_NATIONALITY" class="form-control">
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">政治面貌:</td>
				<td class="TableData" style="width: 20%">
				   <select name="STAFF_POLITICAL_STATUS"  class="form-control">
                    <option value="1">群众</option>
					<option value="2">共青团员</option>
					<option value="3">中共党员</option>
            </select>
				</td>
			</tr> 
			
					<tr>
						<td>联系信息</td>
					</tr>
			
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">邮箱:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="STAFF_EMAIL" class="form-control">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">联系电话:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="STAFF_PHONE" class="form-control">
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">家庭住址:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="HOME_ADDRESS" class="form-control">
				</td>
			</tr> 
			<tr><td>教育背景</td></tr>
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">学历:</td>
				<td class="TableData" style="width: 20%">
				 <select class="sele form-control" name="STAFF_HIGHEST_SCHOOL">
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
				    <select class="sele form-control" name="STAFF_HIGHEST_DEGREE">
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
				<td nowrap class="col-md-4 control-label" style="width: 20%">毕业时间:</td>
				<td class="TableData" style="width: 20%">
				    <input type="date" name="GRADUATION_DATE" class="form-control">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">毕业学校:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text" name="GRADUATION_SCHOOL" class="form-control">
				</td>
			</tr> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">专业:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="STAFF_MAJOR" class="form-control">
				</td>
			</tr> 
			<tr><td>合同</td></tr>
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">合同签订时间:</td>
				<td class="TableData" style="width: 20%">
				    <input type="date"name="STAFF_CS" class="form-control">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">合同到期时间:</td>
				<td class="TableData" style="width: 20%">
				    <input type="date"name="STAFF_CTR" class="form-control">
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">建档时间:</td>
				<td class="TableData" style="width: 20%">
				    <input type="date"name="ADD_TIME" class="form-control">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">在职状态:</td>
				<td class="TableData" style="width: 20%">
				    <input type="hidden"name="workStatus" class="form-control">
				</td>
			</tr> 
			<tr>
			
				<td nowrap class="col-md-4 control-label" style="width: 10%">入职时间:</td>
				<td class="TableData" style="width: 20%">
				    <input type="date"name="DATES_EMPLOYED" class="form-control">
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 10%">备注:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="REMARK" class="form-control">
				</td>
			</tr> 
			<tr align="center" class="TableControl">
      <td colspan=4 nowrap>
        <input type="button" class="btn btn-default" value="保存"  onclick="staffSave()">
		</table>
	</form>
  </body>
</html>
<<script type="text/javascript">
$(function(){ 
		staffFind();
		rolesFind();
		})

 function staffSave(){
			var obj=$("#staf_form").serialize();
			alert(obj);
		    $.ajax({
		       url : "staff/save",
        	   type : "post",
        	   data :obj,
	           dataType:'json',
        	   success : function(data) {
        	      alert("123");
        	}
 		}); 
	 }
	 //部门查询
			function staffFind(){
				  $.ajax({
				        url:"staff/selectDep",
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        	  for(var i=0;i<data.length;i++){
				        		$("#staffFind").append("<option value='"+data[i].departmentId+"'>"+data[i].departmentName+"</option>"); 
				         	
				        	}  
				        	
				        }
			      }); 
	
	 } 
	 //角色
			function rolesFind(){
				  $.ajax({
				        url:"staff/selectRole",
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        	  for(var i=0;i<data.length;i++){
				        		$("#rolesFind").append("<option value='"+data[i].rolesId+"'>"+data[i].rolesName+"</option>"); 
				         	
				        	}  
				        	
				        }
			      }); 
	
	 } 
</script>
 