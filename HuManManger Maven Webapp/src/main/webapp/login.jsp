<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>登陆</title>
  
  <script type="text/javascript" src="resource/jquery-1.11.3.min.js"></script>
  <script type="text/javascript" src="resource/jqueryExt.js"></script>
  
</head>
<body>
  <div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="display: none;">

    <div class="layadmin-user-login-main">
      <div class="layadmin-user-login-box layadmin-user-login-header">
        <h2>layuiAdmin</h2>
        <p>人力资源后台管理模板系统</p>
      </div>
      
      <form id="loginForm" method="post">
      
      <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-username" for="LAY-user-login-username"></label>
          <input type="text" name="userName" id="LAY-user-login-username" lay-verify="required" placeholder="用户名" class="layui-input">
        </div>
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-password" for="LAY-user-login-password"></label>
          <input type="password" name="password"  id="LAY-user-login-password" lay-verify="required" placeholder="密码" class="layui-input">
        </div>
        <div class="layui-form-item">
          <div class="layui-row">
            
        <div class="layui-form-item">
          <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-login-submit" onclick="login()">登 入</button>
        </div>
        <div class="layui-trans layui-form-item layadmin-user-login-other">
          <label>社交账号登入</label>
          <a href="javascript:;"><i class="layui-icon layui-icon-login-qq"></i></a>
          <a href="javascript:;"><i class="layui-icon layui-icon-login-wechat"></i></a>
          <a href="javascript:;"><i class="layui-icon layui-icon-login-weibo"></i></a>
          
          <a href="reg.html" class="layadmin-user-jump-change layadmin-link">注册帐号</a>
        </div>
        </div></div>
      </div>
      </form>
      
    </div>
  </div>
</body>
</html>
 <script type="text/javascript">
/* 对比密码登陆 */
function login(){
    var obj = $("#loginForm").serializeObject();
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