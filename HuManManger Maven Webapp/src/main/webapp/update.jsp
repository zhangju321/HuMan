<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>角色修改</title>
    
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
   $("#role_update_submit").click(function(){
       $('#role_update_form').form('submit', {    
               url:"update",    
               onSubmit: function(){    
           
            },    
          success:function(data){    
            if(data==1){
               $.messager.show({
	           title:'系统消息',
               msg:'修改成功',
	           timeout:3000,
	           showType:'slide'
           });
               //关闭弹出框
                 $("#role_dialog").dialog("close");
               // 重新载入当前页面数据  
                 $('#role_table').datagrid('reload');    
                 
               }else{
                 $.messager.alert("系统信息","修改失败,请重新修改");
               }
    }    
});  
   })
      
   });
</script>
  <div style="padding:10px;">
  系统设置 >> 角色管理
  <hr/>
  
    <form action="" method="post" id="role_update_form">
      <input type="hidden" name="rid">
      <table>
        <tr>
           <td>角色名称:</td>
           <td><input type="text" name="rname"></td>
        </tr>
        <tr>
           <td>角色排序:</td>
           <td><input type="text" name="sort"></td>
        </tr>
        <tr>
           <td>角色备注:</td>
           <td><input type="text" name="remark"></td>
        </tr>
         <tr>
           <td colspan="2">
               <a id="role_update_submit" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">修改</a>  
           </td>
         </tr>
      </table>
    </form>
    </div>
  </body>
</html>
