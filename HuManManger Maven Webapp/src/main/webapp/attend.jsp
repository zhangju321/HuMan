<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>考勤</title>    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">	
    <link rel="stylesheet" type="text/css" href="resource/js/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resource/js/bootstrap/css/bootstrap-theme.min.css">
	<script src="resource/jquery-1.11.3.min.js"></script>
	<script src="resource/js/bootstrap/js/bootstrapValidator.min.js"></script>
	<link type="text/css" rel="stylesheet" href="resource/js/bootstrap/css/bootstrapValidator.min.css">
	<script src="resource/js/bootstrap/js/bootstrap.min.js"></script>
	<script src="resource/jquery.serialize.js"></script>	
	<link type="text/css" rel="stylesheet" href="resource/jedate/test/jeDate-test.css">
    <link type="text/css" rel="stylesheet" href="resource/jedate/skin/jedate.css">	
	<script type="text/javascript" src="resource/jedate/src/jedate.js"></script>
  </head> 
  <body>     
   <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="tabbable" id="tabs-909206">
				<ul class="nav nav-tabs">
					<li class="active">
						 <a href="#panel-783925" data-toggle="tab">请假</a>
					</li>
					<li>
						 <a href="#panel-840611" data-toggle="tab">外出</a>
					</li>
					<li>
						 <a href="#panel-840612" data-toggle="tab">出差</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-783925">
						<p>
							 <button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
							    请假登记
							 </button>
	 <!-- 模态框弹出录入内容 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="modalTitle1" aria-hidden="true">
	<div class="modal-dialog" style="width:550px">
		<div class="modal-content" style="height:650px">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times; <!-- 关闭按钮 -->
				</button>
				<h4 class="modal-title" id="modalTitle1">
					请假登记
				</h4>
			</div>
	<div class="modal-body">
  
    <form id="form1" method="post" class="form-horizontal">
      <div class="form-group">
        <label for="s.tabClasses" class="col-md-4 control-label">请假人员:</label>
         <div class="col-md-6">
           <select id="sta" name="sta_Staff_Id" ></select><br/>
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuCode" class="col-md-4 control-label">请假原因:</label>
          <div class="col-md-6">
            <textarea name="vocation_Reason"  class="form-control" rows="3" required placeholder="请输入请假原因"></textarea>
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuBirthday" class="col-md-4 control-label">开始时间:</label>
         <div class="col-md-6">
             <input type="date" name="vocation_Qi_Time"  required placeholder="请输入开始时间" class="form-control"/>
         </div>
      </div>
      <div class="form-group">
        <label for="vocation_Jie_Time" class="col-md-4 control-label">结束时间:</label>
         <div class="col-md-6">
                <input type="date" name="vocation_Jie_Time"  required  placeholder="请输入结束时间" class="form-control"/>
         </div>
      </div>
      <div class="form-group">
        <label for="vocation_Type" class="col-md-4 control-label">请假类型:</label>
         <div class="col-md-6">
            <select name="vocation_Type" >
              <option value="病假">病假</option>
              <option value="事假">事假</option>
              <option value="年假">年假</option>
              <option value="倒休">倒休</option>
              <option value="其他">其他</option>              
			</select>               
         </div>
      </div>
      <div class="form-group">
        <label for="status_Name" class="col-md-4 control-label">请假状态:</label>
         <div class="col-md-6">           
              <input type="radio" name="status_Name" value="0" checked="checked">未审批                                                      
         </div>
      </div>
         <div class="form-group">
        <label for="uid" class="col-md-4 control-label">审批人员:</label>
         <div class="col-md-6">
          <input type="text" id="uname" class="form-control"/>
          <input type="hidden" name="uid" id="uid"/>
          <input type="button" id="btn2" href="#user_modal" value="+" data-toggle='modal' style="position:relative;left:260px;top:-30px" >
          </div>
      </div>       
      <div class="form-group">
        <label for="circulate" class="col-md-4 control-label" >传阅人员:</label>
         <div class="col-md-6">
                <input type="text" name="circulate"  class="form-control"/>
         </div>
      </div>    
       <div class="modal-footer">
		<button type="button" id="btn-test"  data-target='#myModal' class="btn btn-primary">申请</button>
		<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	 </div>
    </form>
    </div>
	</div>	
    </div><!-- /.modal-content -->
   </div><!-- /.modal -->
   <!-- 二级模态框 -->
   <div id="show2" style="position:relative;top:-130px">
   <div class="modal fade" id="user_modal" role="dialog">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" >审批人</h4>
				</div>
				<div class="modal-body">
				<form method="post" id="from_user">
					<table class="table table-bordered" width="60%" align="center">
							  <tbody id="userName"></tbody>
				   </table>
               </form>
			</div>
		<div class="modal-footer">
		    <button type="button" class="btn btn-default"data-dismiss="modal"  onclick="empty(0)">清空</button>
			<button type="button" class="btn btn-default"data-dismiss="modal">关闭</button>
		</div>
                    </div>
                </div>
            </div>
   </div>
   <!-- 查看详情 -->
   <div class="modal fade" id="myModall" tabindex="-1" role="dialog" aria-labelledby="modalTitle1" aria-hidden="true">
	<div class="modal-dialog" style="width:500px">
		<div class="modal-content" style="height:450px">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times; <!-- 关闭按钮 -->
				</button>
				<h4 class="modal-title" id="modalTitle1">
					考勤详情
				</h4>
			</div>
	<div class="modal-body">
       <table class="table ">           
    		<tr><td>员工编号</td></tr>	    		
    		<tr><td>请假人员</td></tr>    		 
    		<tr><td>所在部门</td></tr>
    		<tr><td>请假原因</td></tr>
    		<tr><td>开始时间</td></tr>
    		<tr><td>结束时间</td></tr>
    		<tr><td>状态</td></tr>    		
    		<tbody id="tbodyvoc" style="position:absolute;top:13px;left:215px"></tbody>    	        	
    	</table>
    	<button type="button" class="btn btn-default" data-dismiss="modal" style="position:absolute;left:360px">关闭</button>    	         	
    </div>
	</div>	
    </div><!-- /.modal-content -->
   </div><!-- /.modal -->
   
   <!--  驳回模态框 -->
   <div class="modal fade" id="myModabh" tabindex="-1" role="dialog" aria-labelledby="modalTitles" aria-hidden="true">
	<div class="modal-dialog" style="width:550px">
		<div class="modal-content" style="height:250px">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times; <!-- 关闭按钮 -->
				</button>
				<h4 class="modal-title" id="modalTitles">
					驳回
				</h4>
			</div>
	<div class="modal-body">
     <form id="formbh" method="post" class="form-horizontal" >
     
      <div class="form-group">
        <label for="s.stuCode" class="col-md-4 control-label">驳回原因:</label>
          <div class="col-md-6">
            <textarea name="operate" id="operate"  class="form-control" rows="3" required placeholder="请输入原因"></textarea>
            <input type="hidden" id="vocationId" name="vocation_Id"/>
         </div>
      </div>
       <div class="modal-footer">
                <button type="button" onclick="comitbh()" data-dismiss="modal" data-target='#myModalbh' class="btn btn-primary">确认驳回</button>       		
		        <button type="button" class="btn btn-default" data-dismiss="modal" >关闭</button>
	   </div> 
    </form>
    	
    </div>
	</div>
	
    </div><!-- /.modal-content -->
   </div><!-- /.modal -->
   
    <div>
    	<table class="table table-bordered table-hover">
    		<tr>
    		    
    		    <td>请假编号</td>
    		    <td>请假人员</td>
    			<td>请假原因</td>
    			<td>开始时间</td>
    			<td>结束时间</td> 
    			<td>状态</td>
    			<td >操作</td>     				
    		</tr>
    		<tbody id="tbody">   		
    		</tbody>
    	</table>
    	<ul class="pager">
		<li><button type="button" class="btn btn-default" id="shouye">首页</button></li>
		<li><button type="button" class="btn btn-default" id="syy">上一页</button></li>
		<li><button type="button" class="btn btn-default" id="xyy">下一页</button></li>
		<li><button type="button" class="btn btn-default" id="weiye">尾页</button></li>
		<li style="font-weight: lighter;">当前第<input type="text" id="currPage" style="height:35px;width:50px;border-radius:10px;text-align: center;"/>页</li>
	</ul>
    </div>
   	</p>
	</div>
	<div class="tab-pane" id="panel-840611">
		<p>
			 <button class="btn btn-primary" data-toggle="modal" data-target="#myModalgo">
				    外出登记
			 </button>
	 <!-- 模态框弹出录入内容 -->
	<div class="modal fade" id="myModalgo" tabindex="-1" role="dialog" aria-labelledby="modalTitle1" aria-hidden="true">
	<div class="modal-dialog" style="width:550px">
		<div class="modal-content" style="height:650px">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times; <!-- 关闭按钮 -->
				</button>
				<h4 class="modal-title" id="modalTitle1">
					外出登记
				</h4>
			</div>
	<div class="modal-body">
    <form method="post" class="form-horizontal" id="fromGoOut">
      <div class="form-group">
        <label for="staff_Id" class="col-md-4 control-label">外出人员:</label>
         <div class="col-md-6">
          <select name="sta_Staff_Id" id="sta2">
					</select><br/>
         </div>
      </div>
      <div class="form-group">
        <label for="reason" class="col-md-4 control-label">外出原因:</label>
          <div class="col-md-6">
            <textarea name="reason" class="form-control" rows="2"></textarea>
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuCode" class="col-md-4 control-label">外出地点:</label>
          <div class="col-md-6">
            <input type="text" name="place" class="form-control"/>
         </div>
      </div>
       <div class="form-group">
        <label for="s.stuBirthday" class="col-md-4 control-label">外出时间:</label>
         <div class="col-md-6">
             <input type="date" name="out_Time" required placeholder="请输入外出日期" class="form-control"/>
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuBirthday" class="col-md-4 control-label">开始时间:</label>
         <div class="col-md-6">
             <input type="text" name="start_Time" id="start" required placeholder="请输入开始时间" class="form-control"/>
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuAge" class="col-md-4 control-label">结束时间:</label>
         <div class="col-md-6">
                <input type="text" name="end_Time" id="end" required  placeholder="请输入结束时间" class="form-control"/>
         </div>
      </div>
      
      <div class="form-group">
        <label for="s.stuName" class="col-md-4 control-label">申请状态:</label>
         <div class="col-md-8">            
              <input type="radio" name="status_Name" value="0" checked="checked"/>未审批             
         </div>
      </div>
           <div class="form-group">
        <label for="s.uid" class="col-md-4 control-label">审批人员:</label>
         <div class="col-md-6">
           <input type="text" id="uname2" class="form-control"/>
          <input type="hidden" name="uid" id="uid2"/>
          <input type="button" id="btng" href="#user_modal2" value="+" data-toggle='modal' style="position:relative;left:260px;top:-30px" >
         </div>
      </div>      
      <div class="form-group">
        <label for="s.stuPhone" class="col-md-4 control-label" >传阅人员:</label>
         <div class="col-md-6">
                <input type="text" name="circulate"  class="form-control"/>
         </div>
      </div>   
        <div class="modal-footer">
		<button type="button" onclick="test1()" data-toggle='modal' data-target='#myModalgo' class="btn btn-primary">申请</button>
		<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	 </div>
    </form>
	</div>
	</div>	
    </div><!-- /.modal-content -->
   </div><!-- /.modal -->
  <div id="show3">
   <div class="modal fade" id="user_modal2" role="dialog">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
					<h4 class="modal-title" >审批人</h4>
				</div>
				<div class="modal-body">
				<form method="post" id="from_user">
					<table class="table table-bordered" width="60%" align="center">
							  <tbody id="userName2"></tbody>
				   </table>
               </form>
			</div>
		<div class="modal-footer">
		    <button type="button" class="btn btn-default"data-dismiss="modal"  onclick="empty(0)">清空</button>
			<button type="button" class="btn btn-default"data-dismiss="modal">关闭</button>
		</div>
                    </div>
                </div>
            </div>
   </div>
  <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="modalTitle2" aria-hidden="true">
	<div class="modal-dialog" style="width:550px">
		<div class="modal-content" style="height:500px">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times; <!-- 关闭按钮 -->
				</button>
				<h4 class="modal-title" id="modalTitle2">
					考勤详情
				</h4>
			</div>
	<div class="modal-body">
        <table class="table ">           
    		<tr><td>员工编号</td></tr>	    		
    		<tr><td>外出人员</td></tr>    		 
    		<tr><td>所在部门</td></tr>
    		<tr><td>外出原因</td></tr>
    		<tr><td>外出地点</td></tr>
    		<tr><td>开始时间</td></tr>
    		<tr><td>结束时间</td></tr>
    		<tr><td>状态</td></tr>    		
    		<tbody id="tbodyg" style="position:absolute;top:13px;left:215px"></tbody>    	        	
    	</table>
    	<button type="button" class="btn btn-default" data-dismiss="modal" style="position:absolute;left:360px">关闭</button>
   	
    </div>
	</div>	
    </div><!-- /.modal-content -->
   </div><!-- /.modal -->
  <!--  驳回模态框 -->
   <div class="modal fade" id="myModabh2" tabindex="-1" role="dialog" aria-labelledby="modalTitlesg" aria-hidden="true">
	<div class="modal-dialog" style="width:550px">
		<div class="modal-content" style="height:250px">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times; <!-- 关闭按钮 -->
				</button>
				<h4 class="modal-title" id="modalTitlesg">
					驳回
				</h4>
			</div>
	<div class="modal-body">
     <form id="formbh2" method="post" class="form-horizontal" >
     
      <div class="form-group">
        <label for="s.stuCode" class="col-md-4 control-label">驳回原因:</label>
          <div class="col-md-6">
            <textarea name="operate" id="operateg"  class="form-control" rows="3" required placeholder="请输入原因"></textarea>
            <input type="hidden" id="outId" name="out_Id"/>
         </div>
      </div>
       <div class="modal-footer">
                <button type="button" onclick="comitbhg()" data-dismiss="modal" data-target='#myModalbh2' class="btn btn-primary">确认驳回</button>       		
		        <button type="button" class="btn btn-default" data-dismiss="modal" >关闭</button>
	   </div> 
    </form>
    	
    </div>
	</div>
	
    </div><!-- /.modal-content -->
   </div><!-- /.modal -->
   <div>
    	<table class="table table-bordered table-hover">
    		<tr>
    		    <td>状态</td>
    		    <!-- <td>外出编号</td> -->
    		    <td>外出人员</td>
    			<td>外出原因</td>
    			<td>外出地点</td>
    			<td>外出日期</td>
    			<td>开始时间</td>
    			<td>结束时间</td>      					
    			<td>操作</td>    			      			 		
    		</tr>
    		<tbody id="tbodyGo"></tbody>
    	</table>
    	<ul class="pager">
		<li><button type="button" class="btn btn-default" id="shouye2">首页</button></li>
		<li><button type="button" class="btn btn-default" id="syy2">上一页</button></li>
		<li><button type="button" class="btn btn-default" id="xyy2">下一页</button></li>
		<li><button type="button" class="btn btn-default" id="weiye2">尾页</button></li>
		<li style="font-weight: lighter;">当前第<input type="text" id="currPage2" style="height:35px;width:50px;border-radius:10px;text-align: center;"/>页</li>
	</ul>
    </div>
						</p>
					</div>
	<div class="tab-pane" id="panel-840612">
		<p>
			<button class="btn btn-primary" data-toggle="modal" data-target="#myModal3">
			    出差登记
			</button>
	
	<!-- 模态框弹出录入内容 -->
	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="modalTitle1" aria-hidden="true">
	<div class="modal-dialog" style="width:550px">
		<div class="modal-content" style="height:600px">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times; <!-- 关闭按钮 -->
				</button>
				<h4 class="modal-title" id="modalTitle1">
					出差登记
				</h4>
			</div>
	<div class="modal-body">
   <form id="tform" method="post" class="form-horizontal">
      <div class="form-group">
        <label for="s.tabClasses" class="col-md-4 control-label">出差人员:</label>
         <div class="col-md-6">
          <select name="sta_Staff_Id" id="sta3"></select><br/>
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuCode" class="col-md-4 control-label">出差原因:</label>
          <div class="col-md-6">
            <textarea name="travel_Reason" class="form-control" rows="3"></textarea>
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuCode" class="col-md-4 control-label">出差地点:</label>
          <div class="col-md-6">
            <input type="text" name="travel_Place" class="form-control"/>
         </div>
      </div>
      <div class="form-group">
        <label for="start_Time" class="col-md-4 control-label">开始时间:</label>
         <div class="col-md-6">
             <input type="date" name="start_Time" required placeholder="请输入开始时间" class="form-control"/>
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuAge" class="col-md-4 control-label">结束时间:</label>
         <div class="col-md-6">
                <input type="date" name="end_Time" required  placeholder="请输入结束时间" class="form-control"/>
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuSex" class="col-md-4 control-label">出差时长:</label>
         <div class="col-md-6">
            <input type="text" name="travel_Date" class="form-control"/>                      
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuName" class="col-md-4 control-label">请假状态:</label>
         <div class="col-md-6">         
              <input type="radio" name="status_Name" value="0" checked="checked">未审批     
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuAddr" class="col-md-4 control-label">审批人员:</label>
         <div class="col-md-6">
                <input type="text" name="examine_Person" class="form-control"/>
         </div>
      </div>       
      <div class="form-group">      
        <label for="s.stuPhone" class="col-md-4 control-label" >传阅人员:</label>
         <div class="col-md-6">
                <input type="text" name="circulate"  class="form-control"/>
         </div>
      </div>     
       <div class="modal-footer">
		<button type="button" onclick="test3()" data-toggle='modal' data-target='#myModal3' class="btn btn-primary">申请</button>
		<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	 </div>
    </form>
	</div>	
    </div><!-- /.modal-content -->
   </div><!-- /.modal -->
   </div>
   
   <div class="modal fade" id="myModalxq" tabindex="-1" role="dialog" aria-labelledby="modalTitle3" aria-hidden="true">
	<div class="modal-dialog" style="width:550px">
		<div class="modal-content" style="height:500px">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times; <!-- 关闭按钮 -->
				</button>
				<h4 class="modal-title" id="modalTitle3">
					考勤详情
				</h4>
			</div>
	<div class="modal-body">
      <table class="table ">           
    		<tr><td>员工编号</td></tr>	    		
    		<tr><td>外出人员</td></tr>    		 
    		<tr><td>所在部门</td></tr>
    		<tr><td>外出原因</td></tr>
    		<tr><td>外出地点</td></tr>
    		<tr><td>开始时间</td></tr>
    		<tr><td>结束时间</td></tr>
    		<tr><td>状态</td></tr>    		
    		<tbody id="tbodyt" style="position:absolute;top:13px;left:215px"></tbody>    	        	
    	</table>
    	<button type="button" class="btn btn-default" data-dismiss="modal" style="position:absolute;left:360px">关闭</button>
    	
    </div>
	</div>	
    </div><!-- /.modal-content -->
   </div><!-- /.modal -->
   
   <!--  驳回模态框 -->
   <div class="modal fade" id="myModabh3" tabindex="-1" role="dialog" aria-labelledby="modalTitlest" aria-hidden="true">
	<div class="modal-dialog" style="width:550px">
		<div class="modal-content" style="height:250px">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times; <!-- 关闭按钮 -->
				</button>
				<h4 class="modal-title" id="modalTitlest">
					驳回
				</h4>
			</div>
	<div class="modal-body">
     <form id="formbht" method="post" class="form-horizontal" >     
      <div class="form-group">
        <label for="s.stuCode" class="col-md-4 control-label">驳回原因:</label>
          <div class="col-md-6">
            <textarea name="operate" id="operatet"  class="form-control" rows="3" required placeholder="请输入原因"></textarea>
            <input type="hidden" id="travelId" name="travel_Id"/>
         </div>
      </div>
       <div class="modal-footer">
                <button type="button" onclick="comitbht()" data-dismiss="modal" data-target='#myModalbh3' class="btn btn-primary">确认驳回</button>       		
		        <button type="button" class="btn btn-default" data-dismiss="modal" >取消</button>
	   </div> 
    </form>
    	
    </div>
	</div>
	
    </div><!-- /.modal-content -->
   </div><!-- /.modal -->
   
   <div>
    	<table class="table table-bordered table-hover">
    		<tr>
    		    <td>出差编号</td>
    		    <td>出差人员</td>
    			<td>出差原因</td>
    			<td>出差地点</td>
    			<td>开始时间</td>
    			<td>结束时间</td> 
    			<td>状态</td>     					    			
    			<td>操作</td>      			 		
    		</tr>
    		<tbody id="travelbody"></tbody>
    	</table>
    	<ul class="pager">
			<li><button type="button" class="btn btn-default" id="shouye3">首页</button></li>
			<li><button type="button" class="btn btn-default" id="syy3">上一页</button></li>
			<li><button type="button" class="btn btn-default" id="xyy3">下一页</button></li>
			<li><button type="button" class="btn btn-default" id="weiye3">尾页</button></li>
			<li style="font-weight: lighter;">当前第<input type="text" id="currPage3" style="height:35px;width:50px;border-radius:10px;text-align: center;"/>页</li>
	   </ul>
    </div>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
  </body>
</html>
<script >
/* 二级模态框 */
  $(function(){
                      $("#btn2").click(function(){                       
                       $("#show2").modal("show");
                   });                 
             })
 /* 审批人员 */
 $('#user_modal').on('show.bs.modal', function () {
        $.ajax({
        	url : "users/usersname",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
        	dataType : 'json', 
        	success : function(data) {
           		$("#userName").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    var user=data[i].id+","+data[i].uname;
        		    tr+="<td><button type='button' id='"+user+"' class='insert btn btn-default' data-dismiss='modal'>'"+data[i].uname+"'</button></td>";
        		    tr+="</tr>";
        		     $("#userName").append(tr); 
        	}}
 		}); 
     })
	$(function(){
				$("#userName").on("click",".insert",function(){
				    var user=this.id;
					var users= user.split(",");
					for(var i=0; i<user.length;i++){
        		      var uid=users[0];
        		      var uname=users[1];
					}
				$("#uid").val(uid);
			    $("#uname").val(uname); 
				})
			})
	function empty(none){
           if(none==0){
                $("#uid").val("");
           		$("#uname").val("");
            }
	 }  
			
$(function(){
    queryvAll(1);
   
  });
  function queryvAll(startPage){
    $.ajax({
       url:"vocation/queryAll",
       type:"post",
       data : {
				"startPage" : startPage
			}, 
       dataType:"json",
       success:function(data){
          $("#tbody").empty();
          var ary = data.list;
          for(var i=0;i<ary.length;i++){
           var obj = ary[i];
            var tr="<tr>";
                 tr+="<td>"+obj.vocation_Id+"</td>";
        			tr+="<td>"+obj.STAFF_NAME+"</td>";
        			tr+="<td>"+obj.vocation_Reason+"</td>";
        			tr+="<td>"+obj.vocation_Qi_Time+"</td>";
        			tr+="<td>"+obj.vocation_Jie_Time+"</td>";
        			if(obj.status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(obj.status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(obj.status_Name==2){
		        		tr+="<td>驳回</td>";
		        		}
        			tr+="<td><button id='"+obj.vocation_Id+"'  class='queryId btn btn-primary'  data-toggle='modal' data-target='#myModall'>详情</button></td>";          			      			
        			if(obj.status_Name==0){
		        	 tr+="<td><button type='button' id='"+obj.vocation_Id+"' class='updateSta btn btn-danger'>通过</button><button id='"+obj.vocation_Id+"' class='updateSta2 btn btn-primary' data-toggle='modal' data-target='#myModabh'>驳回</button></td>";		        		
		        		}                                                                                        								         	  		     
        			tr+="</tr>";
        			$("#tbody").append(tr);
          }
          //当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					queryvAll(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if(last<curr){
					   $("#currPage").val(last);
					   queryvAll(last);
					}
					if(curr<=0){
					  $("#currPage").val(1);
					   queryvAll(1);
					}
					 queryvAll(curr);
				});
				if (data.isFirstPage) {
					$("#syy").attr("disabled", "disabled");
					$("#shouye").attr("disabled", "disabled");
				} else {
					$("#syy").removeAttr("disabled", "disabled");
					$("#shouye").removeAttr("disabled", "disabled");
				}
				if (data.isLastPage) {
					$("#xyy").attr("disabled", "disabled");
					$("#weiye").attr("disabled", "disabled");
				} else {
					$("#xyy").removeAttr("disabled", "disabled");
					$("#weiye").removeAttr("disabled", "disabled");
				}
       }
    });
  };
  	/* 按钮的赋值 */
	$("#syy").click(function() {
		var currPage = parseInt($("#currPage").val());
		queryvAll(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		queryvAll(currPage + 1);
	})
	$("#shouye").click(function() {
		queryvAll(1);
	})

 $(function(){
		findSta();
		queryvAll();
		})
	/* 查询员工 */	
	function findSta(){	
		 $.ajax({
	     url:"vocation/findAll",
		 data:{},//绑定要给后台提交的数据
		 dataType:'json',
		 type:"post",
		 async:true,
		 success:function(data){
		 for(var i=0;i<data.length;i++){
		  $("#sta").append("<option value='"+data[i].staff_Id+"'>"+data[i].STAFF_NAME+"</option>");
		 	}
		 	
		      }
		  });		
	}
//表单验证
 $(function () {
            $("#form1").bootstrapValidator({
                live: 'disabled',//验证时机，enabled是内容有变化就验证（默认），disabled和submitted是提交再验证
                excluded: [':disabled', ':hidden', ':not(:visible)'],//排除无需验证的控件，比如被禁用的或者被隐藏的
                submitButtons: '#form1',//指定提交按钮，如果验证失败则变成disabled，但我没试成功，反而加了这句话非submit按钮也会提交到action指定页面
                message: '通用的验证失败消息',//好像从来没出现过
                feedbackIcons: {//根据验证结果显示的各种图标
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                vocation_Reason: {
                    message: '请假原因验证失败',
                    validators: {
                        notEmpty: {
                            message: '请假原因不能为空'
                        }
                    }
                },
                vocation_Qi_Time: {
                    validators: {
                        notEmpty: {
                            message: '请假时间不能为空'
                        }
                    }
                },
                vocation_Jie_Time: {
                    validators: {
                        notEmpty: {
                            message: '结束时间不能为空'
                        }
                    }
                },
            }
            });
            $("#btn-test").click(function () {//非submit按钮点击后进行验证，如果是submit则无需此句直接验证
                $("#form1").bootstrapValidator('validate');//提交验证
                if ($("#form1").data('bootstrapValidator').isValid()) {//获取验证结果，如果成功，执行下面代码
                    alert("验证成功");//验证成功后的操作，如ajax
                var obj=$("#form1").serializeObject();                   
                $.ajax({
	        	url : "vocation/save",
	        	type : "post",
	        	async : true,
	        	contentType: "application/json; charset=utf-8",
	        	data : JSON.stringify(obj),
	       	 	dataType : 'text',
	        	success : function(data) { 	        	        		
	        		$("#myModal").modal("hide");
	        		location.reload(); 
	        		queryvAll();	        			        			        			        		
	        	}
	 		});
                }
            });

  });
	
	$("#tbody").on("click",".updateSta",function(){
		 var vocation_Id=this.id;
		//alert(vocation_Id); 
		$.ajax({
			url:"vocation/updateStatus",
			type : "post",
        	data:{
        		"vocation_Id" : vocation_Id,
        	},
       	 	dataType : "text",//返回的数据类型
        	success : function(data) {
        		queryvAll();
        	}	
		})
	})
	$("#tbody").on("click",".updateSta2",function(){
		 var vocation_Id=this.id;
		 $("#vocationId").val(vocation_Id);
		//alert(vocation_Id); 
		$.ajax({
			url:"vocation/queryId",
			type : "post",
			 data:{
        		"vocation_Id" : vocation_Id,
        	},
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {
        		$("#operate").val(data.operate);
        	}	
		})
	})
	function comitbh(){
				var obj=$("#formbh").serialize();
				//alert(obj)
			$.ajax({
	        	url : "vocation/updateStatus2",
	        	type : "post",	        		        	
	        	data :obj,
	       	 	dataType : 'text',//返回的数据类型
	        	success : function(data) {
	        		queryvAll();
	        	}
	 		});
			}
	$("#tbody").on("click",".queryId",function(){
		 var vocation_Id=this.id;		
		$.ajax({
			url:"vocation/queryById",
			type : "post",			
        	 data:{
        		"vocation_Id" : vocation_Id,
        	}, 
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {  
        	    $("#tbodyvoc").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
        			var tr;        			
        			tr+="<tr><td>"+data[i].staff_Id+"</td></tr>";        			        		        				
        			tr+="<tr><td>"+data[i].STAFF_NAME+"</td></tr>";
        			tr+="<tr><td>"+data[i].departmentName+"</td></tr>";
        			tr+="<tr><td>"+data[i].vocation_Reason+"</td></tr>";
        			tr+="<tr><td>"+data[i].vocation_Qi_Time+"</td></tr>";
        			tr+="<tr><td>"+data[i].vocation_Jie_Time+"</td></tr>";        			       			
        			if(data[i].status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(data[i].status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(data[i].status_Name==2){
		        		tr+="<td>驳回</td>";
		        		}        			
        			
        			$("#tbodyvoc").append(tr);
        		}     
				
        	}	
		})
	})				
	/* 外出 */
	
	$(function(){
                      $("#btng").click(function(){                       
                       $("#show3").modal("show");
                   });                 
             })
 $('#user_modal2').on('show.bs.modal', function () {
        $.ajax({
        	url : "users/usersname",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
        	dataType : 'json', 
        	success : function(data) {
           		$("#userName2").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    var user=data[i].id+","+data[i].uname;
        		    tr+="<td><button type='button' id='"+user+"' class='insert btn btn-default' data-dismiss='modal'>'"+data[i].uname+"'</button></td>";
        		    tr+="</tr>";
        		     $("#userName2").append(tr); 
        	}}
 		}); 
     })
	$(function(){
				$("#userName2").on("click",".insert",function(){
				    var user=this.id;
					var users= user.split(",");
					for(var i=0; i<user.length;i++){
        		      var uid=users[0];
        		      var uname=users[1];
					}
				$("#uid2").val(uid);
			    $("#uname2").val(uname); 
				})
			})
	function empty(none){
           if(none==0){
                $("#uid").val("");
           		$("#uname").val("");
            }
	 }  
	
	$(function(){
    conFind2(1);
  });
  function conFind2(startPage){
    $.ajax({
       url:"goOut/queryAll",
       type:"post",
       data : {
				"startPage" : startPage
			}, 
       dataType:"json",
       success:function(data){
          $("#tbodyGo").empty();
          var ary = data.list;
          for(var i=0;i<ary.length;i++){
           var obj = ary[i];
            var tr="<tr>";
              if(obj.status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(obj.status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(obj.status_Name==2){
		        		tr+="<td>驳回</td>";
		        		}        			  
        			tr+="<td>"+obj.STAFF_NAME+"</td>";
        			tr+="<td>"+obj.reason+"</td>";
        			tr+="<td>"+obj.place+"</td>";
        			tr+="<td>"+obj.out_Time+"</td>";
        			tr+="<td>"+obj.start_Time+"</td>";
        			tr+="<td>"+obj.end_Time+"</td>";
                    tr+="<td><button id='"+obj.out_Id+"'  class='queryId2 btn btn-primary' data-toggle='modal' data-target='#myModal2'>详情</button></td>";          			      			
        			if(obj.status_Name==0){                                                                          
		        	 tr+="<td><button type='button' id='"+obj.out_Id+"' class='updateStag btn btn-danger'>通过</button><button  id='"+obj.out_Id+"' class='updateStag2 btn btn-primary' data-toggle='modal' data-target='#myModabh2'>驳回</button></td>";		        		
		        		}     
		        	tr+="</tr>";
        			$("#tbodyGo").append(tr);  
        			
          }
          //当前页的值
				$("#currPage2").val(data.pageNum);
				$("#weiye2").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					conFind2(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage2").val();
					if(last<curr){
					   $("#currPage2").val(last);
					   conFind2(last);
					}
					if(curr<=0){
					  $("#currPage2").val(1);
					   conFind2(1);
					}
					 conFind2(curr);
				});
				if (data.isFirstPage) {
					$("#syy2").attr("disabled", "disabled");
					$("#shouye2").attr("disabled", "disabled");
				} else {
					$("#syy2").removeAttr("disabled", "disabled");
					$("#shouye2").removeAttr("disabled", "disabled");
				}
				if (data.isLastPage) {
					$("#xyy2").attr("disabled", "disabled");
					$("#weiye2").attr("disabled", "disabled");
				} else {
					$("#xyy2").removeAttr("disabled", "disabled");
					$("#weiye2").removeAttr("disabled", "disabled");
				}
       }
    });
  };
  	/* 按钮的赋值 */
	$("#syy2").click(function() {
		var currPage = parseInt($("#currPage2").val());
		conFind2(currPage - 1);
	})
	$("#xyy2").click(function() {
		var currPage = parseInt($("#currPage2").val());
		conFind2(currPage + 1);
	})
	$("#shouye2").click(function() {
		conFind2(1);
	})

 $(function(){
		findGoSta();
		conFind2();
		})
		
	function findGoSta(){	
		 $.ajax({
	     url:"goOut/findAll",
		 data:{},//绑定要给后台提交的数据
		 dataType:'json',
		 type:"post",
		 async:true,
		 success:function(data){
		 for(var i=0;i<data.length;i++){
		  $("#sta2").append("<option value='"+data[i].staff_Id+"'>"+data[i].STAFF_NAME+"</option>");
		 	}		 	
		      }
		  });		
	}
	
	 function test1(){
			var obj=$("#fromGoOut").serializeObject();
			$.ajax({
	        	url : "goOut/insert",
	        	type : "post",
	        	async : true,
	        	contentType: "application/json; charset=utf-8",
	        	data : JSON.stringify(obj),
	       	 	dataType : 'text',
	        	success : function(data) {	        		
	        		conFind2();
	        	}
	 		});
		}	 
	$("#tbodyGo").on("click",".updateStag",function(){
		 var out_Id=this.id;
		alert(out_Id); 
		$.ajax({
			url:"goOut/updateStatus",
			type : "post",
        	data:{
        		"out_Id" : out_Id,
        	},
       	 	dataType : "text",//返回的数据类型
        	success : function(data) {
        		conFind2();
        	}	
		})
	})
	$("#tbodyGo").on("click",".updateStag2",function(){
		var out_Id=this.id;
		 $("#outId").val(out_Id);
		alert(out_Id); 
		$.ajax({
			url:"goOut/queryId",
			type : "post",
			 data:{
        		"out_Id" : out_Id,
        	},
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {
        		$("#operateg").val(data.operate);
        	}	
		})
	})
	function comitbhg(){
				var obj=$("#formbh2").serialize();
				//alert(obj)
			$.ajax({
	        	url : "goOut/updateStatus2",
	        	type : "post",	        		        	
	        	data :obj,
	       	 	dataType : 'text',//返回的数据类型
	        	success : function(data) {	        		
	        		conFind2();
	        	}
	 		});
			}	
	$("#tbodyGo").on("click",".queryId2",function(){
		 var out_Id=this.id;		
		$.ajax({
			url:"goOut/queryDetails",
			type : "post",			
        	 data:{
        		"out_Id" : out_Id,
        	}, 
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {  
        	    $("#tbodyg").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
        			var tr;        			
        			tr+="<tr><td>"+data[i].staff_Id+"</td></tr>";        			        		        				
        			tr+="<tr><td>"+data[i].STAFF_NAME+"</td></tr>";
        			tr+="<tr><td>"+data[i].departmentName+"</td></tr>";
        			tr+="<tr><td>"+data[i].reason+"</td></tr>";
        			tr+="<tr><td>"+data[i].place+"</td></tr>";
        			tr+="<tr><td>"+data[i].start_Time+"</td></tr>";
        			tr+="<tr><td>"+data[i].end_Time+"</td></tr>";        			     			       			
        			if(data[i].status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(data[i].status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(data[i].status_Name==2){
		        		tr+="<td>驳回</td>";
		        		}        			
        			
        			$("#tbodyg").append(tr);
        		}     
				
        	}	
		})
	})					  
	/* $("#tbodyGo").on("click",".queryId2",function(){
		 var out_Id=this.id;
		alert(out_Id); 
		$.ajax({
			url:"goOut/queryById",
			type : "post",			
        	 data:{
        		"out_Id" : out_Id,
        	}, 
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {       						
				$("#staff_Id2").val(data.sta_Staff_Id);
				$("#reason").val(data.reason);
				$("#start_Time").val(data.start_Time);
				$("#end_Time").val(data.end_Time);				
				 $("#goStatusName").val(data.status_Name); 
				$("#place").val(data.place);				
        	}	
		})
	}) */
	/* 出差 */
	$(function(){
    conFind3(1);
   
  });
  function conFind3(startPage){
    $.ajax({
       url:"travel/queryAll",
       type:"post",
       data : {
				"startPage" : startPage
			}, 
       dataType:"json",
       success:function(data){
          $("#travelbody").empty();
          var ary = data.list;
          for(var i=0;i<ary.length;i++){
           var obj = ary[i];
            var tr="<tr>";                 
        			tr+="<td>"+obj.travel_Id+"</td>";
        			tr+="<td>"+obj.STAFF_NAME+"</td>";
        			tr+="<td>"+obj.travel_Reason+"</td>";
        			tr+="<td>"+obj.travel_Place+"</td>";
        			tr+="<td>"+obj.start_Time+"</td>";
        			tr+="<td>"+obj.end_Time+"</td>";
        			if(obj.status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(obj.status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(obj.status_Name==2){
		        		tr+="<td>驳回</td>";
		        		}
		        	tr+="<td><button id='"+obj.travel_Id+"' class='queryId3 btn btn-primary' data-toggle='modal' data-target='#myModalxq'>详情</button></td>";          			      			
        			if(obj.status_Name==0){                                                                     		        		
		        	 tr+="<td><button type='button' id='"+obj.travel_Id+"' class='updateStat btn btn-danger'>通过</button><button  id='"+obj.travel_Id+"' class='updateStat2 btn btn-primary' data-toggle='modal' data-target='#myModabh3'>驳回</button></td>";		        		
		        		}   			        		
        			tr+="</tr>";
        			$("#travelbody").append(tr);
          }
          //当前页的值
				$("#currPage3").val(data.pageNum);
				$("#weiye3").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					conFind3(last);
				})
				$("#currPage3").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage3").val();
					if(last<curr){
					   $("#currPage3").val(last);
					   conFind3(last);
					}
					if(curr<=0){
					  $("#currPage3").val(1);
					   conFind3(1);
					}
					 conFind3(curr);
				});
				if (data.isFirstPage) {
					$("#syy3").attr("disabled", "disabled");
					$("#shouye3").attr("disabled", "disabled");
				} else {
					$("#syy3").removeAttr("disabled", "disabled");
					$("#shouye3").removeAttr("disabled", "disabled");
				}
				if (data.isLastPage) {
					$("#xyy3").attr("disabled", "disabled");
					$("#weiye3").attr("disabled", "disabled");
				} else {
					$("#xyy3").removeAttr("disabled", "disabled");
					$("#weiye3").removeAttr("disabled", "disabled");
				}
       }
    });
  };
  	/* 按钮的赋值 */
	$("#syy3").click(function() {
		var currPage = parseInt($("#currPage").val());
		conFind3(currPage - 1);
	})
	$("#xyy3").click(function() {
		var currPage = parseInt($("#currPage").val());
		conFind3(currPage + 1);
	})
	$("#shouye3").click(function() {
		conFind3(1);
	})	
 $(function(){
		findStats();
		conFind3();
		})
		
	function findStats(){	
		 $.ajax({
	     url:"travel/findAll",
		 data:{},//绑定要给后台提交的数据
		 dataType:'json',
		 type:"post",
		 async:true,
		 success:function(data){
		 for(var i=0;i<data.length;i++){
		  $("#sta3").append("<option value='"+data[i].staffId+"'>"+data[i].STAFF_NAME+"</option>");
		 	}		 	
		      }
		  });		
	}
	function test3(){
			var obj=$("#tform").serializeObject();
			$.ajax({
	        	url : "travel/save",
	        	type : "post",
	        	async : true,
	        	contentType: "application/json; charset=utf-8",
	        	data : JSON.stringify(obj),
	       	 	dataType : 'text',
	        	success : function(data){	        		
	        		conFind3();
	        	}
	 		});
		}
	$("#travelbody").on("click",".updateStat",function(){
		 var travel_Id=this.id;
		alert(travel_Id); 
		$.ajax({
			url:"travel/updateStatus",
			type : "post",
        	data:{
        		"travel_Id" : travel_Id,
        	},
       	 	dataType : "text",//返回的数据类型
        	success : function(data) {
        		conFind3();
        	}	
		})
	})	
	$("#travelbody").on("click",".updateStat2",function(){
		var travel_Id=this.id;
		 $("#travelId").val(travel_Id);
		alert(travel_Id); 
		$.ajax({
			url:"travel/overrule",
			type : "post",
			 data:{
        		"travel_Id" : travel_Id,
        	},
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {
        		$("#operatet").val(data.operate);
        	}	
		})
	})
	
	function comitbht(){
				var obj=$("#formbht").serialize();
				alert(obj)
			$.ajax({
	        	url : "travel/updateStatus2",
	        	type : "post",	        		        	
	        	data :obj,
	       	 	dataType : 'text',//返回的数据类型
	        	success : function(data) {	        		
	        		conFind3();
	        	}
	 		});
			}	
	$("#travelbody").on("click",".queryId3",function(){
		 var travel_Id=this.id;		
		$.ajax({
			url:"travel/queryDetails",
			type : "post",			
        	 data:{
        		"travel_Id" : travel_Id,
        	}, 
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {  
        	    $("#tbodyt").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
        			var tr;        			
        			tr+="<tr><td>"+data[i].staff_Id+"</td></tr>";        			        		        				
        			tr+="<tr><td>"+data[i].STAFF_NAME+"</td></tr>";
        			tr+="<tr><td>"+data[i].departmentName+"</td></tr>";
        			tr+="<tr><td>"+data[i].travel_Reason+"</td></tr>";
        			tr+="<tr><td>"+data[i].travel_Place+"</td></tr>";
        			tr+="<tr><td>"+data[i].start_Time+"</td></tr>";
        			tr+="<tr><td>"+data[i].end_Time+"</td></tr>";        			     			       			
        			if(data[i].status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(data[i].status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(data[i].status_Name==2){
		        		tr+="<td>驳回</td>";
		        		}        			
        			
        			$("#tbodyt").append(tr);
        		}     
				
        	}	
		})
	})				
	/* $("#travelbody").on("click",".queryId3",function(){
		 var travel_Id=this.id;
		alert(travel_Id); 
		$.ajax({
			url:"travel/queryById",
			type : "post",			
        	 data:{
        		"travel_Id" : travel_Id,
        	}, 
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {       						
				$("#staff_Id3").val(data.sta_Staff_Id);
				$("#travel_Reason").val(data.travel_Reason);
				$("#kssc").val(data.strat_Time);
				$("#end_Time2").val(data.end_Time);
				$("#travel_Date").val(data.travel_Date);
				$("#status_Name3").val(data.status_Name);
					        	
        	}	
		})
	}) */
	
	var start = {}, end = {};
    jeDate('#start',{
        format: 'YYYY-MM-DD hh:mm:ss',
        minDate: '2014-06-16 23:59:59', //设定最小日期为当前日期
        maxDate: function (that) {
            //that 指向实例对象
            return jeDate.valText(that.valCell) == "" ? jeDate.nowDate({DD:0}) : start.maxDate;
        }, //设定最大日期为当前日期
        donefun: function(obj){
            end.minDate = obj.val; //开始日选好后，重置结束日的最小日期
            jeDate("#end",LinkageEndDate(false));
        }
    });
    jeDate('#end',LinkageEndDate);

    function LinkageEndDate(istg) {
        return {
            trigger : istg || "click",
            format: 'YYYY-MM-DD hh:mm:ss',
            minDate: function (that) {
                //that 指向实例对象
                var nowMinDate = jeDate.valText('#start') == "" && jeDate.valText(that.valCell) == "";
                return nowMinDate ? jeDate.nowDate({DD:0}) : end.minDate ;
            }, //设定最小日期为当前日期
            maxDate: '2099-06-16 23:59:59', //设定最大日期为当前日期
            donefun: function(obj){
                start.maxDate = obj.val; //将结束日的初始值设定为开始日的最大日期
            }
        };    
    }
      //蓝色主题色
    jeDate("#end",{
        theme:{ bgcolor:"#00A1CB",color:"#ffffff", pnColor:"#00CCFF"},
        format: "YYYY-MM-DD hh:mm:ss"
    });
    
    
    jeDate("#start",{
        theme:{ bgcolor:"#00A1CB",color:"#ffffff", pnColor:"#00CCFF"},
        format: "YYYY-MM-DD hh:mm:ss"
    });
</script>