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
				<th>外出次数</th>
				<th>出差次数</th>
				<th>请假次数</th>
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
					<h4 class="modal-title" id="modalTitle1">考勤详情</h4>
				</div>
				<div class="modal-body">
					

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
		selectas();
	});

	function selectas() {
		
		$.ajax({
			url : "as/selectas",
			type : "post",
			dataType : "json",
			success : function(data) {
				$("#tbody").empty();
				for (var i = 0; i < data.length; i++) {
					var obj = data[i];
					var tr = "<tr>";
					tr += "<td>" + obj.STAFF_NAME + "</td>"; //员工姓名
					tr += "<td>" + obj.co + "</td>"; //外出次数 
					tr += "<td>" + obj.ct + "</td>"; //出差次数
					tr += "<td>" + obj.cv + "</td>"; //请假次数 
					tr += "<td>" + obj.attendance_should + "</td>"; //应出勤 
					tr += "<td>" + obj.attendance_actual + "</td>"; //实际出勤 
					tr += "<td>" + obj.sr + "</td>"; //休息
					tr += "<td>" + obj.sa + "</td>"; //旷工
					tr += "<td>" + obj.sl + "</td>"; //迟到
			        tr += "<td><input type='button'  title=" + obj.staff_id + "  data-toggle='modal' data-target='#myModal' class='Details btn btn-default' value='详细信息'></td>";				
					tr += "</tr>";
					$("#tbody").append(tr);
				}
			}
		});
	}
	
	/*详细信息  */
	$(document).on("click", ".Details", function() {
		var id = this.title;
		alert(id);
		$.ajax({
			url : "as/Details",
			type : "post",
			data : {
				"staffid" : id
			},
			dataType : "json",
			success : function(data) {
			alert("成功");

			}
		});
	});


</script>