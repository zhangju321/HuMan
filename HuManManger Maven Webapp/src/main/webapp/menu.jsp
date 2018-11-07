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

<title>My JSP 'yonghu.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script
	src="resource/jquery-1.11.3.min.js"></script>
<script
	src="resource/js/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="resource/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resource/js/bootstrap/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css"
	href="zTree_v3/css/zTreeStyle/zTreeStyle.css">
<script
	src="zTree_v3/js/jquery.ztree.all.min.js"></script>



<style type="text/css">
#tableDiv {
	border: 1px solid #000;
	height: 250px;
	background-color: #EBEBEB;
}
</style>
</head>

<body>
	<div id="tableDiv">
		<table class="table table-hover">
			<caption>角色管理</caption>
			<thead>
				<tr>
					<th>角色编号</th>
					<th>角色名称</th>
					<th>角色描述</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody id="tbody">

			</tbody>
		</table>
	</div>
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

	<!-- 模态框 -->
	<div class="modal fade" id="perModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">权限分配</h4>
				</div>
				<div class="modal-body" id="roleList">
					<ul id="tree" class="ztree"></ul>
					<input type="hidden" id="hidRoleId" readonly="readonly" />
				</div>
				<div class="modal-footer">
					<button class="btn btn-default" data-dismiss="modal">关闭</button>
					<button class="btn btn-primary" id="saveRight">保存</button>
				</div>
			</div>
		</div>
	</div>
	
</body>
<script type="text/javascript">
	$(function() {
		queryAllRoles(1);
	})

	function queryAllRoles(startPage) {
		$.ajax({
			url : "${pageContext.request.contextPath}/login/queryAllRoles",//login
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
					tr += "<td><input data-toggle='modal' data-target='#perModal'  type='button' value='分配权限' id=" + obj.rolesId + " class='grant btn btn-default'/></td></td>"
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




	/*分配功能*/
	$("#tbody").on("click", ".grant", function() {
		var roleId = this.id;
		$("#hidRoleId").val(roleId);
		createTree(roleId);
	});
	var zTree;
	//创建树型结构
	function createTree(roleId) {
		var setting = {
			check : {
				enable : true
			},
			view : {
				dblClickExpand : true,
				expandSpeed : ""
			},
			drag : {
				isCopy : true, //能够复制
				isMove : false, //能够移动
				prev : false, //不能拖拽到节点前
				next : false, //不能拖拽到节点后
				inner : true //只能拖拽到节点中
			},
			//异步加载
			async : {
				enable : true, //设置是否异步加载
				url : "${pageContext.request.contextPath}/login/findAllModules", //设置异步获取节点的 URL 地址
				otherParam : [ "rolesId", roleId ]
			},
			data : {
				simpleData : {
					enable : true,
					pIdKey : "parentid",
					idKey : "modulesId"
				},
				key : {
					checked : "checked",
					name : "modulesText"
				}
			},
			callback : {
				onAsyncSuccess : zTreeOnAsyncSuccess
			}
		};

		//初始化  
		zTree = $.fn.zTree.init($("#tree"), setting);
		zTree.expandAll(true);
	// 展开全部节点
	/* var treeObj = $.fn.zTree.getZTreeObj("tree");
	treeObj.expandAll(true);  */
	}
	/* 异步加载无法展开tree 默认展开一级菜单 */
	 var firstAsyncSuccessFlag = 0;
	function zTreeOnAsyncSuccess(event, treeId, msg) {
		if (firstAsyncSuccessFlag == 0) {
			try {
				//调用默认展开第一个结点 
				var selectedNode = zTree.getSelectedNodes();
				var nodes = zTree.getNodes();
				zTree.expandNode(nodes[0], true);
				var childNodes = zTree.transformToArray(nodes[0]);
				zTree.expandNode(childNodes[1], true);
				zTree.selectNode(childNodes[1]);
				var childNodes1 = zTree.transformToArray(childNodes[1]);
				zTree.checkNode(childNodes1[1], true, true);
				firstAsyncSuccessFlag = 1;
			} catch (err) {
				console.log(err.message);
			}
		}
	} 

	//保存修改后的权限数据
	$("#saveRight").click(function() {
		var nodes = zTree.getCheckedNodes(); //获取所有选中的节点集合
		var ids = [];
		for (var i = 0, l = nodes.length; i < l; i++) {
			ids[ids.length] = nodes[i].modulesId; //存入菜单编号
		}
		var idstr = ids.join(","); //拼接成字符串
		$.ajax({
			url : "${pageContext.request.contextPath}/login/dropMenu",
			data : {
				"rolesId" : $("#hidRoleId").val(),
				"menuIds" : idstr
			},
			dataType : "text",
			type : "post",
			success : function() {
				//$("modal").close();
				$("#perModal").modal('hide');
			}
		});
	});
</script>