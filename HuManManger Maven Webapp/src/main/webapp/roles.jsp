<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'yonghu.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="resource/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resource/js/bootstrap/css/bootstrap-theme.min.css">

<script
	src="resource/jquery-1.11.3.min.js"></script>
<script
	src="resource/js/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="resource/jqueryExt.js"></script>
</head>

<body>

	<table class="table table-hover">
		<br/>
		<thead>
			<tr>
				<th>角色编号</th>
				<th>角色名称</th>
				<th>角色描述</th>
				<th style="text-align: center">操作</th>
				<th><button type="button" data-toggle='modal'
						data-target='#myModal' class="addRoles btn btn-primary">添加角色</button></th>
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
		<li style="font-weight: lighter;">当前第<input type="text"
			id="currPage"
			style="height:35px;width:50px;border-radius:10px;text-align: center;" />页
		</li>
	</ul>
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">修改角色信息</h4>
				</div>
				<div class="modal-body">

					<div style="padding:10px;">
						<form class="bs-example bs-example-form" role="form"
							id="rolesForm">
							<input type="hidden" id="roles-id" name="rolesId" />
							<div class="input-group">
								<span class="input-group-addon">角色名称</span> <input type="text"
									class="form-control" placeholder="请输入角色名称" id="roles-name"
									name="rolesName">
							</div>
							<br>
							<div class="input-group">
								<span class="input-group-addon">角色描述</span> <input type="text"
									class="form-control" placeholder="请输入角色描述" id="roles-miaoshu"
									name="rolesdescribe">
							</div>
							<br>
						</form>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary" id="saveOrUpdate">提交更改</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
</body>
<script type="text/javascript">

	/***************修改前的查询********/
	$(document).on("click", ".updateOradd", function() {
		var rolesId = this.id;
		$.ajax({
			url : "${pageContext.request.contextPath}/login/updateBeforeQuery",
			type : "post",
			data : {
				"rolesId" : rolesId
			},
			dataType : "json",
			success : function(data) {
				$("#roles-id").val(data[0].rolesId);
				$("#roles-name").val(data[0].rolesName);
				$("#roles-miaoshu").val(data[0].rolesdescribe);
			}
		})
	})
	/*********修改保存*******/
	/* 清空表格 */
	$(document).on("click", ".addRoles", function() {
		$("#roles-id").val("");
		$("#roles-name").val("");
		$("#roles-miaoshu").val("");
	})
	/* 提交信息--修改或者添加 */
	$("#saveOrUpdate").click(function() {
		var obj = $("#rolesForm").serializeObject();
		$.ajax({
			url : "${pageContext.request.contextPath}/login/saveOrUpdate",
			type : "post",
			async : true,
			contentType : "application/json;charset=utf-8",
			data : JSON.stringify(obj),
			dataType : "text",
			success : function() {
				var curr = $("#currPage").val();
				queryAllRoles(curr);
				$("#myModal").modal('hide');
				alert("成功！！！");
				

			}
		})
	})

	/********************删除***************/
	$(document).on("click", ".deleteRoles", function() {
		var rolesId = this.id;
		$.ajax({
			url : "${pageContext.request.contextPath}/login/deleteRoles",
			type : "post",
			data : {
				"rolesId" : rolesId
			},
			dataType : "text",
			success : function() {
				var curr = $("#currPage").val();
				queryAllRoles(curr);
			}
		})
	})

	/************分页**********/
	$(function() {
		queryAllRoles(1);
	})

	function queryAllRoles(startPage) {
		$.ajax({
			url : "${pageContext.request.contextPath}/login/queryAllRoles",
			type : "post",
			data : {
				"startPage" : startPage
			},
			dataType : "json",
			success : function(data) {
				$("#tbody").html("");
				var ary = data.list;
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i];
					var tr = "<tr>";
					tr += "<td>" + obj.rolesId + "</td>";
					tr += "<td>" + obj.rolesName + "</td>";
					tr += "<td>" + obj.rolesdescribe + "</td>";
					tr += "<td><button data-toggle='modal' data-target='#myModal'  type='button' value='修改' id=" + obj.rolesId + " class='updateOradd btn btn-default'>修改</button></td></td>"
					tr += "<td><button type='button' value='删除' id=" + obj.rolesId + " class='deleteRoles btn btn-primary' data-loading-text='Loading...'>删除</button></td></td>"
					tr += "</tr>";
					//#tbody为模态框的div
					$("#tbody").append(tr); //追加行

				}
				//当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					queryAllRoles(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if (last < curr) {
						$("#currPage").val(last);
						queryAllRoles(last);
					}
					if (curr <= 0) {
						$("#currPage").val(1);
						queryAllRoles(1);
					}
					queryAllRoles(curr);
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
		})

	}
	/* 按钮的赋值 */
	$("#syy").click(function() {
		var currPage = parseInt($("#currPage").val());
		queryAllRoles(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		queryAllRoles(currPage + 1);
	})
	$("#shouye").click(function() {
		queryAllRoles(1);
	})
	
</script>