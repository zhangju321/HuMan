<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="resource/jquery-1.11.3.min.js"></script>
  <script type="text/javascript" src="resource/jqueryExt.js"></script>
  </head>
  
  <body>
     <form id="loginForm" method="post">
       <input type="text" name="userName"/>
        <input type="password" name="password"/>
         <input type="submit" value="登录" onclick="login()"/>
     </form>
  </body>
</html>
 <script type="text/javascript">
/* 对比密码登陆 */
function login(){

    var obj = $("#loginForm").serializeObject();
    alert(obj);
   $.ajax({
      url:"${pageContext.request.contextPath}/login/login.action",
      contentType : "application/json;charset=utf-8",
      data:JSON.stringify(obj),
      dataType:"text",
      type:"post",
      success:function(data){
     
       if(data=='1'){
         window.location.href = "my.jsp";
       }else{
       alert("密码错误，请重试！");
       window.location.href = "login.jsp";
       }
      }
    }) 
}


</script>