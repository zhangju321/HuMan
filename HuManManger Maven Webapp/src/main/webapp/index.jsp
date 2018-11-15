<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>人事管理系统</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link rel="stylesheet" href="layuiadmin/layui/css/layui.css"
	media="all">
<link rel="stylesheet" href="layuiadmin/style/admin.css" media="all">
<script>
/*  /^http(s*):\/\//.test(location.href) || alert('请先部署到 localhost 下再访问'); */
</script>
</head>
<body class="layui-layout-body">
	<div class="layui-circle"></div>
	<div id="LAY_app">
		<div class="layui-layout layui-layout-admin">
			<div class="layui-header">
				<!-- 头部区域 -->
				<ul class="layui-nav layui-layout-left">
					<li class="layui-nav-item layadmin-flexible" lay-unselect><a
						href="javascript:;" layadmin-event="flexible" title="侧边伸缩"> <i
							class="layui-icon layui-icon-shrink-right" id="LAY_app_flexible"></i>
					</a></li>
					<li class="layui-nav-item layui-hide-xs" lay-unselect><a
						href="http://www.baidu.com" target="_blank" title="前台">
							<i class="layui-icon layui-icon-website"></i>
					</a></li>
					<li class="layui-nav-item" lay-unselect><a href="index.jsp"
						layadmin-event="refresh" title="刷新"> <i
							class="layui-icon layui-icon-refresh-3"></i>
					</a></li>
					<li class="layui-nav-item layui-hide-xs" lay-unselect><input
						type="text" placeholder="搜索..." autocomplete="off"
						class="layui-input layui-input-search" layadmin-event="serach"
						lay-action="index.jsp"></li>
				</ul>
				<ul class="layui-nav layui-layout-right"
					lay-filter="layadmin-layout-right">

					<li class="layui-nav-item" lay-unselect><a
						lay-href="index.jsp" layadmin-event="message"
						lay-text="消息中心"> <i class="layui-icon layui-icon-notice"></i>

							<!-- 如果有新消息，则显示小圆点 --> <span class="layui-badge-dot"></span>
					</a></li>
					<li class="layui-nav-item layui-hide-xs" lay-unselect><a
						href="javascript:;" layadmin-event="theme"> <i
							class="layui-icon layui-icon-theme"></i>
					</a></li>
					<li class="layui-nav-item layui-hide-xs" lay-unselect><a
						href="javascript:;" layadmin-event="note"> <i
							class="layui-icon layui-icon-note"></i>
					</a></li>
					<li class="layui-nav-item layui-hide-xs" lay-unselect><a
						href="javascript:;" layadmin-event="fullscreen"> <i
							class="layui-icon layui-icon-screen-full"></i>
					</a></li>
					<li class="layui-nav-item" lay-unselect><a href="javascript:;">
							<cite>${user.uname}</cite>
					</a>
						<dl class="layui-nav-child">
							<dd  style="text-align: center;">
								<a href="ceshi3.jsp">退出</a>
							</dd>
						</dl></li>
				</ul>
			</div>

			<!-- 侧边菜单 -->
			<div class="layui-side layui-side-menu">
				<div class="layui-side-scroll">
					<div class="layui-logo" lay-href="home/console.html">
						<span><h3>人事资源管理系统</h3></span>
					</div>

					<ul class="layui-nav layui-nav-tree" lay-shrink="all"
						id="LAY-system-side-menu" lay-filter="layadmin-system-side-menu">
						<li data-name="home" class="layui-nav-item layui-nav-itemed">
							<a href="javascript:;" lay-tips="人事管理" lay-direction="2"> <i
								class="layui-icon layui-icon-home"></i> <cite>人事管理</cite>
						</a>
							<dl class="layui-nav-child">
								<dd data-name="console">
									<a lay-href="csj/staffion.jsp">人事档案</a>
								</dd>
								<dd data-name="console">
									<a lay-href="csj/Diaos.jsp">人事调动</a>
								</dd>
								<dd data-name="console">
									<a lay-href="csj/rencai.jsp">人才库</a>
								</dd>
								
								<dd data-name="console">
									<a lay-href="Staff_leaveSelect.jsp">离职管理</a>
								</dd>
								<dd data-name="console">
									<a lay-href="Staff_reinstatement.jsp">复职管理</a>
								</dd>
								<dd data-name="console">
									<a lay-href="Staff_contract.jsp">合同管理</a>
								</dd>
							</dl>
						</li>
						<li data-name="component" class="layui-nav-item"><a
							href="javascript:;" lay-tips="招聘" lay-direction="2"> <i
								class="layui-icon layui-icon-component"></i> <cite>招聘</cite>
						</a>
							<dl class="layui-nav-child">
								<dd data-name="grid">
									<a href="javascript:;">招聘计划<span class="layui-nav-more"></span></a>
									<dl class="layui-nav-child">
										<dd data-name="list">
											<a lay-href="/HuManManger/wmw/plan_select.jsp">招聘计划管理</a>
										</dd>
										<dd data-name="list">
											<a lay-href="/HuManManger/wmw/plan_zero.jsp">招聘计划审批</a>
										</dd>
									</dl>
								</dd>
								<dd data-name="tabs" class="">
									<a lay-href="/HuManManger/wmw/requirements_save.jsp">招聘需求</a>
								</dd>
								
								
								<dd data-name="layer" class="">
									<a href="javascript:;">人才筛选<span class="layui-nav-more"></span></a>
									<dl class="layui-nav-child">
										 <dd data-name="list" class="">
											<a lay-href="/HuManManger/wmw/filter_save.jsp" lay-text="layer 创建筛选">创建筛选</a>
										</dd>
										<dd data-name="special-demo" class="">
											<a lay-href="/HuManManger/wmw/filter_select.jsp"
												lay-text="layer 办理筛选">办理筛选</a>
										</dd>
										
									</dl>
								</dd>
								<dd data-name="layer" class="">
									<a href="javascript:;">人才录用<span class="layui-nav-more"></span></a>
									<dl class="layui-nav-child">
										 <dd data-name="list" class="">
											<a lay-href="/HuManManger/wmw/recruitment_save.jsp" lay-text="layer 创建筛选">创建录用</a>
										</dd>
										<dd data-name="special-demo" class="">
											<a lay-href="/HuManManger/wmw/recruitment_select.jsp"
												lay-text="layer 办理筛选">录用管理</a>
										</dd>
									</dl>
								</dd>
								
								
								
								
								
							</dl></li>
						<li data-name="template" class="layui-nav-item"><a
							href="javascript:;" lay-tips="考勤审批" lay-direction="2"> <i
								class="layui-icon layui-icon-template"></i> <cite>考勤审批</cite>
						</a>
							<dl class="layui-nav-child">
							    <dd>
									<a lay-href="notapproved.jsp">待审批事项</a>
								</dd>
								<dd>
									<a lay-href="attend.jsp">考勤登记/审批</a>
								</dd>
								<dd>
									<a lay-href="record.jsp">考勤记录</a>
								</dd>
								<dd>
									<a lay-href="csj/work.jsp">上下班打卡</a>
								</dd>
								<dd>
									<a lay-href="attendancestatistics.jsp">考勤统计</a>
								</dd>
								
							</dl></li>
						<li data-name="app" class="layui-nav-item"><a
							href="javascript:;" lay-tips="薪酬福利" lay-direction="2"> <i
								class="layui-icon layui-icon-app"></i> <cite>薪酬福利</cite>
						</a>
						<dl class="layui-nav-child">
								<dd>
									<a lay-href="welf.jsp">福利项目设置</a>
								</dd>
								<dd>
									<a lay-href="test.jsp">薪资基数设置</a>
								</dd>
								<dd>
									<a lay-href="paystate.jsp">薪资基数状态</a>
								</dd>
								
								<dd>
									<a lay-href="querypay.jsp">薪资基数操作</a>
								</dd>
								<dd>
									<a lay-href="after_tax_ty.jsp">薪资报表</a>
								</dd>
							</dl></li>
						<li data-name="senior" class="layui-nav-item"><a
							href="javascript:;" lay-tips="考勤管理" lay-direction="2"> <i
								class="layui-icon layui-icon-senior"></i> <cite>考勤管理</cite>
						</a>
							<dl class="layui-nav-child">
								<dd>
									<a lay-href="config.jsp">班次管理</a>
								</dd>
								<dd>
									<a lay-href="schedule.jsp">排班管理</a>
								</dd>
								<dd>
									<a lay-href="rule.jsp">考勤统计规则</a>
								</dd>
								<dd>
									<a lay-href="sf.jsp">免签节假日</a>
								</dd>
							</dl></li>
						<li data-name="user" class="layui-nav-item"><a
							href="javascript:;" lay-tips="权限管理" lay-direction="2"> <i
								class="layui-icon layui-icon-user"></i> <cite>权限管理</cite>
						</a>
							<dl class="layui-nav-child">
								<dd>
									<a lay-href="roles.jsp">角色管理</a>
								</dd>
								<dd>
									<a lay-href="menu.jsp">分配权限</a>
								</dd>
								
							</dl></li>
						<li data-name="set" class="layui-nav-item"><a
							href="javascript:;" lay-tips="设置" lay-direction="2"> <i
								class="layui-icon layui-icon-set"></i> <cite>设置</cite>
						</a>
							<dl class="layui-nav-child">
								<dd class="layui-nav-itemed">
									<a href="javascript:;">系统设置</a>
									<dl class="layui-nav-child">
										<dd>
											<a lay-href="set/system/website.html">网站设置</a>
										</dd>
										<dd>
											<a lay-href="set/system/email.html">邮件服务</a>
										</dd>
									</dl>
								</dd>
								<dd class="layui-nav-itemed">
									<a href="javascript:;">我的设置</a>
									<dl class="layui-nav-child">
										<dd>
											<a lay-href="set/user/info.html">基本资料</a>
										</dd>
										<dd>
											<a lay-href="set/user/password.html">修改密码</a>
										</dd>
									</dl>
								</dd>
							</dl></li>
					
						
					</ul>
				</div>
			</div>

			<!-- 页面标签 -->
			<div class="layadmin-pagetabs" id="LAY_app_tabs">
				<div class="layui-icon layadmin-tabs-control layui-icon-prev"
					layadmin-event="leftPage"></div>
				<div class="layui-icon layadmin-tabs-control layui-icon-next"
					layadmin-event="rightPage"></div>
				<div class="layui-icon layadmin-tabs-control layui-icon-down">
					<ul class="layui-nav layadmin-tabs-select"
						lay-filter="layadmin-pagetabs-nav">
						<li class="layui-nav-item" lay-unselect><a
							href="javascript:;"></a>
							<dl class="layui-nav-child layui-anim-fadein">
								<dd layadmin-event="closeThisTabs">
									<a href="javascript:;">关闭当前标签页</a>
								</dd>
								<dd layadmin-event="closeOtherTabs">
									<a href="javascript:;">关闭其它标签页</a>
								</dd>
								<dd layadmin-event="closeAllTabs">
									<a href="javascript:;">关闭全部标签页</a>
								</dd>
							</dl></li>
					</ul>
				</div>
				<div class="layui-tab" lay-unauto lay-allowClose="true"
					lay-filter="layadmin-layout-tabs">
					<ul class="layui-tab-title" id="LAY_app_tabsheader">
						<li lay-id="home/console.html" lay-attr="home/console.html"
							class="layui-this"><i class="layui-icon layui-icon-home"></i></li>
					</ul>
				</div>
			</div>


			<!-- 主体内容 -->
			<div class="layui-body" id="LAY_app_body">
				<div class="layadmin-tabsbody-item layui-show">
					<iframe src="roles.jsp" frameborder="0"
						class="layadmin-iframe"></iframe>

				</div>
			</div>

			<!-- 辅助元素，一般用于移动设备下遮罩 -->
			<div class="layadmin-body-shade" layadmin-event="shade"></div>
		</div>
	</div>

	<script src="layuiadmin/layui/layui.js"></script>
	<script>
		layui.config({
			base : 'layuiadmin/' //静态资源所在路径
		}).extend({
			index : 'lib/index' //主入口模块
		}).use('index');
	</script>
</body>
</html>


