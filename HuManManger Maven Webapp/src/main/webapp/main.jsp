<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>菜单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="js/easyui/themes/default/easyui.css">   
<link rel="stylesheet" type="text/css" href="js/easyui/themes/icon.css">   
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>   
<script type="text/javascript"  src="js/easyui/jquery.easyui.min.js"></script> 
<script type="text/javascript">
   $(function(){
      $('#main_tree').tree({    
    url:'showMenu',
    onClick:function(node){
      if($("#main_tabs").tabs("getTab",node.text)==null){
      $('#main_tabs').tabs('add',{
	title:node.text,
	selected:true,
	//只能引进body标签内容
	href:node.attributes.filename,
	closable:true
	
  });
  }else{
    $("#main_tabs").tabs("select",node.text)
  }
    }  
}); 

   })
</script>
</head>
<body class="easyui-layout">   
    <div data-options="region:'north',title:'人力资源管理系统',split:false" style="height:100px;">
      <div style="width: 400px;height: 70px;float:left;font-size:20px;font-weight:bold;line-height:70px;padding-left:20px">
          人力资源管理系统
      </div>
      <div style="width: 200px;height: 70px;float: right;line-height: 70px;">
        您好,${user.uname },欢迎登陆!
      </div>
    </div>   
    <div data-options="region:'south',title:'底部声明',split:false" style="height:100px;">
      <div style="height:70px;line-height:70px;text-align:center;color:gray">
        Copyright &copy;计算机java专业
      </div>
    </div>   
    <div data-options="region:'west',title:'菜单',split:false" style="width:200px;">
       <ul id="main_tree"></ul>      
    </div>   
    <div data-options="region:'center',title:'内容'" style="padding:5px;background:#eee;">
         <div id="main_tabs" class="easyui-tabs" style="width:500px;height:250px;"data-options="fit:true">   
         <div title="首页" style="padding:20px;">   
            首页
          </div>     
</div>  
    </div>   
</body> 
</html>
