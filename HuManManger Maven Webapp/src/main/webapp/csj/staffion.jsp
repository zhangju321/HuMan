<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'staffion.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
   
		
  </head>
  
  <body>
  	<div>
  		<a href="csj/staffSave.jsp">新建档案</a>
  	</div>
   <table class="table table-hover">
  
     	<thead>
     		<tr class="success">
     		<th>选择</th>
     		  <th>姓名</th>
     		  <th>OA角色</th>
     		  <th>性别</th>
     		  <th>出生日期</th>
     		  <th>民族</th>
     		  <th>籍贯</th>
     		  <th>政治面貌</th>
     		  <th>入职时间</th>
     		</tr>
     	</thead>
     	<tbody id="tbody">
     	
     	</tbody>
     </table>
     <div class="modal fade" id="staffModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" style="width:700px">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">修改</h4>
					</div>
		<div class="modal-body">
		<!-- 修改 -->
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
         <select class="department form-control" id="departmentId" name="departmentId">
      </td>
      <td nowrap class="col-md-4 control-label" style="width: 20%">角色:</td>
      <td class="TableData" style="width: 20%">
         <select class="rolesId form-control" id="rolesId" name="rolesId">
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label" style="width: 20%">工号:</td>
      <td class="TableData">
         <input type="text" name="STAFF_NO" class="form-control" id="staffNo">
      </td>
      <td nowrap class="col-md-2 control-label">姓名:</td>
      <td class="TableData">
        <input type="text"name="STAFF_NAME" class="form-control" id="staffName" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">身份证:</td>
      <td class="TableData">
         <input type="text" name="STAFF_CARD_NO" class="form-control" id="staffCardNo" >
      </td>
      <td nowrap class="col-md-2 control-label">出生日期:</td>
      <td class="TableData">
        <input type="date"name="STAFF_BIRTH" class="form-control" id="staffBirth" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">年龄:</td>
      <td class="TableData">
         <input type="text" name="STAFF_AGE" class="form-control" id="staffAge" >
      </td>
      <td nowrap class="col-md-2 control-label">性别:</td>
      <td class="TableData">
       <select class="sele form-control" name=" STAFF_SEX" id="staffSex">
        	                              <option value="1">男</option>
        	                              <option value="2">女</option>
        	                            </slect>
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">籍贯:</td>
      <td class="TableData">
         <select class="sele form-control" name="STAFF_NATIVE_PLACE" id="staffNativePlace">
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
        <input type="text"name="STAFF_NATIONALITY" class="form-control" id="staffNationality" >
      </td>
   </tr>
   <tr>
   	<td nowrap class="col-md-2 control-label">邮箱:</td>
      <td class="TableData">
        <input type="text"name="STAFF_EMAIL" class="form-control" id="staffemall">
        </td>
        <td nowrap class="col-md-2 control-label">家庭住址:</td>
      <td class="TableData">
        <input type="text"name="HOME_ADDRESS" class="form-control" id="homeaddress" >
        </td>
   </tr>
    <tr>
      <td nowrap class="col-md-2 control-label">政治面貌:</td>
      <td class="TableData">
         <select class="sele form-control" id="STAFF_POLITICAL_STATUS" name="staffPoliticalStatus">
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
	         <input type="text" name="STAFF_HEALTH" class="form-control" id="staffHealth" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">职称:</td>
      <td class="TableData">
         <select class="positionId form-control" id="positionId" name="positionId">
      </td>
      <td nowrap class="col-md-2 control-label">员工类型:</td>
      <td class="TableData">
        <select class="sele form-control" id="STAFF_OCCUPATION" name="staffOccupation">
        	                              <option value="1">合同</option>
        	                              <option value="2">正式</option>
        	                              <option value="3">临时</option>
        	                            </slect>
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">入职时间:</td>
      <td class="TableData">
         <input type="date" name="DATES_EMPLOYED" class="form-control" id="datesEmployed" >
      </td>
      <td nowrap class="col-md-2 control-label">本单位工龄:</td>
      <td class="TableData">
        <input type="text"name="JOB_AGE" class="form-control" id="jobAge" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">起薪时间:</td>
      <td class="TableData">
         <input type="text" name="BEGIN_SALSRY_TIME" class="form-control" id="beginSalsryTime" >
      </td>
      <td nowrap class="col-md-2 control-label">在职状态:</td>
      <td class="TableData">
         <select class="sele form-control" id="WORK_STATUS" name="workStatus">
        	                              <option value="1">在职</option>
        	                              <option value="2">离职</option>
        	                              <option value="3">退休</option>
        	                            </slect>
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">总工龄:</td>
      <td class="TableData">
         <input type="text" name="WORK_AGE" class="form-control" id="workAge" >
      </td>
      <td nowrap class="col-md-2 control-label">参加工作时间:</td>
      <td class="TableData">
        <input type="date"name="JOB_BEGINNING" class="form-control" id="jobBeginning" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">联系电话:</td>
      <td class="TableData">
        <input type="text"name="STAFF_PHONE" class="form-control" id="staffPhone" >
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
   </tr>
   <tr>
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
                  <input type="button" class="btn btn-default" value="保存"  onclick="update()">
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
<script>
	$(function(){ 
			
			queryAll();
		})
	function queryAll(){
			$.ajax({
				url:"staff/select",
				type:"post",
				dataType:'json',
				success:function(data){
					 $("#tbody").empty()
					 for(var i=0;i<data.length;i++){
					 	var obj=data[i];
					 	var sex1=null;
					 	if(obj.STAFF_SEX=='0'){
					 	sex1="男"
					 	}if(obj.STAFF_SEX=='1'){
					 	sex1="女"
					 	}
	           			var tr="<tr>";
	           			tr+="<td><input type='checkbox' ></td>";
	           			tr+="<td>"+obj.STAFF_NAME+"</td>";
		                tr+="<td>"+obj.rolesName+"</td>";
		                tr+="<td>"+sex1+"</td>";
		                tr+="<td>"+obj.STAFF_BIRTH+"</td>";
		                tr+="<td>"+obj.STAFF_NATIONALITY+"</td>";
		                tr+="<td>"+obj.STAFF_NATIVE_PLACE+"</td>";
		                tr+="<td>"+obj.STAFF_POLITICAL_STATUS+"</td>";
		                tr+="<td>"+obj.DATES_EMPLOYED+"</td>";
		                tr+="<td><input type='button' data-toggle='modal' data-target='#staffModal' title=" + obj.staff_id+ "  class='selId btn btn-default' value='修改'></td>";
		                tr+="<td><input type='button' id='"+obj.staff_id+"' class='delete  btn btn-default' value='删除'></td>";
		                tr+="</tr>";
		                $("#tbody").append(tr);
					 }
				}			
			})
		}
		/* 根据ID查询 */
	$(function(){
				$("#tbody").on("click",".selId",function(){
					var id=this.title;
					$.ajax({
						url:"staff/selId",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
						    $("#departmentId").val(data[0].departmentId);
						    $("#rolesId").val(data[0].rolesName);
						    $("#staffNo").val(data[0].STAFF_NO);
							$("#staffName").val(data[0].STAFF_NAME);
							$("#staffCardNo").val(data[0].STAFF_CARD_NO);
							$("#staffBirth").val(data[0].STAFF_BIRTH);
							$("#staffAge").val(data[0].STAFF_AGE);
							$("#staffSex").val(data[0]. STAFF_SEX);
							$("#staffNativePlace").val(data[0].STAFF_NATIVE_PLACE);
							$("#staffNationality").val(data[0].STAFF_NATIONALITY);
							$("#staffemall").val(data[0].STAFF_EMAIL);
							$("#homeaddress").val(data[0].HOME_ADDRESS);
							$("#staffPoliticalStatus").val(data[0].STAFF_POLITICAL_STATUS);
							$("#staffHealth").val(data[0].STAFF_HEALTH);
							$("#positionId").val(data[0].positionId);
							$("#staffOccupation").val(data[0].STAFF_OCCUPATION);
							$("#datesEmployed").val(data[0].DATES_EMPLOYED);
							$("#jobAge").val(data[0].JOB_AGE);
							$("#beginSalsryTime").val(data[0].BEGIN_SALSRY_TIME);
							$("#workAge").val(data[0].WORK_AGE);
							$("#jobBeginning").val(data[0].JOB_BEGINNING);
							$("#staffPhone").val(data[0].STAFF_PHONE);
							$("#staffHighestSchool").val(data[0].STAFF_HIGHEST_SCHOOL);
							$("#staffHighseDegree").val(data[0].STAFF_HIGHEST_DEGREE);
							$("#graduationDate").val(data[0].GRADUATION_DATE);
							$("#graduationSchool").val(data[0].GRADUATION_SCHOOL);
							$("#staffMajor").val(data[0].STAFF_MAJOR);
							$("#staffSkills").val(data[0].STAFF_SKILLS);
							$("#remark").val(data[0].REMARK);
							$("#resume").val(data[0].RESUME);
						}
					});
				})
			})
			/* 模态框修改 */
	   function update(){
			var obj=$("#form1").serialize();
		    $.ajax({
		       url:"staff/staff_update",
        	    type:"post",
        	   data :obj,
	           dataType:'json',
        	   success : function(data) {
        	      queryAll();
        	} 
 		}); 
	 }
	  /*删除*/
	 $(function(){
				$("#tbody").on("click",".delete",function(){
					var id=this.id;
					$.ajax({
						url:"staff/delete",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
						queryAll();
						}
					});
				})
			})
</script>