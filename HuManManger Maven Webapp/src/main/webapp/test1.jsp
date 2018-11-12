<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset='utf-8'/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="initial-scale=1, maximum-scale=3, minimum-scale=1, user-scalable=no"/>
    <title>移动端日历</title>
    <link type="text/css" rel="stylesheet" href="css/mobile_date.css"/>
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/mobile_date.js"></script>
    
</head>
<body>
    <div class="box">
        <section class="date">
            <div class="head">
                <div class="prev">上一月</div>
                <div class="tomon"><span class="year"></span>年 <span class="month"></span>月</div>
                <div class="next">下一月</div>
            </div>
            <ol><li>周日</li><li>周一</li><li>周二</li><li>周三</li><li>周四</li><li>周五</li><li>周六</li></ol>
            <ul>
                <li>日期</li><li>日期</li><li>日期</li><li>日期</li><li>日期</li><li>日期</li><li>日期</li>
                <li>日期</li><li>日期</li><li>日期</li><li>日期</li>
            </ul>
        </section>
    </div>
    <div class="qwe"><a href="schedule.jsp">返回</a></div>
</body>

</html>