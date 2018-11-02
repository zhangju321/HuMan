<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人考勤</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <link rel="stylesheet" type="text/css" href="resource/js/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resource/js/bootstrap/css/bootstrap-theme.min.css">
	<script src="resource/jquery-1.11.3.min.js"></script>
	<script src="resource/js/bootstrap/js/bootstrap.min.js"></script>
	<script src="resource/jquery.serialize.js"></script>	
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
		<div class="modal-content" style="height:550px">
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
              <option value="0">病假</option>
              <option value="1">事假</option>
              <option value="2">年假</option>
              <option value="3">倒休</option>
              <option value="4">其他</option>              
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
        <label for="examine_Person" class="col-md-4 control-label">审批人员:</label>
         <div class="col-md-6">
                <input type="text" name="examine_Person" class="form-control"/>
         </div>
      </div>      
      <div class="form-group">
        <label for="circulate" class="col-md-4 control-label" >传阅人员:</label>
         <div class="col-md-6">
                <input type="text" name="circulate"  class="form-control"/>
         </div>
      </div>    
       <div class="modal-footer">
		<button type="button" onclick="save()" data-toggle='modal' data-target='#myModal' class="btn btn-primary">申请</button>
		<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	 </div>
    </form>
    </div>
	</div>
	
    </div><!-- /.modal-content -->
   </div><!-- /.modal -->
   <div class="modal fade" id="myModall" tabindex="-1" role="dialog" aria-labelledby="modalTitle1" aria-hidden="true">
	<div class="modal-dialog" style="width:550px">
		<div class="modal-content" style="height:520px">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times; <!-- 关闭按钮 -->
				</button>
				<h4 class="modal-title" id="modalTitle1">
					考勤详情
				</h4>
			</div>
	<div class="modal-body">
  
     <form id="formxq" method="post" class="form-horizontal" >
     <div class="form-group">
        <label for="s.tabClasses" class="col-md-4 control-label">请假编号:</label>
         <div class="col-md-6">
           <input type="text"  name="vocation_Id" id="vocation_Id" readonly class="form-control"/>          
         </div>
      </div>
      <div class="form-group">
        <label for="s.tabClasses" class="col-md-4 control-label">请假人员:</label>
         <div class="col-md-6">
           <input type="text"  name="sta_Staff_Id" id="sta_Staff_Id" readonly class="form-control"/>          
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuCode" class="col-md-4 control-label">请假原因:</label>
          <div class="col-md-6">
            <textarea name="vocation_Reason" id="vocation_Reason" readonly class="form-control" rows="3" required placeholder="请输入请假原因"></textarea>
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuBirthday" class="col-md-4 control-label">开始时间:</label>
         <div class="col-md-6">
             <input type="text" name="vocation_Qi_Time" readonly id="vocation_Qi_Time" required placeholder="请输入开始时间" class="form-control"/>
         </div>
      </div>
      <div class="form-group">
        <label for="vocation_Jie_Time" class="col-md-4 control-label">结束时间:</label>
         <div class="col-md-6">
                <input type="text" name="vocation_Jie_Time" readonly id="vocation_Jie_Time" required  placeholder="请输入结束时间" class="form-control"/>
         </div>
      </div>
      <div class="form-group">
        <label for="vocation_Type" class="col-md-4 control-label">请假类型:</label>
         <div class="col-md-6">            
		    <input type="text" name="vocation_Type" id="vocation_Type" readonly class="form-control"/>			               
         </div>
      </div>
      <div class="form-group">
        <label for="status_Name" class="col-md-4 control-label">请假状态:</label>
         <div class="col-md-6">           
              <input type="text" name="status_Name" id="status_Name" readonly class="form-control"/>                                                 
         </div>
      </div>
        
       <div class="modal-footer">		
		<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
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
		<div class="modal-content" style="height:600px">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal2" aria-hidden="true">
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
        <label for="s.stuName" class="col-md-4 control-label">申请状态:</label>
         <div class="col-md-8">
            <div class="col-md-8">
              <input type="radio" name="status_Name" value="0" checked="checked">未审批     
         </div>
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
		<button type="button" onclick="test1()" data-toggle='modal' data-target='#myModalgo' class="btn btn-primary">申请</button>
		<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	 </div>
    </form>
	</div>
	</div>
	
    </div><!-- /.modal-content -->
   </div><!-- /.modal -->
  
  <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="modalTitle2" aria-hidden="true">
	<div class="modal-dialog" style="width:550px">
		<div class="modal-content" style="height:500px">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times; <!-- 关闭按钮 -->
				</button>
				<h4 class="modal-title" id="modalTitle2">
					考勤详情2
				</h4>
			</div>
	<div class="modal-body">
  
     <form id="formxq" method="post" class="form-horizontal" >
      <div class="form-group">
        <label for="s.tabClasses" class="col-md-4 control-label">外出编号:</label>
         <div class="col-md-6">
           <input type="text"  name="sta_Staff_Id" id="staff_Id2" readonly class="form-control"/>          
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuCode" class="col-md-4 control-label">外出原因:</label>
          <div class="col-md-6">
            <textarea name="reason" id="reason" readonly class="form-control" rows="3" required placeholder="请输入请假原因"></textarea>
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuBirthday" class="col-md-4 control-label">外出时间:</label>
         <div class="col-md-6">
             <input type="text" name="start_Time" readonly id="start_Time" required placeholder="请输入开始时间" class="form-control"/>
         </div>
      </div>
      <div class="form-group">
        <label for="vocation_Jie_Time" class="col-md-4 control-label">结束时间:</label>
         <div class="col-md-6">
                <input type="text" name="end_Time" readonly id="end_Time"  class="form-control"/>
         </div>
      </div>
      
      <div class="form-group">
        <label for="status_Name" class="col-md-4 control-label">请假状态:</label>
         <div class="col-md-6">           
              <input type="text" name="status_Name" id="goStatus_Name" readonly class="form-control"/>                                                 
         </div>
      </div>
      <div class="form-group">
        <label for="status_Name" class="col-md-4 control-label">外出地点:</label>
         <div class="col-md-6">           
              <input type="text" name="place" id="place" readonly class="form-control"/>                                                 
         </div>
      </div>
        
       <div class="modal-footer">		
		<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
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
    			<td>外出时间</td>
    			<td>开始时间</td>
    			<td>结束时间</td>      					
    			<td>操作</td>
    			      			 		
    		</tr>
    		<tbody id="tbodyGo"></tbody>
    	</table>
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
		<div class="modal-content" style="height:620px">
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
        <label for="s.tabClasses" class="col-md-2 control-label">出差人员:</label>
         <div class="col-md-4">
          <select name="sta_Staff_Id" id="sta3"></select><br/>
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuCode" class="col-md-2 control-label">出差原因:</label>
          <div class="col-md-4">
            <textarea name="travel_Reason" class="form-control" rows="3"></textarea>
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuCode" class="col-md-2 control-label">出差地点:</label>
          <div class="col-md-4">
            <input type="text" name="travel_Place" class="form-control"/>
         </div>
      </div>
      <div class="form-group">
        <label for="start_Time" class="col-md-2 control-label">开始时间:</label>
         <div class="col-md-4">
             <input type="date" name="start_Time" required placeholder="请输入开始时间" class="form-control"/>
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuAge" class="col-md-2 control-label">结束时间:</label>
         <div class="col-md-4">
                <input type="date" name="end_Time" required  placeholder="请输入结束时间" class="form-control"/>
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuSex" class="col-md-2 control-label">出差时长:</label>
         <div class="col-md-4">
            <input type="text" name="travel_Date" class="form-control"/>                      
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuName" class="col-md-2 control-label">请假状态:</label>
         <div class="col-md-4">         
              <input type="radio" name="status_Name" value="0" checked="checked">未审批     
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuAddr" class="col-md-2 control-label">审批人员:</label>
         <div class="col-md-4">
                <input type="text" name="examine_Person" class="form-control"/>
         </div>
      </div>       
      <div class="form-group">      
        <label for="s.stuPhone" class="col-md-2 control-label" >传阅人员:</label>
         <div class="col-md-4">
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
					考勤详情3
				</h4>
			</div>
	<div class="modal-body">
  
     <form id="formxq" method="post" class="form-horizontal" >
      <div class="form-group">
        <label for="s.tabClasses" class="col-md-4 control-label">出差编号:</label>
         <div class="col-md-6">
           <input type="text"  name="sta_Staff_Id" id="staff_Id3" readonly class="form-control"/>          
         </div>
      </div>
      <div class="form-group">
        <label for="s.stuCode" class="col-md-4 control-label">出差原因:</label>
          <div class="col-md-6">
            <textarea name="travel_Reason" id="travel_Reason" readonly class="form-control" rows="3" ></textarea>
         </div>
      </div>
      <div class="form-group">
        <label for="start_Time" class="col-md-4 control-label">开始时间:</label>
         <div class="col-md-6">
             <input type="text" name="start_Time" readonly id="kssc" class="form-control"/>
         </div>
      </div>
      <div class="form-group">
        <label for="end_Time" class="col-md-4 control-label">结束时间:</label>
         <div class="col-md-6">
                <input type="text" name="end_Time" readonly id="end_Time2"  class="form-control"/>
         </div>
      </div>
      <div class="form-group">
        <label for="vocation_Type" class="col-md-4 control-label">出差时长:</label>
         <div class="col-md-6">            
		    <input type="text" name="travel_Date" id="travel_Date" readonly class="form-control"/>			               
         </div>
      </div>
      <div class="form-group">
        <label for="status_Name" class="col-md-4 control-label">请假状态:</label>
         <div class="col-md-6">           
              <input type="text" name="status_Name" id="trstatus_Name" readonly class="form-control"/>                                                 
         </div>
      </div>
        
       <div class="modal-footer">		
		<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
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
function test(){
		 	$.ajax({
        	url : "vocation/queryAll",
        	type : "post",
        	async : true,
        	data:$("#tbody").serialize(),
       	 	dataType : 'Json',
        	success : function(data) {
        		$("#tbody").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
        			var tr="<tr>";
        			tr+="<td>"+data[i].vocation_Id+"</td>";
        			tr+="<td>"+data[i].staff_Name+"</td>";
        			tr+="<td>"+data[i].vocation_Reason+"</td>";
        			tr+="<td>"+data[i].vocation_Qi_Time+"</td>";
        			tr+="<td>"+data[i].vocation_Jie_Time+"</td>";
        			if(data[i].status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(data[i].status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(data[i].status_Name==2){
		        		tr+="<td>驳回</td>";
		        		}
        			tr+="<td><button id='"+data[i].vocation_Id+"'  class='queryId btn btn-primary'  data-toggle='modal' data-target='#myModall'>详情</button></td>";          			      			
        			if(data[i].status_Name==0){
		        	 tr+="<td><button type='button' id='"+data[i].vocation_Id+"' class='updateSta btn btn-danger'>通过</button><button type='button' id='"+data[i].vocation_Id+"' class='updateSta2 btn btn-info'>驳回</button></td>";		        		
		        		}		        	  		     
        			tr+="</tr>";
        			$("#tbody").append(tr);
        		}
        	}
 		});
		}
 $(function(){
		findSta();
		test();
		})
		
	function findSta(){	
		 $.ajax({
	     url:"vocation/findAll",
		 data:{},//绑定要给后台提交的数据
		 dataType:'json',
		 type:"post",
		 async:true,
		 success:function(data){
		 for(var i=0;i<data.length;i++){
		  $("#sta").append("<option value='"+data[i].staffId+"'>"+data[i].staffName+"</option>");
		 	}
		 	
		      }
		  });		
	}
	function save(){
			var obj=$("#form1").serializeObject();
			$.ajax({
	        	url : "vocation/save",
	        	type : "post",
	        	async : true,
	        	contentType: "application/json; charset=utf-8",
	        	data : JSON.stringify(obj),
	       	 	dataType : 'text',
	        	success : function(data) {
	        		alert(data);
	        		test();
	        	}
	 		});
		}
	$("#tbody").on("click",".updateSta",function(){
		 var vocation_Id=this.id;
		alert(vocation_Id); 
		$.ajax({
			url:"vocation/updateStatus",
			type : "post",
        	data:{
        		"vocation_Id" : vocation_Id,
        	},
       	 	dataType : "text",//返回的数据类型
        	success : function(data) {
        		test();
        	}	
		})
	})
	$("#tbody").on("click",".updateSta2",function(){
		 var vocation_Id=this.id;
		alert(vocation_Id); 
		$.ajax({
			url:"vocation/updateStatus2",
			type : "post",
			 data:{
        		"vocation_Id" : vocation_Id,
        	},
       	 	dataType : "text",//返回的数据类型
        	success : function(data) {
        		test();
        	}	
		})
	})
	$("#tbody").on("click",".queryId",function(){
		 var vocation_Id=this.id;
		alert(vocation_Id); 
		$.ajax({
			url:"vocation/queryById",
			type : "post",			
        	 data:{
        		"vocation_Id" : vocation_Id,
        	}, 
       	 	dataType : "json",//返回的数据类型
        	success : function(data) {  
        	    $("#vocation_Id").val(data.vocation_Id); 						
				$("#sta_Staff_Id").val(data.sta_Staff_Id);
				$("#vocation_Reason").val(data.vocation_Reason);
				$("#vocation_Qi_Time").val(data.vocation_Qi_Time);
				$("#vocation_Jie_Time").val(data.vocation_Jie_Time);
				$("#vocation_Type").val(data.vocation_Type);
				$("#status_Name").val(data.status_Name);
				/* if(data[i].status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(data[i].status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(data[i].status_Name==2){
		        		tr+="<td>驳回</td>";
		        		} */
        	}	
		})
	})
	
	
	
	
	/* 外出 */
	function gotest(){
		 	$.ajax({
        	url : "goOut/queryAll",
        	type : "post",
        	async : true,
        	data:$("#tbodyGo").serialize(),
       	 	dataType : 'Json',
        	success : function(data) {
        		$("#tbodyGo").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
        			var tr="<tr>";
        			if(data[i].status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(data[i].status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(data[i].status_Name==2){
		        		tr+="<td>驳回</td>";
		        		}
        			/* tr+="<td>"+data[i].out_Id+"</td>"; */
        			tr+="<td>"+data[i].staff_Name+"</td>";
        			tr+="<td>"+data[i].reason+"</td>";
        			tr+="<td>"+data[i].place+"</td>";
        			tr+="<td>"+data[i].out_Time+"</td>";
        			tr+="<td>"+data[i].start_Time+"</td>";
        			tr+="<td>"+data[i].end_Time+"</td>";
                    tr+="<td><button id='"+data[i].out_Id+"'  class='queryId2 btn btn-primary' data-toggle='modal' data-target='#myModal2'>详情</button></td>";          			      			
        			if(data[i].status_Name==0){
		        	 tr+="<td><button type='button' id='"+data[i].out_Id+"' class='updateStag btn btn-danger'>通过</button><button type='button' id='"+data[i].out_Id+"' class='updateStag2 btn btn-info'>驳回</button></td>";		        		
		        		}     
		        	tr+="</tr>";
        			$("#tbodyGo").append(tr);
        		}
        	}
 		});
		}
 $(function(){
		findGoSta();
		gotest();
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
		  $("#sta2").append("<option value='"+data[i].staffId+"'>"+data[i].staffName+"</option>");
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
	        		alert(data);
	        		gotest();
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
        		gotest();
        	}	
		})
	})
	$("#tbodyGo").on("click",".updateStag2",function(){
		 var out_Id=this.id;
		alert(out_Id); 
		$.ajax({
			url:"goOut/updateStatus2",
			type : "post",
        	data:{
        		"out_Id" : out_Id,
        	},
       	 	dataType : "text",//返回的数据类型
        	success : function(data) {
        		gotest();
        	}	
		})
	})
	$("#tbodyGo").on("click",".queryId2",function(){
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
				$("#goStatus_Name").val(data.status_Name);
				$("#place").val(data.place);
				/* if(data[i].status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(data[i].status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(data[i].status_Name==2){
		        		tr+="<td>驳回</td>";
		        		} */
        	}	
		})
	})
	
	
	/* 出差 */
	function teravelTest(){
		 	$.ajax({
        	url : "travel/queryAll",
        	type : "post",
        	async : true,
        	data:$("#travelbody").serialize(),
       	 	dataType : 'Json',
        	success : function(data) {
        		$("#travelbody").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
        			var tr="<tr>";
        			tr+="<td>"+data[i].travel_Id+"</td>";
        			tr+="<td>"+data[i].staff_Name+"</td>";
        			tr+="<td>"+data[i].travel_Reason+"</td>";
        			tr+="<td>"+data[i].travel_Place+"</td>";
        			tr+="<td>"+data[i].start_Time+"</td>";
        			tr+="<td>"+data[i].end_Time+"</td>";
        			if(data[i].status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(data[i].status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(data[i].status_Name==2){
		        		tr+="<td>驳回</td>";
		        		}
		        	tr+="<td><button id='"+data[i].travel_Id+"' class='queryId3 btn btn-primary' data-toggle='modal' data-target='#myModalxq'>详情</button></td>";          			      			
        			if(data[i].status_Name==0){
		        	 tr+="<td><button type='button' id='"+data[i].travel_Id+"' class='updateStat btn btn-danger'>通过</button><button type='button' id='"+data[i].travel_Id+"' class='updateStat2 btn btn-info'>驳回</button></td>";		        		
		        		}   			        		
        			tr+="</tr>";
        			$("#travelbody").append(tr);
        		}
        	}
 		});
		}
 $(function(){
		findStats();
		teravelTest();
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
		  $("#sta3").append("<option value='"+data[i].staffId+"'>"+data[i].staffName+"</option>");
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
	        	success : function(data) {
	        		alert(data);
	        		teravelTest();
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
        		teravelTest();
        	}	
		})
	})	
	$("#travelbody").on("click",".updateStat2",function(){
		 var travel_Id=this.id;
		alert(travel_Id); 
		$.ajax({
			url:"travel/updateStatus2",
			type : "post",
        	data:{
        		"travel_Id" : travel_Id,
        	},
       	 	dataType : "text",//返回的数据类型
        	success : function(data) {
        		teravelTest();
        	}	
		})
	})
	$("#travelbody").on("click",".queryId3",function(){
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
				/* if(data[i].status_Name==0){
		        		tr+="<td>未审批</td>";
		        		}
		        	if(data[i].status_Name==1){
		        		tr+="<td>通过</td>";
		        		}
		        	if(data[i].status_Name==2){
		        		tr+="<td>驳回</td>";
		        		} */
        	}	
		})
	})
</script>