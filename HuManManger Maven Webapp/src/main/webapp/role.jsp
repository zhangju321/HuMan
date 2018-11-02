<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>角色</title>
    
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
  function abc(obj){
     $('#role_dialog').dialog({    
                 title: '分配权限',    
                 width: 400,    
                 height: 200,    
                 closed: false,    
                 cache: false,    
                 href: 'privilege.jsp',    
                 modal: true,
                 onLoad:function(){
                   $("#privilege_form :hidden:eq(0)").val($(obj).parent().parent().siblings("[field='rid']").children().eq(0).html());
                   $('#privilege_tree').tree({    
                         url:'showPrivilege?id='+$(obj).parent().parent().siblings("[field='rid']").children().eq(0).html(),
                         checkbox:true
                         }); 
                 }   
              });
        
}
     
  
    $(function(){
      $('#role_table').datagrid({    
    url:'showRole',    
    columns:[[    
        {field:'rid',title:'编号',width:100,hidden:true},    
        {field:'rname',title:'角色名称',width:100},    
        {field:'sort',title:'排序id',width:100,align:'right'},
        {field:'remark',title:'备注',width:100,align:'right'},
        {field:'caozuo',title:'操作',width:100,align:'right',
          formatter: function(value,row,index){
            return "<a  href='javascript:void(0)' onclick='javascript:abc(this);return false;'>分配权限</a>";
			}
        }
        ]],
    pagination:true,//分页工具栏
    pageList:[2,4,6],
    fitColumns:true,//铺满，宽度
    striped:true,//隔行变色，斑马线 
    rownumbers:true,
    toolbar: [{
		iconCls: 'icon-add',
		text:'添加',
		handler: function(){
		     if($("#role_table").datagrid("getSelections").length==1){
		
		  //添加 弹出窗口
            $('#role_dialog').dialog({    
                 title: '添加角色',    
                 width: 400,    
                 height: 200,    
                 closed: false,    
                 cache: false,    
                 href: 'add.jsp',    
                 modal: true,
                 onLoad:function(){
                   $("#role_add_form :text:eq(0)").val($("#role_table").datagrid("getSelected").rname);
                   $("#role_add_form :text:eq(1)").val($("#role_table").datagrid("getSelected").sort);
                   $("#role_add_form :text:eq(2)").val($("#role_table").datagrid("getSelected").remark);
                 }   
              });
		}else{
		   $.messager.alert("系统信息","请选择<b style='color:red;'>一行</b>")
		}
		}
	},'-',{
		iconCls: 'icon-remove',
		text:'删除',
		handler: function(){
		   //判断
		  if($("#role_table").datagrid("getSelections").length==1){
		
		  //删除 弹出窗口
            $('#role_dialog').dialog({    
                 title: '删除角色',    
                 width: 400,    
                 height: 200,    
                 closed: false,    
                 cache: false,    
                 href: 'delete.jsp',    
                 modal: true,
                 onLoad:function(){
                   $("#role_delete_form :text:eq(0)").val($("#role_table").datagrid("getSelected").rname);
                   $("#role_delete_form :text:eq(1)").val($("#role_table").datagrid("getSelected").sort);
                   $("#role_delete_form :text:eq(2)").val($("#role_table").datagrid("getSelected").remark);
                   $("#role_delete_form :hidden:eq(0)").val($("#role_table").datagrid("getSelected").rid);
                 }   
              });
		}else{
		   $.messager.alert("系统信息","请选择<b style='color:red;'>一行</b>")
		}
		}
	},'-',{
		iconCls: 'icon-edit',
		text:'修改',
		handler: function(){
		   //判断
		  if($("#role_table").datagrid("getSelections").length==1){
		
		  //修改 弹出窗口
            $('#role_dialog').dialog({    
                 title: '修改角色',    
                 width: 400,    
                 height: 200,    
                 closed: false,    
                 cache: false,    
                 href: 'update.jsp',    
                 modal: true,
                 onLoad:function(){
                   $("#role_update_form :text:eq(0)").val($("#role_table").datagrid("getSelected").rname);
                   $("#role_update_form :text:eq(1)").val($("#role_table").datagrid("getSelected").sort);
                   $("#role_update_form :text:eq(2)").val($("#role_table").datagrid("getSelected").remark);
                   $("#role_update_form :hidden:eq(0)").val($("#role_table").datagrid("getSelected").rid);
                 }   
              });
		}else{
		   $.messager.alert("系统信息","请选择<b style='color:red;'>一行</b>")
		}
		}
	}]
    
});  


 })
 
 
  </script>
  
  
    <table id="role_table"></table>
    <div id="role_dialog">Dialog Content.</div>    
  </body>
</html>
