<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

<%--  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css"> --%>
<script type="text/javascript">
	$(function() {
		queryplan();

		queryAll();
	})
	function queryplan() {
		$.ajax({
			url : "hrpool/queryplan",
			type : "post",
			dataType : 'json',
			success : function(data) {
				for (var i = 0; i < data.length; i++) {
					var obj = data[i];
					$("#PLAN_NO").append("<option value='" + obj.PLAN_NO + "'>" + obj.PLAN_NAME + "</option>");
				}
			}
		})
	}
	function queryAll() {
		$.ajax({
			url : "hrpool/queryAll",
			type : "post",
			dataType : 'json',
			success : function(data) {
				$("#tbody").empty();
				for (var i = 0; i < data.length; i++) {
					var obj = data[i];
					alert(obj.EXPERT_ID);
					var tr = "<tr>";
					tr += "<td><input type='checkbox' ></td>";
					tr += "<td style='display:none'>" + obj.EXPERT_ID + "</td>";
					tr += "<td>" + obj.PLAN_NAME + "</td>";
					tr += "<td>" + obj.EMPLOYEE_NAME + "</td>";
					tr += "<td>" + obj.EMPLOYEE_BIRTH + "</td>";
					tr += "<td>" + obj.EMPLOYEE_PHONE + "</td>";
					tr += "<td>" + obj.EMPLOYEE_HIGHEST_SCHOOL + "</td>";
					tr += "<td>" + obj.EMPLOYEE_MAJOR + "</td>";
					tr += "<td>" + obj.RUKUTIME + "</td>"; //入库时间
					tr += "<td><input type='button' data-toggle='modal' data-target='#staffModal'  id='" + obj.EXPERT_ID + "'   class='queryByid  btn btn-default' value='修改'></td>";
					tr += "<td><input type='button' title='" + obj.EXPERT_ID + "' class='deletePool btn btn-default' value='删除'></td>";
					tr += "</tr>";
					$("#tbody").append(tr);
				}
			}
		})
	}

	/* 删除 */
	$(document).on("click", ".deletePool", function() {
		var id = this.title;

		alert(id);
		$.ajax({
			url : "hrpool/dele",
			type : "post",
			data : {
				"EXPERT_ID" : id
			},
			dataType : "text",
			success : function(data) {
				alert(data);
				queryAll();
			}
		});
	});
	/*修改前查询  */
	$(document).on("click", ".queryByid", function() {
		var id = this.id;
		alert(id);
		$.ajax({
			url : "hrpool/queryByid",
			type : "post",
			data : {
				"EXPERT_ID" : id
			},
			dataType : "json",
			success : function(data) {
			alert(data);
				$("#EXPERT_ID").val(data.EXPERT_ID);
				$("#PLAN_NO").val(data.PLAN_NAME);
				$("#POSITION").val(data.POSITION);
				$("#EMPLOYEE_NAME").val(data.EMPLOYEE_NAME);
				$("#EMPLOYEE_SEX").val(data.EMPLOYEE_SEX);
				$("#EMPLOYEE_BIRTH").val(data.EMPLOYEE_BIRTH);
				$("#EMPLOYEE_NATIVE_PLACE").val(data.EMPLOYEE_NATIVE_PLACE);
				$("#EMPLOYEE_DOMICILE_PLACE").val(data.EMPLOYEE_DOMICILE_PLACE);
				$("#EMPLOYEE_NATIONALITY").val(data.EMPLOYEE_NATIONALITY);
				$("#EMPLOYEE_MARITAL_STATUS").val(data.EMPLOYEE_MARITAL_STATUS);
				$("#EMPLOYEE_POLITICAL_STATUS").val(data.EMPLOYEE_POLITICAL_STATUS);
				$("#EMPLOYEE_PHONE").val(data.EMPLOYEE_PHONE);
				$("#EMPLOYEE_EMAIL").val(data.EMPLOYEE_EMAIL);
				$("#JOB_BEGINNING").val(data.JOB_BEGINNING);
				$("#EMPLOYEE_HEALTH").val(data.EMPLOYEE_HEALTH);
				$("#EMPLOYEE_HIGHEST_SCHOOL").val(data.EMPLOYEE_HIGHEST_SCHOOL);
				$("#EMPLOYEE_HIGHEST_DEGREE").val(data.EMPLOYEE_HIGHEST_DEGREE);
				$("#GRADUATION_DATE").val(data.GRADUATION_DATE);
				$("#GRADUATION_SCHOOL").val(data.GRADUATION_SCHOOL);
				$("#EMPLOYEE_MAJOR").val(data.EMPLOYEE_MAJOR);
				$("#COMPUTER_LEVEL").val(data.COMPUTER_LEVEL);
				$("#FOREIGN_LANGUAGE1").val(data.FOREIGN_LANGUAGE1);
				$("#FOREIGN_LEVEL1").val(data.FOREIGN_LEVEL1);
				$("#FOREIGN_LANGUAGE2").val(data.FOREIGN_LANGUAGE2);
				$("#FOREIGN_LEVEL2").val(data.FOREIGN_LEVEL2);
				$("#FOREIGN_LANGUAGE3").val(data.FOREIGN_LANGUAGE3);
				$("#FOREIGN_LEVEL3").val(data.FOREIGN_LEVEL3);
				$("#EMPLOYEE_SKILLS").val(data.EMPLOYEE_SKILLS);
				$("#RESUME").val(data.RESUME);
				$("#JOB_INTENSION").val(data.JOB_INTENSION);
				$("#CAREER_SKILLS").val(data.CAREER_SKILLS);
				$("#WORK_EXPERIENCE").val(data.WORK_EXPERIENCE);
				$("#PROJECT_EXPERIENCE").val(data.PROJECT_EXPERIENCE);
				$("#ATTACHMENT_NAME").val(data.ATTACHMENT_NAME);
				$("#RESIDENCE_PLACE").val(data.RESIDENCE_PLACE);
				$("#JOB_CATEGORY").val(data.JOB_CATEGORY);
				$("#JOB_INDUSTRY").val(data.JOB_INDUSTRY);
				$("#WORK_CITY").val(data.WORK_CITY);
				$("#EXPECTED_SALARY").val(data.EXPECTED_SALARY);
				$("#START_WORKING").val(data.START_WORKING);
				$("#PHOTO_NAME").val(data.PHOTO_NAME);
				$("#EMPLOYEE_AGE").val(data.EMPLOYEE_AGE);
				$("#RECRU_CHANNEL").val(data.RECRU_CHANNEL);
				$("#RUKUTIME").val(data.RUKUTIME);


			}
		});
	});
	/* 上传文本图片和修改 */
	$(document).on("click", "#saveOrUpdatepool", function() {
		$("#form1").ajaxSubmit({
			url : "hrpool/saveOrUpdatepool",
			type : "post",
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
			dataType : "text",
			success : function(data) {
				alert(data);
				queryAll();
			}
		});
	});
</script>
</head>

<body>
	<div>
  		<a href="csj/rencaiADD.jsp">新建档案</a>
  	</div>
	<table class="table table-hover">
		<thead>
			<tr class="success">
				<th>选择</th>
				<th>计划名称</th>
				<th>应聘者姓名</th>
				<th>出生日期</th>
				<th>联系电话</th>
				<th>学历</th>
				<th>专业</th>
				<th>岗位</th>
				<th>入库时间</th>
			</tr>
		</thead>
		<tbody id="tbody">

		</tbody>
	</table>

	<!-- 模态框弹出录入内容 -->
	<div class="modal fade" id="staffModal" tabindex="-1" role="dialog"
		aria-labelledby="modalTitle1" aria-hidden="true">
		<div class="modal-dialog" style="width:700px">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						&times;
						<!-- 关闭按钮 -->
					</button>
					<h4 class="modal-title" id="modalTitle1">录入学生</h4>
				</div>
				<div class="modal-body">

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
								<td class="TableData"><input type="date"
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
									class="btn btn-default" value="修改" onclick="plan_update()">
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