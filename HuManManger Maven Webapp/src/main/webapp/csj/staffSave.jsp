<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'staffSave.jsp' starting page</title>
    
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
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  </head>
  
  <body>
    <form method="post"  id="form1">
<table class="Table" width="60%" align="center">
<tr align="center" class="TableControl">
      <td colspan=4 nowrap>
        <p>新建</p>
      </td>
      <td>
        <input type="hidden" name="planNo" id="PLAN_NO" class="form-control" >
      </td>
    </tr>
   <tr>
      <td nowrap class="col-md-1 control-label" style="width: 10%">部门:</td>
      <td class="TableData" style="width: 20%">
         <!-- <input type="text" name="departmentId" id="departmentId" class="form-control" > -->
         <select class="department form-control" id="departmentId" name="departmentid">
      </td>
      <td nowrap class="col-md-4 control-label" style="width: 20%">角色:</td>
      <td class="TableData" style="width: 20%">
         <select class="roleId form-control" id="roleId" name="roleId">
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label" style="width: 20%">工号:</td>
      <td class="TableData">
         <input type="text" name="STAFF_NO" class="form-control">
      </td>
      <td nowrap class="col-md-2 control-label">姓名:</td>
      <td class="TableData">
        <input type="text"name="STAFF_NAME" class="form-control">
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">身份证:</td>
      <td class="TableData">
         <input type="text" name="STAFF_CARD_NO" class="form-control">
      </td>
      <td nowrap class="col-md-2 control-label">出生日期:</td>
      <td class="TableData">
        <input type="date"name="STAFF_BIRTH" class="form-control">
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">年龄:</td>
      <td class="TableData">
         <input type="text" name="STAFF_AGE" class="form-control">
      </td>
      <td nowrap class="col-md-2 control-label">性别:</td>
      <td class="TableData">
       <select class="sele form-control" name=" STAFF_SEX">
        	                              <option value="1">男</option>
        	                              <option value="2">女</option>
        	                            </slect>
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">籍贯:</td>
      <td class="TableData">
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
        	                            </slect>

      </td>
      <td nowrap class="col-md-2 control-label">民族:</td>
      <td class="TableData">
        <input type="text"name="STAFF_NATIONALITY" class="form-control">
      </td>
   </tr>
    <tr>
      <td nowrap class="col-md-2 control-label">政治面貌:</td>
      <td class="TableData">
         <select class="sele form-control" id="STAFF_POLITICAL_STATUS">
        	                              <option value="1">群众</option>
        	                              <option value="2">共青团员</option>
        	                              <option value="3">中共党员</option>
        	                              <option value="4">中共预备党员</option>
        	                              <option value="3">民主党派</option>
        	                              <option value="4">无党派人士</option>
        	                            </slect>

      </td>
      <td nowrap class="col-md-2 control-label">健康状况:</td>
      <td class="TableData">
	         <input type="text" name="STAFF_HEALTH" class="form-control">
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">职称:</td>
      <td class="TableData">
         <select class="positionId form-control" id="positionId">
      </td>
      <td nowrap class="col-md-2 control-label">员工类型:</td>
      <td class="TableData">
        <select class="sele form-control" id="STAFF_OCCUPATION">
        	                              <option value="1">合同</option>
        	                              <option value="2">正式</option>
        	                              <option value="3">临时</option>
        	                            </slect>
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">入职时间:</td>
      <td class="TableData">
         <input type="date" name="DATES_EMPLOYED" class="form-control">
      </td>
      <td nowrap class="col-md-2 control-label">本单位工龄:</td>
      <td class="TableData">
        <input type="text"name="JOB_AGE" class="form-control">
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">起薪时间:</td>
      <td class="TableData">
         <input type="text" name="BEGIN_SALSRY_TIME" class="form-control">
      </td>
      <td nowrap class="col-md-2 control-label">在职状态:</td>
      <td class="TableData">
         <select class="sele form-control"name="workStatus">
        	                              <option value="1">在职</option>
        	                              <option value="2">离职</option>
        	                              <option value="3">退休</option>
        	                            </slect>
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">总工龄:</td>
      <td class="TableData">
         <input type="text" name="WORK_AGE" class="form-control">
      </td>
      <td nowrap class="col-md-2 control-label">参加工作时间:</td>
      <td class="TableData">
        <input type="date"name="JOB_BEGINNING" class="form-control" id="jobBeginning" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">联系电话:</td>
      <td class="TableData">
        <input type="date"name="STAFF_PHONE" class="form-control" id="staffPhone" >
      </td>
      <td nowrap class="col-md-2 control-label">学历:</td>
      <td class="TableData">
       <select class="sele form-control" id=" STAFF_HIGHEST_SCHOOL" name="staffHighestSchool">
        	                              <option value="1">中专</option>
        	                              <option value="2">大专</option>
        	                              <option value="3">本科</option>
        	                              <option value="4">研究生</option>
        	                                <option value="5">博士</option>
        	                              <option value="6">博士后</option>
        	                            </slect>
      </td>
   </tr>
   <tr>
   <td nowrap class="col-md-2 control-label">学位:</td>
      <td class="TableData">
         <select class="sele form-control" name="STAFF_HIGHEST_DEGREE" id="staffHighseDegree">
        	                              <option value="1">博士</option>
        	                              <option value="2">博士后</option>
        	                              <option value="3">学士</option>
        	                              <option value="4">MBA</option>
        	                            </slect>
      </td>
      <td nowrap class="col-md-2 control-label">毕业时间:</td>
      <td class="TableData">
         <input type="date" name="GRADUATION_DATE" class="form-control" id="graduationDate" >
      </td>
      <td nowrap class="col-md-2 control-label">毕业学校:</td>
      <td class="TableData">
        <input type="text" name="GRADUATION_SCHOOL" class="form-control" id="graduationSchool" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">所学专业:</td>
      <td class="TableData">
          <input type="text" name="STAFF_MAJOR" class="from-cotrol" id="staffMajor">
      </td>
     <td nowrap class="col-md-2 control-label">特长:</td>
      <td class="TableData">
          <input type="text" name="STAFF_SKILLS" class="from-cotrol" id="staffSkills">
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">备注:</td>
      <td class="TableData">
        <input type="text"name="REMARK" class="form-control" id="remark" >
      </td>
   </tr>
   <tr>
   	<td nowrap class="col-md-2 control-label">简历:</td>
      <td class="TableData">
        <input type="text"name="RESUME" class="form-control" id="resume" >
      </td>
   </tr>
   <tr align="center" class="TableControl">
               <td colspan=4 nowrap>
                  <input type="button" class="btn btn-default" value="保存"  onclick="(staffSave)">
               </td>
            </tr>
  </table>
			</form>
		</div>
	</div>
</div>
		</div>
  </body>
</html>
<<script type="text/javascript">
	function staffSave(){
             var obj=$("#form1").serialize();
             alert(obj)
		     $.ajax({
		       url : "staff/saveSta",
        	   type : "post",
        	   data :obj,
	           dataType:'json',
        	   success : function(data) {
        	      queryAll();
        	}  
 		}); 
	 }
</script>
