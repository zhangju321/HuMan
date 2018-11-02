<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>分配权限</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<body>
<script type="text/javascript">
  $(function(){
    $("#privilege_submit").click(function(){
      var arr=$('#privilege_tree').tree('getChecked', ['checked','indeterminate']);//获取所选中节点
      var result="";
      for(var i=0;i<arr.length;i++){
         result+=arr[i].text+" ";
      }
      alert(result);
    });
  })
</script>
<form id="privilege_form" method="post">
<input type="hidden" name="id">
角色名称:<input type="text" name="rname" value="管理员"><br/>  
角色排序:<input type="text" name="sort" value="2"><br/> 
角色备注:<input type="text" name="remark" value="备注1"><br/> 
菜单导航:<ul id="privilege_tree"></ul>   
<a id="privilege_submit" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">提交</a>  
</form>
  </body>
</html>
