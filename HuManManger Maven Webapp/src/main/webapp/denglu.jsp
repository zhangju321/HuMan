<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
   <title></title>
<link rel="stylesheet" type="text/css" href="js/easyui/themes/default/easyui.css">   
<link rel="stylesheet" type="text/css" href="js/easyui/themes/icon.css">   
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>   
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>  

<script type="text/javascript">
$(function(){
	$("#login_submit").click(function(){
		$('#login_form').form('submit', {    
		    url:'login',  
		    onSubmit: function(){    
		        //非空验证等   
		        if($(":text:eq(0)").val()==""){
		        	$.messager.alert('系统信息','用户名不能为空');
		        	return false;
		        }
		        else if($(":password:eq(0)").val()==""){
		        	$.messager.alert('系统信息','密码不能为空');
		        	return false;
		        }
		         },  
	          success:function(data){    
		       	if(data=="1"){
		       		location.href="index.jsp";
		       	}else{
		       		$.messager.alert('系统信息','登录失败');  
		       	}
		    }   
		});
      })         
		})     
   
</script>

  </head>
  
 <body style="background-image:()" onload="createCode()">
  <div style="margin:150px auto;width:400px;">
     <form action="login" method="post" id="login_form">
    <table width="350px" align="center">
        <tr>
          <td colspan="2" style="text-align:center;font-weight:bold;font-size:20px;">人力资源管理系统</td>
        </tr>
        <tr style="height:40px">
          <td>登录名</td>
          <td><input type="text" name="uname"></td>
        </tr>
        <tr style="height:40px">
          <td>密码</td>
          <td><input type="password" name="password"></td>
        </tr> 
        <tr>
          <td colspan="2" align="right">
            <a id="login_submit" href="#"  class="easyui-linkbutton" data-options="iconCls:'icon-ok'">登录</a> 
          </td>
        </tr>
</table>
</form>
</div>
</body>
</html>
