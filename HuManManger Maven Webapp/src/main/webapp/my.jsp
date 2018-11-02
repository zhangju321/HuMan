<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <base href="<%=basePath%>">
    
    <title>My JSP 'my.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<meta charset="utf-8">
<title>layuiAdmin std - 通用后台管理模板系统（iframe标准版）</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link rel="stylesheet" href="layuiadmin/layui/css/layui.css"
	media="all">
<link rel="stylesheet" href="layuiadmin/style/admin.css" media="all">
<script type="text/javascript"
	src="resource/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="resource/jqueryExt.js"></script>
  </head>
  
  <body class="layui-layout-body">
    <div class="layui-circle"></div>
    <div id="LAY_app">
        <div class="layui-layout layui-layout-admin">
           <div class="layui-header">
             <!-- 头部 -->
             <ul class="layui-nav layui-layout-left">
               <li class="layui-nav-item layadmin-flexible" lay-unselect><a 
                 href="javascript:;" layadmin-event="flexible" title="侧边伸缩">
                 <i class="layui-icon layui-icon-shrink-right" id="LAY_app_flexible"></i>
                 </a></li>
               <li class="layui-nav-item layui-hide-xs" lay-unselect><a
               href="http://www.layui.com/admin/" target="_blank" title="前台">
               <i class="layui-icon layui-icon-website"></i>
               </a></li>
               <li class="layui-nav-item" lay-unselect><a
                  href="javascript:;" layadmin-event="refresh" title="刷新">
                  <i class="layui-icon layui-icon-refresh-3"></i>
               </a></li>
              <li class="layui-nav-item layui-hide-xs" lay-unselect>
                <input type="text" placeholder="搜索..." autocomplete="off"
                class="layui-input layui-input-search" layadmin-event="serach"
						lay-action="template/search.html?keywords="></li>
             </ul>
             <ul class="layui-nav layui-layout-right" lay-filter="layadmin-layout-right">
               <li class="layui-nav-item" lay-unselect><a lay-href="app/message/index.html" layadmin-event="message"
						lay-text="消息中心"><i class="layui-icon layui-icon-notice"></i>
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
             </ul>
           </div>
        </div>
    </div>
  </body>
</html>
<script>
	$(function() {
		$.ajax({
			url : "${pageContext.request.contextPath}/login/queryMenu",
			dataType : "json",
			type : "post",
			success : function(data) {
			$("#username").html(data[0].userName);
				for(var i=0;i<data.length;i++){
					var obj=data[i];
					if(obj.parentid=='ROOT'){
						var li="<li data-name='' class='layui-nav-item'><a href='javascript:;' lay-tips='主页' lay-direction='2'> <i class='layui-icon layui-icon-app'></i> <cite>"+obj.modulesText+"</cite></a><dl class='layui-nav-child'>";
						
						for(var j=0;j<data.length;j++){
							var obj2=data[j];
							if(obj2.parentid==obj.modulesId){
							/* ************************************路径待更改************************************************* */
								li+="<dd><a lay-href='${pageContext.request.contextPath}/"+obj2.modulesUrl+"'>"+obj2.modulesText+"</a></dd>";
							}
						};
						li+="</dl></li>";
						$("#LAY-system-side-menu").append(li);
					}
				
				}
			}
		})
	}

	)
</script>



