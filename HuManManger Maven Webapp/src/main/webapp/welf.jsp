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

<title>My JSP 'welf.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
<script
	src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="resource/bootstrapValidator.min.css">
<script src="resource/bootstrapValidator.min.js"></script>

</head>

<body>
	<table class="table table-hover">

		<thead>
			<h3>福利操作</h3>
			<tr class="warning">
				<th>部门名称</th>
				<th>人员名称</th>
				<th><input type="button" value="设置福利" onclick="showCol()"
					class="xz btn btn-primary" data-toggle="modal"" href="#modal-container-880261"
					 data-toggle="modal"> 全选/全不选<input type="checkbox"
					id="selectAll" />
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



	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<a id="modal-880261" role="button" class="btn"></a>

				<div class="modal fade" id="modal-container-880261" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content" style="width:850px;">
							<form class="form-horizontal" role="form" id="form1">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">×</button>
									<h4 class="modal-title" id="myModalLabel">添加福利</h4>
								</div>
								<div class="form-group">


									<label for="lastname" class="col-sm-2 control-label">员工名:</label>
									<div class="col-sm-3">
										<input type="text" class="form-control" placeholder="员工名"
											id="staffname" readonly="readonly"> <input
											type="hidden" name="staff_id" id="staffid">
									</div>

								</div>

								<div class="form-group">
									<label for="lastname" class="col-sm-2 control-label">福利时间:</label>
									<div class="col-sm-3">
										<input type="Date" class="form-control" id="time1"
											placeholder="福利时间" name="issue_date">
									</div>
								</div>
								<div class="form-group">
									<label for="lastname" class="col-sm-2 control-label">福利项目名称:</label>
									<div class="col-sm-3">
										<input type="text" class="form-control" id="type1"
											placeholder="福利请项目名称" name="welfare_type">
									</div>
								</div>



								<div class="form-group">
									<label for="lastname" class="col-sm-2 control-label">福利物品:</label>
									<div class="col-sm-3">
										<input type="text" class="form-control" id="goods1"
											placeholder="福利物品" name="goods">
									</div>
								</div>
								<div class="form-group">
									<label for="lastname" class="col-sm-2 control-label">福利金额:</label>
									<div class="col-sm-3">
										<input type="text	" class="form-control" placeholder="金额"
											name="welfare_monery" id="welfare_monery">
									</div>
								</div>


								<div class="form-group">
									<label for="lastname" class="col-sm-2 control-label">是否纳税:</label>
									<div class="col-sm-3">
										<select class="form-control" name="tax" id="tax">
											<option value="是">是</option>
											<option value="否">否</option>
										</select>
									</div>

								</div>




								<div class="form-group">
									<label for="lastname" class="col-sm-2 control-label">备注</label>
									<div class="col-sm-3">
										<textarea class="form-control" rows="3" name="remark"
											id="remark">
                                      </textarea>
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-7">
										<input type="button" class="btn btn-primary" data-toggle="modal" value="添加"
											onclick="save()">
									</div>
								</div>
						</div>
						
						</form>
						

					</div>

				</div>

			</div>
		</div>
	</div>


	<!--查看详情  -->
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<a id="modal-880261" role="button" class="btn"></a>

				<div class="modal fade" id="modal-xq" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content" style="width:850px">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
								<h4 class="modal-title" id="myModalLabel">薪资详情</h4>
							</div>
							<div class="modal-body">

								<div id="myTabContent" class="tab-content">
									<div class="tab-pane fade in active" id="home">

										<table class="table table-condensed table-bordered">

											<tbody id="tbody2">
										</table>

									</div>
								</div>

							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
							</div>

						</div>

					</div>

				</div>
			</div>
		</div>
	</div>
</body>


<script>

	//全选
	$(function() {
		$("#selectAll").click(function() {
			$(":checkbox[name='checkid']").prop("checked", this.checked)
		});
	}); // this指代的你当前选择的这个元素的JS对象 }); });
	//添加表单验证
	$(document).ready(function() {

		$('#form1').bootstrapValidator({
			message : 'This value is not valid', //验证错误时的信息
			feedbackIcons : { //验证时显示的图标
				valid : 'glyphicon glyphicon-ok', //正确图标
				invalid : 'glyphicon glyphicon-remove', //错误图标
				validating : 'glyphicon glyphicon-refresh' //正在更新图标
			},
			fields : {
				//要验证哪些字段
				//福利项目名称
				welfare_type : {
					validators : {
						notEmpty : { //非空判断
							message : '不能为空' //验证错误时的信息，
						},
					}
				},
				// 福利物品
				goods : {
					validators : {
						notEmpty : { //非空判断
							message : '不能为空' //验证错误时的信息，
						},
					}
				},
				//福利金额
				welfare_monery : {
					validators : {
						notEmpty : { //非空判断
							message : '不能为空' //验证错误时的信息，
						},
						regexp : { //正则表达式判断 
							regexp : /^[0-9]+.?[0-9]*$/, //表达式内容
							message : '必须为数字' //验证错误时的信息，
						}
					}
				},
			}
		});
	});
	//修改页面表单验证
	$(document).ready(function() {

		$('#form2').bootstrapValidator({
			message : 'This value is not valid', //验证错误时的信息
			feedbackIcons : { //验证时显示的图标
				valid : 'glyphicon glyphicon-ok', //正确图标
				invalid : 'glyphicon glyphicon-remove', //错误图标
				validating : 'glyphicon glyphicon-refresh' //正在更新图标
			},
			fields : {
				//要验证哪些字段
				//福利项目名称
				welfare_type : {
					validators : {
						notEmpty : { //非空判断
							message : '不能为空' //验证错误时的信息，
						},
					}
				},
				// 福利物品
				goods : {
					validators : {
						notEmpty : { //非空判断
							message : '不能为空' //验证错误时的信息，
						},
					}
				},
				//福利金额
				welfare_monery : {
					validators : {
						notEmpty : { //非空判断
							message : '不能为空' //验证错误时的信息，
						},
						regexp : { //正则表达式判断 
							regexp : /^[0-9]+.?[0-9]*$/, //表达式内容
							message : '必须为数字' //验证错误时的信息，
						}
					}
				},
			}
		});
	});

	//查询福利全部

	function findAll(startPage) {
		$.ajax({
			url : "welfare/queryWelfare",
			type : "post",
			async : true,
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
					tr += "<td id='welfid' style='display:none'>" + obj.welfareid + "</td>"
					tr += "<td id='deid' style='display:none'>" + obj.departmentId + "</td>";
					tr += "<td id='dname'>" + obj.departmentName + "</td>";
					tr += "<td name='staid' style='display:none'>" + obj.staff_id + "</td>";
					tr += "<td name='staname'>" + obj.STAFF_NAME + "</td>";
					tr += "<td><input type='checkbox' name='checkid' value='" + obj.staff_id + "'></td>";
					tr += "<td><input type='button' id='" + obj.staff_id + "' value='查看详情' class='xq btn btn-primary' href='#modal-xq' data-toggle='modal'></td>";
					tr += "</tr>";
					$("#tbody").append(tr);
				}
				//当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					findAll(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if (last < curr) {
						$("#currPage").val(last);
						findAll(last);
					}
					if (curr <= 0) {
						$("#currPage").val(1);
						findAll(1);
					}
					findAll(curr);
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
	;
	/* 按钮的赋值 */
	$("#syy").click(function() {
		var currPage = parseInt($("#currPage").val());
		findAll(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		findAll(currPage + 1);
	})
	$("#shouye").click(function() {
		findAll(1);
	})
	$(function() {
		findAll(1);
	})

	//获取查询的列值,方便修改
	$(function() {
		$("#tbody").on("click", ".update", function() {
			//获取福利编号  并将值加到修改的input内
			var welfid = $(this).parent().parent().find("#welfid").html();
			$("#welfareid").val(welfid);

			//获取部门编号姓名  并将值加到修改的input内
			var deparname = $(this).parent().parent().find("#dname").html();
			$("#deparname").val(deparname);
			var deparid = $(this).parent().parent().find("#deid").html();
			$("#deparid").val(deparid);
			//获取员工编号姓名  并将值加到修改的input内
			var staffname = $(this).parent().parent().find("#staname").html();
			$("#staffname").val(staffname);
			var staffid = $(this).parent().parent().find("#staid").html();
			$("#staffid").val(staffid);
			//获取福利活动时间  并将值加到修改的input内
			var time = $(this).parent().parent().find("#date").html();
			$("#time").val(time);
			//获取福利项目名  并将值加到修改的input内
			var welfname = $(this).parent().parent().find("#welftype").html();
			$("#welfname").val(welfname);
			//获取福利活动物品  并将值加到修改的input内
			var goods = $(this).parent().parent().find("#welfgoods").html();
			$("#goods").val(goods);
			//获取福利活动金额  并将值加到修改的input内
			var money = $(this).parent().parent().find("#welfmoney").html();
			$("#money").val(money);

			//获取备注  并将值加到修改的input内
			var remark = $(this).parent().parent().find("#welfremark").html();
			$("#bz").val(remark);
			//获取是否纳税  并将值加到修改的input内
			var tax = $(this).parent().parent().find("#welftax").html();
			$("#sele").val(tax);
		});
	})

	//添加
	function save() {
		$.ajax({
			url : "welfare/welfSave",
			type : 'post',
			async : true,
			data : {
				array : $("#staffid").val(),
				issue_date : $("#time1").val(),
				welfare_type : $("#type1").val(),
				goods : $("#goods1").val(),
				welfare_monery : $("#welfare_monery").val(),
				remark : $("#remark").val(),
				tax : $("#tax").val(),
			},
			dataType : 'text',
			success : function(data) {
				if (data > 0) {
					alert("添加成功");
				} else {
					alert("重复添加");
				}
				location.reload();
			},
			error : function(data) {}
		})
	}



	/*删除  */
	$(document).on("click", ".delete", function() {
		var id = this.id;
		if (confirm("确认删除？")) {
			$.ajax({
				url : "welfare/welfdelete",
				data : {
					"welfareid" : id
				},
				type : "post",
				dataType : 'text',
				success : function(data) {
					/* alert(data); */
					findAll();
				}
			});
		} else {
			alert("取消删除！");
		}

	})

	//修改
	function update1() {
		var obj = $("#form2").serialize();
		$.ajax({
			url : "welfare/welfupdate",
			type : "post",
			async : true,
			data : obj, //数据类型不需要转化成json
			dataType : 'text', //返回类型type
			success : function(data) {
				location.reload();
			}
		});
	}
	//获取人员编号

	function showCol() {
		var check = $("input[name='checkid']:checked"); //选中的复选框
		var ty = [];
		var ty1 = [];

		check.each(function() {

			var row = $(this).parent("td").parent("tr");

			var id = row.find("[name='staid']").html(); //注意html()和val()
			alert(id);
			var name = row.find("[name='staname']").html();
			alert(name);
			ty.push(name);
			ty1.push(id);

		});
		$("#staffname").val(ty);
		$("#staffid").val(ty1);
	}

	//单条查询详情
	$(function() {
		$("#tbody").on("click", ".xq", function() {
			var id = this.id;
			$.ajax({
				url : "welfare/queryid",
				type : "post",
				async : true,
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(id),
				dataType : 'Json',
				success : function(data) {

					$("#tbody2").html("");
					for (var i = 0; i < data.length; i++) {
						var obj = data[i];

						var tr = "<tr>";
						tr += "<tr>"
						tr += "<td>部门名称</td><td>" + obj.departmentName + "</td>";
						tr += "</tr>";
						tr += "<tr>"
						tr += "<td>员工名称</td><td>" + obj.STAFF_NAME + "</td>";
						tr += "</tr>";
						tr += "<tr>"
						tr += "<td>职务工资</td><td>" + obj.welfare_type + "</td>";
						tr += "</tr>";
						tr += "<tr>"
						tr += "<td>奖金(元)</td><td>" + obj.issue_date + "</td>";
						tr += "</tr>";
						tr += "<tr>"
						tr += "<td>津贴(元)</td><td>" + obj.welfare_monery + "</td>";
						tr += "</tr>";
						tr += "<tr>"
						tr += "<td>考勤扣款总额(元)</td><td>" + obj.tax + "</td>";
						tr += "</tr>";
						tr += "<tr>"
						tr += "<td>个人养老保险(元)</td><td>" + obj.goods + "</td>"; //个人养老
						tr += "</tr>";
						tr += "<tr>"
						tr += "<td>个人医疗保险(元)</td><td>" + obj.remark + "</td>"; //个人医疗
						tr += "</tr>";
						$("#tbody2").append(tr);

					}
				}
			});
		})
	})
</script>

</html>
