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
<script type="text/javascript" src="resources/jquery-1.11.3.min.js"></script>
<!-- 异步转换参数js -->
<script type="text/javascript" src="resources/jqueryExt.js"></script>
<!-- 上传文件js -->
<script type="text/javascript" src="resources/jquery.form.js"></script>

<link rel="stylesheet" href="resources/js/layui/css/layui.css"
	media="all">
<script src="resources/js/layui/layui.js" charset="utf-8"></script>
</head>
<body>
	<table class="table table-hover">
		<thead>
			<tr class="success">
				<th>员工姓名</th>
				<th>应出勤（天）</th>
				<th>实际出勤（天）</th>
				<th>休息（次）</th>
				<th>旷工（次）</th>
				<th>迟到(次)</th>
				<th>操作</th>
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
	
	
	<table class="table table-hover">
		<thead>
			<tr class="success">
				<th>员工姓名</th>
				<th>考勤次数</th>
				<th>外出次数</th>
				<th>出差次数</th>
				<th>请假次数</th>
			</tr>
		</thead>
		<tbody id="cishutbody">

		</tbody>
	</table>
	<ul class="pager">
		<li><button type="button" class="btn btn-default" id="shouye1">首页</button></li>
		<li><button type="button" class="btn btn-default" id="syy1">上一页</button></li>
		<li><button type="button" class="btn btn-default" id="xyy1">下一页</button></li>
		<li><button type="button" class="btn btn-default" id="weiye1">尾页</button></li>
		<li style="font-weight: lighter;">当前第<input type="text" id="currPage1" style="height:35px;width:50px;border-radius:10px;text-align: center;"/>页</li>
	</ul>
	
<!-- 模态框弹出详细信息 -->
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
					<h4 class="modal-title" id="modalTitle1">考勤详情</h4>
				</div>
				
				
				<div class="modal-body">
					<table class="table table-striped">
						<caption>请假详细单</caption>
						<thead>
							<tr>
								<th>员工姓名</th>
								<th>请假开始时间</th>
								<th>请假结束时间</th>
								<th>请假类型</th>
								<th>请假原因</th>
								<th>审批人员</th>
								<th>审批状态</th>
							</tr>
						</thead>
						<tbody id="vocationtbody">

						</tbody>
					</table>
				</div>
				
				<div class="modal-body">
					<table class="table table-striped">
						<caption>出差详细单</caption>
						<thead>
							<tr>
								<th>员工姓名</th>
								<th>出差开始时间</th>
								<th>出差结束时间</th>
								<th>出差地点</th>
								<th>出差原因</th>
								<th>审批人员</th>
								<th>审批状态</th>
							</tr>
						</thead>
						<tbody id="traveltbody">

						</tbody>
					</table>
				</div>
				
				
				<div class="modal-body">
					<table class="table table-striped">
						<caption>外出详细单</caption>
						<thead>
							<tr>
								<th>员工姓名</th>
								<th>外出日期</th>
								<th>外出开始时间</th>
								<th>外出结束时间</th>
								<th>外出地点</th>
								<th>外出原因</th>
								<th>审批人员</th>
								<th>审批状态</th>
							</tr>
						</thead>
						<tbody id="outtbody">

						</tbody>
					</table>
				</div>
				
				<div class="modal-footer">
					<button type="button" class="up btn btn-default"
						data-dismiss="modal">关闭</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div>
</body>
</html>
<script>

	/* 页面加载函数 */
	$(function() {
		selectas();
		selectcishu();
	});
	function selectas(startPage) {
		$.ajax({
			url : "as/selectas",
			type : "post",
			data : {
				"startPage" : startPage
			},
			dataType : "json",
			success : function(data) {
				$("#tbody").empty();
				var list=data.list;
				for (var i = 0; i < list.length; i++) {
					var obj = list[i];
					var chuqin=obj.saa/4;
					var tr = "<tr>";
					tr += "<td id='staid' style='display:none'>" + obj.staff_id + "</td>"; //员工id
					tr += "<td id='sname'>" + obj.STAFF_NAME + "</td>"; //员工姓名
					tr += "<td>" + obj.attendance_should + "</td>"; //应出勤 
					tr += "<td>" + chuqin + "</td>"; //实际出勤 
					tr += "<td>" + obj.sr + "</td>"; //休息
					tr += "<td>" + obj.sa + "</td>"; //旷工
					tr += "<td>" + obj.sl + "</td>"; //迟到
					tr += "<td><input type='button'  title=" + obj.staff_id + "  data-toggle='modal' data-target='#myModal' class='Details btn btn-default' value='详细信息'></td>";
					tr += "</tr>";
					$("#tbody").append(tr);
				}
			//当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					selectas(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if(last<curr){
					   $("#currPage").val(last);
					   selectas(last);
					}
					if(curr<=0){
					  $("#currPage").val(1);
					   selectas(1);
					}
					 selectas(curr);
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
		selectas(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		selectas(currPage + 1);
	})
	$("#shouye").click(function() {
		selectas(1);
	})
	
		function selectcishu(startPage) {
		$.ajax({
			url : "as/selectcishu",
			type : "post",
			data : {
				"startPage" : startPage
			},
			dataType : "json",
			success : function(data) {
				$("#cishutbody").empty();
				var list=data.list;
				for (var i = 0; i < list.length; i++) {
					var obj = list[i];
					var tr = "<tr>";
					tr += "<td>" + obj.STAFF_NAME + "</td>"; //员工姓名
					tr += "<td>" + obj.考勤次数 + "</td>"; //考勤次数
					tr += "<td>" + obj.外出次数 + "</td>"; //外出次数
					tr += "<td>" + obj.出差次数 + "</td>"; //出差次数
					tr += "<td>" + obj.请假次数 + "</td>"; //请假次数
					tr += "</tr>";
					$("#cishutbody").append(tr);
				}
			//当前页的值
				$("#currPage1").val(data.pageNum);
				$("#weiye1").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					selectcishu(last);
				})
				$("#currPage1").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage1").val();
					if(last<curr){
					   $("#currPage1").val(last);
					   selectcishu(last);
					}
					if(curr<=0){
					  $("#currPage1").val(1);
					   selectcishu(1);
					}
					 selectcishu(curr);
				});
				
				if (data.isFirstPage) {
					$("#syy1").attr("disabled", "disabled");
					$("#shouye1").attr("disabled", "disabled");
				} else {
					$("#syy1").removeAttr("disabled", "disabled");
					$("#shouye1").removeAttr("disabled", "disabled");
				}
				if (data.isLastPage) {
					$("#xyy1").attr("disabled", "disabled");
					$("#weiye1").attr("disabled", "disabled");
				} else {
					$("#xyy1").removeAttr("disabled", "disabled");
					$("#weiye1").removeAttr("disabled", "disabled");
				}
       }
    });
  }
  /* 按钮的赋值 */
	$("#syy1").click(function() {
		var currPage = parseInt($("#currPage1").val());
		selectcishu(currPage - 1);
	})
	$("#xyy1").click(function() {
		var currPage = parseInt($("#currPage1").val());
		selectcishu(currPage + 1);
	})
	$("#shouye1").click(function() {
		selectcishu(1);
	})
	
	
	/*详细信息  */
	$(document).on("click", ".Details", function() {
		var staid = $(this).parent().parent().find("#staid").html();
		var sname = $(this).parent().parent().find("#sname").html();
		//查询外出
		$.ajax({
			url : "as/selectout",
			type : "post",
			data : {"staffid" : staid},
			dataType : "json",
			success : function(data) {
			$("#outtbody").empty();
				for (var i = 0; i < data.length; i++) {
					var obj = data[i];
					var status=null;
					if(obj.status_name=0){
					    status="未批准"
					}else if(obj.status_name=1){
					    status="通过"
					}else if(obj.status_name=2){
					    status="驳回"
					}
					var tr = "<tr>";
					tr += "<td>" + sname + "</td>"; //员工姓名
					tr += "<td>" + obj.out_time + "</td>"; //外出日期
					tr += "<td>" + obj.start_time + "</td>"; //外出开始时间
					tr += "<td>" + obj.end_time + "</td>"; //外出结束时间
					tr += "<td>" + obj.place + "</td>"; //外出地点
					tr += "<td>" + obj.reason + "</td>"; //外出原因
					tr += "<td>" + obj.examine_Person + "</td>"; //审批人员
					tr += "<td>" + status + "</td>"; //审批状态
					tr += "</tr>";
					$("#outtbody").append(tr);
				}
				}
		});
		//查询请假
		$.ajax({
			url : "as/selectvoc",
			type : "post",
			data : {"staffid" : staid},
			dataType : "json",
			success : function(data) {
				$("#vocationtbody").empty();
				for (var i = 0; i < data.length; i++) {
					var obj = data[i];
					var status=null;
					if(obj.status_name=0){
					    status="未批准"
					}else if(obj.status_name=1){
					    status="通过"
					}else if(obj.status_name=2){
					    status="驳回"
					}
					var tr = "<tr>";
					tr += "<td>" + sname + "</td>"; //员工姓名
					tr += "<td>" + obj.vocation_qi_time + "</td>"; //请假开始时间
					tr += "<td>" + obj.vocation_jie_time + "</td>"; //请假结束时间
					tr += "<td>" + obj.vocation_type + "</td>"; //请假类型
					tr += "<td>" + obj.vocation_reason + "</td>"; //请假原因
					tr += "<td>" + obj.examine_Person + "</td>"; //审批人员
					tr += "<td>" + status + "</td>"; //审批状态
					tr += "</tr>";
					$("#vocationtbody").append(tr);
				}
			}
		});
		//查询出差
		$.ajax({
			url : "as/selecttra",
			type : "post",
			data : {"staffid" : staid},
			dataType : "json",
			success : function(data) {
				$("#traveltbody").empty();
				for (var i = 0; i < data.length; i++) {
					var obj = data[i];
					var status=null;
					if(obj.status_name=0){
					    status="未批准"
					}else if(obj.status_name=1){
					    status="通过"
					}else if(obj.status_name=2){
					    status="驳回"
					}
					var tr = "<tr>";
					tr += "<td>" + sname + "</td>"; //员工姓名
					tr += "<td>" + obj.start_time + "</td>"; //出差开始时间
					tr += "<td>" + obj.end_time + "</td>"; //出差结束时
					tr += "<td>" + obj.travel_place + "</td>"; //出差地点
					tr += "<td>" + obj.travel_reason + "</td>"; //出差原因
					tr += "<td>" + obj.examine_Person + "</td>"; //审批人员
					tr += "<td>" + status + "</td>"; //审批状态
					tr += "</tr>";
					$("#traveltbody").append(tr);
					}
			}
		});
		//查询上下班登记
		$.ajax({
			url : "as/selectreg",
			type : "post",
			data : {"staffid" : staid},
			dataType : "json",
			success : function(data) {}
		});


	});
</script>