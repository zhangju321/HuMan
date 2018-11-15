<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'kaoshi.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
							<cite>总经理</cite>
					</a>
						<dl class="layui-nav-child">
							<dd  style="text-align: center;">
								<a href="index.jsp">退出</a>
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
						<li data-name="component" class="layui-nav-item"><a
							href="javascript:;" lay-tips="招聘" lay-direction="2"> <i
								class="layui-icon layui-icon-component"></i> <cite>招聘</cite>
						</a>
							<dl class="layui-nav-child">
								<dd data-name="grid">
									<a href="javascript:;">招聘计划<span class="layui-nav-more"></span></a>
									<dl class="layui-nav-child">
										<dd data-name="list">
											<a lay-href="/HuManManger/wmw/plan_save.jsp">创建招聘计划</a>
										</dd>
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
					<iframe src="" frameborder="0"
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
