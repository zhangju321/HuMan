<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
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
	href="resource/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resource/js/bootstrap/css/bootstrap-theme.min.css">
<script src="resource/js/jquery.min.js"></script>
<script src="resource/js/bootstrap/js/bootstrap.min.js"></script>
<!--最基础jQuery.js都是基于这个  -->
<script type="text/javascript" src="resource/jquery-1.11.3.min.js"></script>
<!-- 异步转换参数js -->
<script type="text/javascript" src="resource/jqueryExt.js"></script>
<!-- 上传文件js -->
<script type="text/javascript" src="resource/jquery.form.js"></script>

<link rel="stylesheet" href="layuiadmin/layui/css/layui.css"
	media="all">
<script src="layuiadmin/layui/layui.js" charset="utf-8"></script>
</head>

<body>
	<table class="table table-hover">
		<thead>
			<tr class="success">
				<!-- <th>离职编号</th> -->
				<th>员工姓名</th>
				<th>在职状态</th>
				<th>部门</th>
				<th>职务</th>
				<th>拟离职日期</th>
				<th>离职类型</th>
				<th>离职原因</th>
				<th>工资截止时间</th>
				<th>去向</th>
				<th>备注</th>
				<th>实际离职日期</th>
				<th>物品交接情况</th>
				<th>批示</th>
				<th>批示人</th>
				<th>登记时间</th>
				<th>最后修改时间</th>
				<th>附件编号</th>
				<th>附件名称</th>
				<th>申请日期</th>
				<th>当月薪酬</th>
				<th>是否复职</th>
				<th>黑名单</th>
				<th>  </th>
				<th>操作</th>
				<th><input type="button" data-toggle="modal"
					data-target="#myModal" class="emptys btn btn-default" value="新建离职"></th>
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
	<!-- 模态框弹出录入内容 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="modalTitle1" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						&times;
						<!-- 关闭按钮 -->
					</button>
					<h4 class="modal-title" id="modalTitle1">离职管理</h4>
				</div>
				<div class="modal-body">
					<!--form提交表单  -->
					<form class="form-horizontal" id="form1"
						enctype="multipart/form-data">
						
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">员工</label>
								<div class="col-sm-4">
								<input type="hidden" id="leaveId" name="leaveId" class="form-control" placeholder="请输入">
										<select class="staffinfo form-control" id="staStaffId" name="staStaffId">
        	                            </select>
								</div>
					        </div>
							 <div class="form-group">
								<label for="description" class="col-sm-2 control-label">部门</label>
								<div class="col-sm-4"><!-- 
								<input type="hidden" name="staffId.workStatus" class="form-control" value="2"> -->
										<select class="department form-control" id="departmentId" name="departmentId">
        	                            </select>
								</div>
							</div>
							 <div class="form-group">
								<label for="description" class="col-sm-2 control-label">职务</label>
								<div class="col-sm-4">
										<select class="position form-control" id="positionId" name="positionId">
        	                            </select>
								</div>
							</div>


						<div class="layui-inline">
							<label class="layui-form-label">拟离职日期</label>
							<div class="layui-input-inline">
								<input class="layui-input" id="t1" name="quitTimePlan"
									placeholder="yyyy-MM-dd HH:mm:ss" type="text">
							</div>
						</div>
						<div class="form-group">
							<label for="description" class="col-sm-2 control-label">离职类型</label>
							<div class="col-sm-4">
								<select class="sele form-control" id="quitType" name="quitType">
									<option value="1">辞职</option>
									<option value="2">离休</option>
									<option value="3">退休</option>
									<option value="4">借调</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="roleName" class="col-sm-2 control-label">离职原因</label>
							<div class="col-sm-4">
								<input type="text" id="quitReason" name="quitReason"
									class="form-control" placeholder="请输入">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">工资截止时间</label>
							<div class="layui-input-inline">
								<input class="layui-input" id="t2" name="lastSalaryTime"
									placeholder="yyyy-MM-dd HH:mm:ss" type="text">
							</div>
						</div>
						<div class="form-group">
							<label for="roleName" class="col-sm-2 control-label">去向</label>
							<div class="col-sm-4">
								<input type="text" id="trace" name="trace" class="form-control"
									placeholder="请输入">
							</div>
						</div>
						<div class="form-group">
							<label for="roleName" class="col-sm-2 control-label">备注</label>
							<div class="col-sm-4">
								<input type="text" id="remark" name="remark"
									class="form-control" placeholder="请输入">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">实际离职日期</label>
							<div class="layui-input-inline">
								<input class="layui-input" id="t3" name="quitTimeFact"
									placeholder="yyyy-MM-dd HH:mm:ss" type="text">
							</div>
						</div>
						<div class="form-group">
							<label for="description" class="col-sm-2 control-label">物品交接情况</label>
							<div class="col-sm-4">
								<select class="sele form-control" id="materialsCondition"
									name="materialsCondition">
									<option value="1">已交接</option>
									<option value="2">未交接</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="roleName" class="col-sm-2 control-label">批示</label>
							<div class="col-sm-4">
								<input type="text" id="despacho" name="despacho"
									class="form-control" placeholder="请输入">
							</div>
						</div>
						<div class="form-group">
							<label for="roleName" class="col-sm-2 control-label">批示人</label>
							<div class="col-sm-4">
								<input type="text" id="despachoPerson" name="despachoPerson"
									class="form-control" placeholder="请输入">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">登记时间</label>
							<div class="layui-input-inline">
								<input class="layui-input" id="t4" name="addTime"
									placeholder="yyyy-MM-dd HH:mm:ss" type="text">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">最后修改时间</label>
							<div class="layui-input-inline">
								<input class="layui-input" id="t5" name="lastUpdateTime"
									placeholder="yyyy-MM-dd HH:mm:ss" type="text">
							</div>
						</div>
						<div class="form-group">
							<label for="roleName" class="col-sm-2 control-label">附件编号</label>
							<div class="col-sm-4">
								<input type="text" id="attachmentId" name="attachmentId"
									class="form-control" placeholder="请输入">
							</div>
						</div>
						<div class="form-group">
							<label for="roleName" class="col-sm-2 control-label">附件名称</label>
							<div class="col-sm-4">
								<input type="text" id="attachmentName" name="attachmentName"
									class="form-control" placeholder="请输入">
							</div>
						</div>

						<div class="layui-inline">
							<label class="layui-form-label">申请日期</label>
							<div class="layui-input-inline">
								<input class="layui-input" id="t6" name="applicationDate"
									placeholder="yyyy-MM-dd HH:mm:ss" type="text">
							</div>
						</div>
						<div class="form-group">
							<label for="roleName" class="col-sm-2 control-label">当月薪资</label>
							<div class="col-sm-4">
								<input type="text" id="salary" name="salary"
									class="form-control" placeholder="请输入">
							</div>
						</div>
						<div class="form-group">
							<label for="description" class="col-sm-2 control-label">是否复职</label>
							<div class="col-sm-4">
								<select class="sele form-control" id="tement" name="tement">
									<option value="1">是</option>
									<option value="2">否</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="description" class="col-sm-2 control-label">黑名单</label>
							<div class="col-sm-4">
								<select class="sele form-control" id="isBlacklist"
									name="isBlacklist">
									<option value="1">是</option>
									<option value="2">否</option>
								</select>
							</div>
						</div>



						<input type="button" id="insertorupdate" data-toggle='modal'
							data-target='#myModal' class="btn btn-primary" value="保存">
					</form>

				</div>
				<div class="modal-footer">

					<button type="button" class="up btn btn-default"
						data-dismiss="modal">关闭</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>



</body>

</html>

<script>

	/* 页面加载函数 */
	$(function() {
		selectleave();
		selectposition();
		selectdepartment();
	});

	function selectleave(startPage) {
		
		$.ajax({
			url : "leave/selectleave",
			type : "post",
			data : {
				"startPage" : startPage
			},
			dataType : "json",
			success : function(data) {
					var list=data.list;
				$("#tbody").empty();
				for (var i = 0; i < list.length; i++) {
					var obj = list[i];
					//在职状态
                    var status=null;
                      if(obj.WORK_STATUS=='1'){
                         status="在职"
                      }else if(obj.WORK_STATUS=='2'){
                         status="辞职"
                      }else if(obj.WORK_STATUS=='3'){
                         status="离休"
                      }else if(obj.WORK_STATUS=='4'){
                         status="退休"
                      };  
                      //离职类型
                      var quittype=null;
                      if(obj.QUIT_TYPE=='1'){
                         quittype="辞职"
                      }else if(obj.QUIT_TYPE=='2'){
                         quittype="离休"
                      }else if(obj.QUIT_TYPE=='3'){
                         quittype="退休"
                      }else if(obj.QUIT_TYPE=='4'){
                         quittype="借调"
                      };
                      //物品交接情况
                      var condition=null;
                      if(obj.MATERIALS_CONDITION=='1'){
                         condition="已交接"
                      }else if(obj.MATERIALS_CONDITION=='2'){
                         condition="未交接"
                      };
                      //是否复职
                      var tement=null;
                      if(obj.TEMENT=='1'){
                         tement="复职"
                      }else if(obj.TEMENT=='2'){
                         tement="不复职"
                      };
                      //黑名单
                      var blacklist=null;
                      if(obj.IS_BLACKLIST=='1'){
                         blacklist="是"
                      }else if(obj.IS_BLACKLIST=='2'){
                         blacklist="否"
                      };
					var tr = "<tr>";
					tr += "<td style='display:none'>" + obj.LEAVE_ID + "</td>"; //离职编号;
					tr += "<td id='name'>" + obj.STAFF_NAME + "</td>"; //员工姓名
					tr += "<td>" + status + "</td>"; //在职状态
					tr += "<td>" + obj.departmentName + "</td>"; //部门
					tr += "<td>" + obj.positionName + "</td>"; //职务
					tr += "<td>" + obj.QUIT_TIME_PLAN + "</td>"; //拟离职日期
					tr += "<td>" + quittype + "</td>"; //离职类型
					tr += "<td>" + obj.QUIT_REASON + "</td>"; //离职原因
					tr += "<td>" + obj.LAST_SALARY_TIME + "</td>"; //工资截止时间
					tr += "<td>" + obj.TRACE + "</td>"; //去向
					tr += "<td>" + obj.REMARK + "</td>"; //备注
					tr += "<td>" + obj.QUIT_TIME_FACT + "</td>"; //实际离职日期
					tr += "<td>" + condition + "</td>"; //物品交接情况
					tr += "<td>" + obj.DESPACHO + "</td>"; //批示
					tr += "<td>" + obj.DESPACHO_PERSON + "</td>"; //批示人
					tr += "<td>" + obj.ADD_TIME + "</td>"; //登记时间
					tr += "<td>" + obj.LAST_UPDATE_TIME + "</td>"; //最后修改时间
					tr += "<td>" + obj.ATTACHMENT_ID + "</td>"; //附件编号
					tr += "<td>" + obj.ATTACHMENT_NAME + "</td>"; //附件名称
					tr += "<td>" + obj.APPLICATION_DATE + "</td>"; //申请日期
					tr += "<td>" + obj.SALARY + "</td>"; //当月薪酬
					tr += "<td>" + tement + "</td>"; //是否复职
					tr += "<td>" + blacklist + "</td>"; //黑名单			
					tr += "<td><input type='button' data-toggle='modal' data-target='#myModal' title=" + obj.LEAVE_ID + "  class='selectleaveByID btn btn-default' value='修改'></td>";
					tr += "<td><input type='button' id=" + obj.LEAVE_ID + "  class='delete btn btn-default' value='删除'></td>";
					tr += "</tr>";
					$("#tbody").append(tr);
				}
			//当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					selectleave(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if(last<curr){
					   $("#currPage").val(last);
					   selectleave(last);
					}
					if(curr<=0){
					  $("#currPage").val(1);
					   selectleave(1);
					}
					 selectleave(curr);
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
  }
  /* 按钮的赋值 */
	$("#syy").click(function() {
		var currPage = parseInt($("#currPage").val());
		selectleave(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		selectleave(currPage + 1);
	})
	$("#shouye").click(function() {
		selectleave(1);
	})
	
	/* 职务 */
	 function selectposition(){
     $.ajax({
       url:"leave/selectposition",
       type:"post",
       dataType:"json",
       success:function(data){
         for(var i=0;i<data.length;i++){
            var obj=data[i];
            $(".position").append("<option value='"+obj.positionId+"'>"+obj.positionName+"</option>");
         }
       }
     });
   };
   /* 部门 */
     function selectdepartment(){
     $.ajax({
       url:"leave/selectdepartment",
       type:"post",
       dataType:"json",
       success:function(data){
         for(var i=0;i<data.length;i++){
            var obj=data[i];
            $(".department").append("<option value='"+obj.departmentId+"'>"+obj.departmentName+"</option>");
         }
       }
     });
   };

	/* 添加之前清空form表单    员工只查询在职的 */
	$(document).on("click", ".emptys", function() {
		$("#positionId").val("");//职务表外键 职务名称 
		$("#leaveId").val(""); //离职编号
		$("#departmentId").val("");//部门表外键  部门名称
		$("#staStaffId").val("");//员工表外键  员工姓名 
		$("#staStaffId").html("");//员工表外键  员工姓名 
		$("#t1").val(""); //拟离职日期
		$("#quitType").val(""); //离职类型
		$("#quitReason").val(""); //离职原因
		$("#t2").val(""); //工资截止时间
		$("#trace").val(""); //去向
		$("#remark").val(""); //备注
		$("#t3").val(""); //实际离职日期
		$("#materialsCondition").val(""); //物品交接情况
		$("#despacho").val(""); //批示
		$("#despachoPerson").val(""); //批示人
		$("#t4").val(""); //登记时间
		$("#t5").val(""); //最后修改时间
		$("#attachmentId").val(""); //附件编号
		$("#attachmentName").val(""); //附件名称
		$("#t6").val(""); //申请日期
		$("#salary").val(""); //当月薪酬
		$("#tement").val(""); //是否复职
		$("#isBlacklist").val(""); //黑名单
       //添加时只查询在职员工
	   $.ajax({
       url:"leave/selectinfostu",
       type:"post",
       dataType:"json",
       success:function(data){
         for(var i=0;i<data.length;i++){
            var obj=data[i];
            $(".staffinfo").append("<option value='"+obj.staffId+"'>"+obj.staffName+"</option>");
         }
       }
     });
	});
	//添加与修改   
	$(document).on("click", "#insertorupdate", function() {
		var obj = $("#form1").serializeObject();
		$.ajax({
			url : "leave/insertorupdate",
			type : "post",
			async : true,
			contentType : "application/json;charset=utf-8",
			data : JSON.stringify(obj),
			dataType : "text",
			success : function(data) {
				selectleave();
			}
		});
	});
	/*修改前查询  */
	$(document).on("click", ".selectleaveByID", function() {
	
	 	var staffName=$(this).parent().parent().find("#name").html();
	 	
		$("#staffId").html("");//员工表外键  员工姓名 
		
		var id = this.title;
		$.ajax({
			url : "leave/selectleaveByID",
			type : "post",
			data : {
				"leaveId" : id
			},
			dataType : "json",
			success : function(data) {
				$("#leaveId").val(data.leaveId); //离职编号
		        $("#departmentId").val(data.departmentId);//部门表外键  部门名称
		        $("#staStaffId").val(data.staStaffId);//员工表外键  员工姓名 
	         	$("#positionId").val(data.positionId);//职务表外键 职务名称 
				$("#t1").val(data.quitTimePlan);//拟离职日期     
				$("#quitType").val(data.quitType); //离职类型
				$("#quitReason").val(data.quitReason); //离职原因
				$("#t2").val(data.lastSalaryTime);//工资截止时间
				$("#trace").val(data.trace); //去向
				$("#remark").val(data.remark); //备注
			    $("#t3").val(data.quitTimeFact);//实际离职日期
				$("#materialsCondition").val(data.materialsCondition); //物品交接情况
				$("#despacho").val(data.despacho); //批示
				$("#despachoPerson").val(data.despachoPerson); //批示人
				$("#t4").val(data.addTime);//登记时间
				$("#t5").val(data.lastUpdateTime);//最后修改时间
				$("#attachmentId").val(data.attachmentId); //附件编号
				$("#attachmentName").val(data.attachmentName); //附件名称
				$("#t6").val(data.applicationDate);//申请日期
				$("#salary").val(data.salary); //当月薪酬
				$("#tement").val(data.tement); //是否复职
				$("#isBlacklist").val(data.isBlacklist); //黑名单

			}
		});
	   $.ajax({
       url:"leave/selectstaffinfo",
       type:"post",
       dataType:"json",
       success:function(data){
         for(var i=0;i<data.length;i++){
            var obj=data[i];
           if(staffName==obj.STAFF_NAME){
             $(".staffinfo").append("<option value='"+obj.staffId+"' selected='selected'>"+obj.staffName+"</option>");
            }else{
             $(".staffinfo").append("<option value='"+obj.staffId+"'>"+obj.staffName+"</option>");
            }
         
         }
       }
     });

	});

	/* 删除 */
	$(document).on("click", ".delete", function() {
		var id = this.id;
		
		$.ajax({
			url : "leave/deleteleave",
			type : "post",
			data : {
				"leaveId" : id
			},
			dataType : "text",
			success : function(data) {
				selectleave();
			}
		});
	});


	layui.use('laydate', function() {
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t1',
			type : 'datetime'
		});
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t2',
			type : 'datetime'
		});
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t3',
			type : 'datetime'
		});
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t4',
			type : 'datetime'
		});
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t5',
			type : 'datetime'
		});
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t6',
			type : 'datetime'
		});
	});
</script>