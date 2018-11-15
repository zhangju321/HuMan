<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>行业智慧能力平台</title>
<link rel="stylesheet" type="text/css" href="css/style2.0.css">
<style type="text/css">
	ul li{font-size: 30px;color:#2ec0f6;}
	.tyg-div{z-index:-1000;float:left;position:absolute;left:5%;top:20%;}
	.tyg-p{
		font-size: 14px;
	    font-family: 'microsoft yahei';
	    position: absolute;
	    top: 135px;
	    left: 60px;
	}
	.tyg-div-denglv{
		z-index:1000;float:right;position:absolute;right:3%;top:10%;
	}
	.tyg-div-form{
		background-color: #23305a;
		width:300px;
		height:auto;
		margin:120px auto 0 auto;
		color:#2ec0f6;
	}
	.tyg-div-form form {padding:10px;}
	.tyg-div-form form input[type="text"]{
		width: 270px;
	    height: 30px;
	    margin: 25px 10px 0px 0px;
	}
	.tyg-div-form form input[type="password"]{
		width: 270px;
	    height: 30px;
	    margin: 25px 10px 0px 0px;
	}
	.tyg-div-form form button {
	    cursor: pointer;
	    width: 270px;
	    height: 44px;
	    margin-top: 25px;
	    padding: 0;
	    background: #2ec0f6;
	    -moz-border-radius: 6px;
	    -webkit-border-radius: 6px;
	    border-radius: 6px;
	    border: 1px solid #2ec0f6;
	    -moz-box-shadow:
	        0 15px 30px 0 rgba(255,255,255,.25) inset,
	        0 2px 7px 0 rgba(0,0,0,.2);
	    -webkit-box-shadow:
	        0 15px 30px 0 rgba(255,255,255,.25) inset,
	        0 2px 7px 0 rgba(0,0,0,.2);
	    box-shadow:
	        0 15px 30px 0 rgba(255,255,255,.25) inset,
	        0 2px 7px 0 rgba(0,0,0,.2);
	    font-family: 'PT Sans', Helvetica, Arial, sans-serif;
	    font-size: 14px;
	    font-weight: 700;
	    color: #fff;
	    text-shadow: 0 1px 2px rgba(0,0,0,.1);
	    -o-transition: all .2s;
	    -moz-transition: all .2s;
	    -webkit-transition: all .2s;
	    -ms-transition: all .2s;
}
</style>
<body>
<div class="tyg-div">
	<ul>
    	<li><div style="margin-left:20px;">人</div></li>
    	<li><div style="margin-left:40px;">力</div></li>
    	<li><div style="margin-left:60px;">资</div></li>
    	<li><div style="margin-left:80px;">源</div></li>
    	<li><div style="margin-left:100px;">管</div></li>
    	<li><div style="margin-left:120px;">理</div></li>
    </ul>
</div> 
<div id="contPar" class="contPar">
	<div id="page1"  style="z-index:1;">
		<div class="title0">人事资源管理系统</div>
		<div class="title1">招聘、人事、考勤、薪资</div>
		<div class="imgGroug">
			<ul>
				<img alt="" class="img0 png" src="images/page1_0.png">
				<img alt="" class="img1 png" src="images/page1_1.png">
				<img alt="" class="img2 png" src="images/page1_2.png">
			</ul>
		</div>
		<img alt="" class="img3 png" src="images/page1_3.jpg">
	</div>
</div>
<div class="tyg-div-denglv">
	<div class="tyg-div-form">
		<form action="login" method="post" id="login_form">
			<h2>登录</h2><p class="tyg-p">欢迎访问 </p>
			<div style="margin:5px 0px;">
				<input type="text" name="uname" onblur="CheckForm(this.value)" placeholder="请输入账号"/>
			</div>
			<div style="margin:5px 0px;">
				<input type="password" onblur="CheckForm(this.value)" name="password" placeholder="请输入密码"/>
			</div>
			
			<button type="submit" id="login_submit">登<span style="width:20px;"></span>录</button>
		</form>
	</div>
</div>

<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/com.js"></script>
<script type="text/javascript">
$(function(){
		$("#login_submit").click(function(){
			$.ajax({
				   type: "POST",//提交 方式
				   url: "login",//提交的地址
				   data: $("#login_form").serialize(),//序列化表单
				   dataType:"json",//返回的数据类型
				  success: function(data){
					   if(data!=null){
					    location.href="index.jsp";
					   }else{
						   location.href="kaoshi.jsp";//跳转 页面
					   }
				   },
				  
				});
			
		});
		
	});
</script>
<script language="javascript">
function CheckForm(obj)
{
if (obj.length == 0) {
alert("姓名不能为空!");
return false;
}
return true;
alert("密码不能为空!");
}
</script>
</body>
</html>
