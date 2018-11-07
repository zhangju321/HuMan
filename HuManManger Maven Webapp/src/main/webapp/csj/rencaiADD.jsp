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
	<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
    <script	src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
   

  
  </head>
  
  <body>
    	<form method="post" id="id="form1">
						<table class="Table" width="60%" align="center">
							<tr align="center" class="TableControl">
								<td colspan=4 nowrap>
									<p>创建招聘计划</p>
								</td>
								<!-- <td>
        <input type="hidden" name="PLAN_NO" id="PLAN_NO" class="form-control" >
      </td> -->
							</tr>
							<tr>
								<td nowrap class="col-md-1 control-label" style="width: 10%">计划名称:</td>
								<td class="TableData" style="width: 20%">
								<!-- <input type="text" name="PLAN_NO" id="PLAN_NO" class="form-control"> -->
							<select id="PLAN_NO" name="PLAN_NO" class="form-control">
                       </select> 
         </td>
								<td nowrap class="col-md-4 control-label" style="width: 20%">应聘者姓名:</td>
								<td class="TableData" style="width: 20%"><INPUT type="text"
									name="EMPLOYEE_NAME" class="form-control" id="EMPLOYEE_NAME">
								</td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label" style="width: 20%">性别:</td>
								<td class="TableData"><select class="sele form-control"
									name="EMPLOYEE_SEX" id="EMPLOYEE_SEX">
										<option value="1">男</option>
										<option value="2">女</option>
										</slect></td>
								<td nowrap class="col-md-2 control-label">出生日期:</td>
								<td class="TableData"><input type="text"
									name="EMPLOYEE_BIRTH" class="form-control" id="EMPLOYEE_BIRTH">
								</td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">民族:</td>
								<td class="TableData"><input type="text"
									name="EMPLOYEE_NATIONALITY" class="form-control"
									id="EMPLOYEE_NATIONALITY"></td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">联系电话:</td>
								<td class="TableData"><input type="text"
									name="EMPLOYEE_PHONE" class="form-control" id="EMPLOYEE_PHONE">
								</td>
								<td nowrap class="col-md-2 control-label">E_mail:</td>
								<td class="TableData"><input type="text"
									name="EMPLOYEE_EMAIL" class="form-control" id="EMPLOYEE_EMAIL">
								</td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">籍贯:</td>
								<td class="TableData"><select class="sele form-control"
									name="EMPLOYEE_NATIVE_PLACE" id="EMPLOYEE_NATIVE_PLACE">
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
										</slect></td>
								<td nowrap class="col-md-2 control-label">户口所在地:</td>
								<td class="TableData"><input type="text"
									name="EMPLOYEE_DOMICILE_PLACE" class="form-control"
									id="EMPLOYEE_DOMICILE_PLACE"></td>
							</tr>
							<tr>

							</tr>
							<td nowrap class="col-md-2 control-label">婚姻状况:</td>
							<td class="TableData"><select class="sele form-control"
								id="EMPLOYEE_MARITAL_STATUS" name="EMPLOYEE_MARITAL_STATUS">
									<option value="1">未婚</option>
									<option value="2">已婚</option>
									</slect></td>
							<tr>
								<td nowrap class="col-md-2 control-label">政治面貌:</td>
								<td class="TableData"><select class="sele form-control"
									id="EMPLOYEE_POLITICAL_STATUS" name="EMPLOYEE_POLITICAL_STATUS">
										<option value="1">群众</option>
										<option value="2">共青团员</option>
										<option value="3">中共党员</option>
										<option value="4">中共预备党员</option>
										<option value="3">民主党派</option>
										<option value="4">无党派人士</option>
										</slect></td>
								<td nowrap class="col-md-2 control-label">健康状况:</td>
								<td class="TableData"><input type="text"
									name="EMPLOYEE_HEALTH" class="form-control"
									id="EMPLOYEE_HEALTH"></td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">参见工作时间:</td>
								<td class="TableData"><input type="date"
									name="JOB_BEGINNING" class="form-control" id="JOB_BEGINNING">
								</td>
								<td nowrap class="col-md-2 control-label">期望工作性质:</td>
								<td class="TableData"><select class="sele form-control"
									id="JOB_CATEGORY" name="JOB_CATEGORY">
										<option value="1">全职</option>
										<option value="2">兼职</option>
										<option value="3">临时</option>
										<option value="4">实习</option>
										</slect></td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">照片上传:</td>
								<td class="TableData"><input type="text" name="PHOTO_NAME"
									class="form-control" id="PHOTO_NAME"></td>
								<td nowrap class="col-md-2 control-label">工资范围:</td>
								<td class="TableData"><input type="text"
									name="EXPECTED_SALARY" class="form-control"
									id="EXPECTED_SALARY"></td>
							</tr>

							<tr>

								<td nowrap class="col-md-2 control-label">到岗时间:</td>
								<td class="TableData"><select class="sele form-control"
									id="START_WORKING" name="START_WORKING">
										<option value="1">一周之内</option>
										<option value="2">一个月</option>
										<option value="3">2-3月</option>
										</slect></td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">毕业时间:</td>
								<td class="TableData"><input type="date"
									name="GRADUATION_DATE" class="form-control"
									id="GRADUATION_DATE"></td>
								<td nowrap class="col-md-2 control-label">毕业学校:</td>
								<td class="TableData"><input type="text"
									name="GRADUATION_SCHOOL" class="form-control"
									id="GRADUATION_SCHOOL"></td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">所学专业:</td>
								<td class="TableData"><select class="sele form-control"
									name="EMPLOYEE_MAJOR" id="EMPLOYEE_MAJOR">
										<option value="1">信息安全</option>
										<option value="2">网络工程</option>
										<option value="3">通讯工程</option>

										</slect></td>
								<td nowrap class="col-md-2 control-label">学历:</td>
								<td class="TableData"><select class="sele form-control"
									name="EMPLOYEE_HIGHEST_SCHOOL" id="EMPLOYEE_HIGHEST_SCHOOL">
										<option value="1">中专</option>
										<option value="2">大专</option>
										<option value="3">本科</option>
										<option value="4">研究生</option>
										<option value="5">博士</option>
										<option value="6">博士后</option>
										</slect></td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">学位:</td>
								<td class="TableData"><select class="sele form-control"
									name="EMPLOYEE_HIGHEST_DEGREE" id="EMPLOYEE_HIGHEST_DEGREE">
										<option value="1">博士</option>
										<option value="2">博士后</option>
										<option value="3">学士</option>
										<option value="4">MBA</option>
										</slect></td>
								<td nowrap class="col-md-2 control-label">外语语种1:</td>
								<td class="TableData"><input type="text"
									name="FOREIGN_LANGUAGE1" class="form-control"
									id="FOREIGN_LANGUAGE1"></td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">外语水平1:</td>
								<td class="TableData"><input type="text"
									name="FOREIGN_LEVEL1" class="form-control" id="FOREIGN_LEVEL1">
								</td>
								<td nowrap class="col-md-2 control-label">外语语种2:</td>
								<td class="TableData"><input type="text"
									name="FOREIGN_LANGUAGE2" class="form-control"
									id="FOREIGN_LANGUAGE2"></td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">外语水平2:</td>
								<td class="TableData"><input type="text"
									name="FOREIGN_LEVEL2" class="form-control" id="FOREIGN_LEVEL2">
								</td>
								<td nowrap class="col-md-2 control-label">外语语种3:</td>
								<td class="TableData"><input type="text"
									name="FOREIGN_LANGUAGE3" class="form-control"
									id="FOREIGN_LANGUAGE3"></td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">外语水平3:</td>
								<td class="TableData"><input type="text"
									name="FOREIGN_LEVEL3" class="form-control" id="FOREIGN_LEVEL3">
								</td>
								<td nowrap class="col-md-2 control-label">计算机水平:</td>
								<td class="TableData"><input type="text"
									name="COMPUTER_LEVEL" class="form-control" id="COMPUTER_LEVEL">
								</td>
							<tr>
								<td nowrap class="col-md-2 control-label">入库时间:</td>
								<td class="TableData"><input type="date" name="RUKUTIME"
									class="form-control" id="RUKUTIME"></td>
								<td nowrap class="col-md-2 control-label">招聘渠道:</td>
								<td class="TableData"><input type="text"
									name="RECRU_CHANNEL" class="form-control" id="RECRU_CHANNEL">
								</td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">特长:</td>
								<td class="TableData"><input type="text"
									name="EMPLOYEE_SKILLS" class="form-control"
									id="EMPLOYEE_SKILLS"></td>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">工作经验:</td>
								<td class="TableData"><input type="text"
									name="WORK_EXPERIENCE" class="form-control"
									id="WORK_EXPERIENCE"></td>
							</tr>
							</tr>
							<tr>
								<td nowrap class="col-md-2 control-label">项目经验:</td>
								<td class="TableData"><input type="text"
									name="PROJECT_EXPERIENCE" class="form-control"
									id="PROJECT_EXPERIENCE"></td>
							</tr>
							<tr align="center" class="TableControl">
								<td colspan=4 nowrap><input type="button"
									class="btn btn-default" value="保存" onclick="plan_save()">
								</td>
							</tr>
						</table>
					</form>
  </body>
</html>
<script>
	 function plan_save(){
			var obj=$("#form1").serialize();
			alert(obj);
		    $.ajax({
		       url : "hrpool/Save",
        	   type : "post",
        	   data :obj,
	           dataType:'json',
        	   success : function(data) {
        	      alert("123");
        	      queryAll();
        	}
 		}); 
	 }
</script>
