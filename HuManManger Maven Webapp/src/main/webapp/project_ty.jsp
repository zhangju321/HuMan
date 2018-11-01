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

<title>My JSP 'project_ty.jsp' starting page</title>

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
	src="${pageContext.request.contextPath}/resources/bootstrap/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/demo.css">

<%-- <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/zTreeStyle/zTreeStyle.css">
 --%>
 <%-- <script
	src="${pageContext.request.contextPath}/resource/zTree_v3/js/jquery.ztree.all.min.js"></script>
 --%>
 <!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
	<ul class="nav nav-tabs">
		<li class="dropdown"><a href="#" id="myTabDrop1"
			class="dropdown-toggle" data-toggle="dropdown">薪酬项目 <b
				class="caret"></b>

		</a>

			<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
				<!-- <li><a href="#home" tabindex="-1" data-toggle="tab">薪酬项目定义</a></li> -->
				<li><a href="#ios" tabindex="-1" data-toggle="tab">薪酬项目操作</a></li>
			</ul></li>



		<!-- 
<li class="dropdown"><a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown">保险基数设置 <b
				class="caret"></b>
				
		</a>
		
			<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
				<li><a href="#jmeter" tabindex="-1" data-toggle="tab">aaaa</a></li>
				<li><a href="#ejb" tabindex="-1" data-toggle="tab">bbbb</a></li>
			</ul></li> -->
	</ul>


	<!-- 薪酬项目定义 -->

	<ul id="myTab" class="nav nav-tabs">

	</ul>


	<div id="myTabContent" class="tab-content">
		<div class="tab-pane fade in active" id="home">
			<p>
			<form class="form-horizontal" role="form" id="form1">
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">项目编号</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="firstname"
							placeholder="请项目编号">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">项目名称</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname"
							placeholder="请项目名称" name="project_name">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">项目类型</label>
					<div class="col-sm-3">
						<select name="project_type"
							style="	background-color: #f9f9f9; min-width: 160px; padding: 2px 9px;">
							<option>项目类型</option>
							<option vaule="project_type">考勤扣款标准设置</option>
							<option vaule="project_type">薪资基数设置</option>
							<option vaule="project_type">福利管理设置</option>
						</select>
					</div>

				</div>


				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-7">
						<input type="button" class="btn btn-default" value="添加"
							onclick="save()">
					</div>
				</div>
			</form>
			
			<!--查询project  -->
			<table class="table table-striped">

				<thead>
					<tr>
						<th>项目编号</th>
						<th>项目名称</th>
						<th>项目类型</th>
					</tr>
				</thead>
				<tbody id="tbody">

				</tbody>
			</table>
		</div>

		
		
			</p>
</div>
			<div class="tab-pane fade" id="xg">
				<p>jMeter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。</p>
			</div>


		</div>
		<div class="tab-pane fade" id="jmeter">
			<p>jMeter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。</p>
		</div>
		<div class="tab-pane fade" id="ejb">
			<p>Enterprise Java
				Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web Logic
				等）的 J2EE 上。</p>
		</div>
	</div>





<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			 <a id="modal-913422"  role="button" class="btn" ></a>
			
			<div class="modal fade" id="modal-container-913422" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">
								修改项目
							</h4>
						</div>
						<div class="modal-body">
							<!-- 修改页面 -->
		 
			<form class="form-horizontal" role="form" id="form2">
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">项目编号</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" 
							placeholder="请项目编号" name="project_id" id="project_id">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">项目名称</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" 
							placeholder="请项目名称" name="project_name" id="project_name">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">项目类型</label>
					<div class="col-sm-3">
						<select name="project_type"
							style="	background-color: #f9f9f9; min-width: 160px; padding: 2px 9px;">
							<option>项目类型</option>
							<option vaule="project_type" id="project_type">考勤扣款标准设置</option>
							<option vaule="project_type" id="project_type">薪资基数设置</option>
							<option vaule="project_type" id="project_type">福利管理设置</option>
						</select>
					</div>

				</div>


				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-7">
					
					
						<input type="button" class="btn btn-default" value="修改"
							onclick="update()"> <!-- <a href="#home" tabindex="-1"
							data-toggle="tab">返回</a> -->
					</div>
					
				</div>
			</form>
						</div>
						<div class="modal-footer">
							 <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="button" class="btn btn-primary">保存</button>
						</div>
					</div>
					
				</div>
				
			</div>
			
		</div>
	</div>
</div>





</body>
<script>

$(function () {
		$('#myTabDrop1 li:eq(1) a').tab('show');
	});
	//添加
	function save() {
		/* 表单序列化 */
		var str = $("#form1").serialize();
		/* var ddd=3;
		$("#project_id").val(ddd);
		alert(333); */
		$.ajax({
			url : "project/psave",
			type : "post",
			async : true,
			data : $("#form1").serialize(), //数据类型不需要转化成json
			dataType : 'text', //返回类型type
			success : function(data) {
				alert(data);
				findAll();
			}
		});
	}

	//查询全部
	function findAll() {
		
		$.ajax({
			url : "project/findAll",
			type : "post",
			async : true,
			dataType : 'Json',
			success : function(data) {
				/* alert(data); */

				$("#tbody").html("");
				for (var i = 0; i < data.length; i++) {
					var obj = data[i];
					var tr = "<tr>";
					tr += "<td>" + obj.project_id + "</td>";
					tr += "<td>" + obj.project_name + "</td>";
					tr += "<td>" + obj.project_type + "</td>";
					tr += "<td><input type='button' id='" + obj.project_id + "' value='修改' class='update' href='#modal-container-913422' data-toggle='modal'></td>";
                    tr +="<td><input type='button' id='" + obj.project_id + "' value='删除' class='delete'></td>"
					tr += "</tr>";
					$("#tbody").append(tr);
				}
			}
		});
	}

	$(function() {
		findAll();
	})
	
	
//更改
 $(function(){
				$("#tbody").on("click",".update",function(){
					var id=this.id;
					
					$.ajax({
						url:"project/selectid",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
							
							$("#project_id").val(data[0].project_id);
							$("#project_name").val(data[0].project_name);
							$("#project_type").val(data[0].project_type);
						}
					});
				})
			})


function update(){
				/* var obj=$("#form2").serializeObject(); */
				alert(333);
			$.ajax({
			url : "project/pupdate",
			type : "post",
			async : true,
			data : $("#form2").serialize(), //数据类型不需要转化成json
			dataType : 'text', //返回类型type
			success : function(data) {
				alert(data);
				findAll();
			}
		});
			}
			/*删除  */
					$(document).on("click",".delete",function(){
						 var id=this.id;
					 	/*alert(id); */
					 	if(confirm("确认删除？")){
					 		$.ajax({
					 		url : "project/pdelete",
					 		data : {"project_id":id},
					 		type : "post",
					 		dataType : 'text',
					 		success:function(data){
					 			/* alert(data); */
					 			findAll();
					 		}
					 	});
					 	}else{
					 		alert("取消删除！");
					 	}
					 	
					})
		
</script>
</html>
