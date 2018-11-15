<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'staffion.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
   <%--  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css"> --%>

		
  </head>
  
  <body>
  	<div>
  		<a href="csj/staffSave.jsp">新建档案</a>
  	</div>
   <table class="table table-hover">
  
     	<thead>
     		<tr class="success">
     		<th>选择</th>
     		  <th>姓名</th>
     		  <th>OA角色</th>
     		  <th>性别</th>
     		  <th>出生日期</th>
     		  <th>民族</th>
     		  <th>籍贯</th>
     		  <th>政治面貌</th>
     		  <th>入职时间</th>
     		</tr>
     	</thead>
     	<tbody id="tbody">
     	
     	</tbody>
     </table>
     <div class="modal fade" id="staffModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" style="width:700px">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">修改</h4>
					</div>
		<div class="modal-body">
		<!-- 修改 -->
			<form method="post" id="staf_form">
		<table class="table table-bordered ><!-- class="Table" width="50%" align="center" --> 
			<tr align="center" class="TableControl">
				<td colspan=4 nowrap>
					<p></p>
				</td>
			</tr>
			<tr><td>基本信息</td></tr>
			<tr>
				
				<td class="TableData" style="width: 20%">
				    <input type="hidden"name="staffId"  id="staff_id"  class="form-control">
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-2 control-label" style="width: 10%">部门:</td>
				<td class="TableData" style="width: 20%">
					<select class="department form-control" id="staffFind" name="departmentId">
					</select>
				</td> 
				<td nowrap class="col-md-4 control-label" style="width: 20%">角色:</td>
				<td class="TableData" style="width: 20%">
				     <select class="roleId form-control" id="rolesFind" name="rolesId">
         </select>

      </td>
			</tr>
			<tr>
				<td nowrap class="col-md-1 control-label" style="width: 10%">工号:</td>
				<td class="TableData" style="width: 20%">
				   <input type="text"name="STAFF_NO" id="STAFF_NO" class="form-control">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">姓名:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="staffName" id="STAFF_NAME" class="form-control">
				</td>
			</tr>
			<tr>
				<td nowrap class="col-md-1 control-label" style="width: 10%">身份证:</td>
				 <td class="TableData" style="width: 20%">
		          <input type="text" id="STAFF_CARD_NO" name="STAFF_CARD_NO" class="form-control">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">出生日期:</td>
				<td class="TableData" style="width: 20%">
		          <input type="date" id="STAFF_BIRTH" name="STAFF_BIRTH" class="form-control">
				</td>
			</tr>
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">年龄:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="STAFF_AGE"  id="STAFF_AGE"  class="form-control">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">性别:</td>
				<td class="TableData" style="width: 20%">
				    <select class="sele form-control" name="STAFF_SEX" id="STAFF_SEX">
        	                              <option value="1">男</option>
        	                              <option value="2">女</option>
        	                            </select>
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">籍贯:</td>
				<td class="TableData" style="width: 20%">
				     <select class="sele form-control" name="STAFF_NATIVE_PLACE" id="STAFF_NATIVE_PLACE">
        	                              <option value="1">北京</option>
        	                              <option value="2">天津</option>
        	                              <option value="3">上海</option>
        	                              <option value="4">重庆</option>
        	                              <option value="6">河北</option>
        	                              <option value="7">山西</option>
        	                              <option value="8">辽宁</option>
        	                              <option value="9">吉林</option>
        	                              <option value="10">黑龙江</option>
        	                              <option value="11">江苏</option>
        	                              <option value="12">浙江</option>
        	                              <option value="13">安徽</option>
        	                              <option value="14">福建</option>
        	                              <option value="15">江西</option>
        	                              <option value="16">山东</option>
        	                              <option value="17">河南</option>
        	                              <option value="18">湖北</option>
        	                              <option value="19">湖南</option>
        	                              <option value="20">广东</option>
        	                              <option value="21">海南</option>
        	                              <option value="22">四川</option>
        	                              <option value="23">贵州</option>
        	                              <option value="24">云南</option>
        	                              <option value="25">陕西</option>
        	                              <option value="26">甘肃</option>
        	                              <option value="27">青海</option>
        	                              <option value="28">台湾</option>
        	                              <option value="29">内蒙古</option>
        	                              <option value="30">广西</option>
        	                              <option value="31">西藏</option>
        	                              <option value="32">宁夏</option>
        	                              <option value="33">新疆</option>
        	                              <option value="34">香港</option>
        	                              <option value="35">澳门</option>
        	                            </select>

				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">民族:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="STAFF_NATIONALITY"  id="STAFF_NATIONALITY"  class="form-control">
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">政治面貌:</td>
				<td class="TableData" style="width: 20%">
				   <select name="STAFF_POLITICAL_STATUS" id="STAFF_POLITICAL_STATUS" class="form-control">
                    <option value="1">群众</option>
					<option value="2">共青团员</option>
					<option value="3">党员</option>
            </select>
				</td>
			</tr> 
					<tr>
						<td>联系信息</td>
					</tr>
			
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">邮箱:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="STAFF_EMAIL"  id="STAFF_EMAIL"  class="form-control">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">联系电话:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="STAFF_PHONE"  id="STAFF_PHONE"  class="form-control">
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">家庭住址:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="HOME_ADDRESS"  id="HOME_ADDRESS"  class="form-control">
				</td>
			</tr> 
			<tr><td>教育背景</td></tr>
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">学历:</td>
				<td class="TableData" style="width: 20%">
				 <select class="sele form-control" name="STAFF_HIGHEST_SCHOOL" id="STAFF_HIGHEST_SCHOOL">
	                <option value="">请选择</option>
	                <option value="1">小学</option>
					<option value="2">初中</option>
					<option value="3">高中</option>
					<option value="4">中专</option>
					<option value="5">大专</option>
					<option value="6">本科</option>
					<option value="7">研究生</option>
					<option value="8">博士</option>
					<option value="9">博士后</option>
					<option value="11">技校</option>
					            </select>
        </td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">学位:</td>
				<td class="TableData" style="width: 20%">
				    <select class="sele form-control" name="STAFF_HIGHEST_DEGREE" id="STAFF_HIGHEST_DEGREE">
                <option value="" selected>请选择</option>
                <option value="1">博士后</option>
				<option value="2">博士</option>
				<option value="3">MBA</option>
				<option value="4">硕士</option>
				<option value="5">双学士</option>
				<option value="6">学士</option>
				<option value="7">无</option>
				            </select>
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">毕业时间:</td>
				<td class="TableData" style="width: 20%">
				    <input type="date" name="GRADUATION_DATE" class="form-control" id="GRADUATION_DATE" >
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">毕业学校:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text" name="GRADUATION_SCHOOL" class="form-control" id="GRADUATION_SCHOOL" >
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">专业:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text"name="STAFF_MAJOR"  id="STAFF_MAJOR"  class="form-control">
				</td>
			</tr> 
			<tr><td>合同</td></tr>
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">合同签订时间:</td>
				<td class="TableData" style="width: 20%">
				    <input type="date" name="STAFF_CS"  id="STAFF_CS"  class="form-control">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">合同到期时间:</td>
				<td class="TableData" style="width: 20%">
				    <input type="date" name="STAFF_CTR"  id="STAFF_CTR"  class="form-control">
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 20%">建档时间:</td>
				<td class="TableData" style="width: 20%">
				    <input type="date" name="ADD_TIME"  id="ADD_TIME"  class="form-control">
				</td>
				<td nowrap class="col-md-4 control-label" style="width: 20%">在职状态:</td>
				<td class="TableData" style="width: 20%">
				    <input type="hidden" name="workStatus"  id="WORK_STATUS"  class="form-control">
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 10%">入职时间:</td>
				<td class="TableData" style="width: 20%">
				    <input type="date" name="DATES_EMPLOYED"  id="DATES_EMPLOYED"  class="form-control">
				</td>
			</tr> 
			<tr>
				<td nowrap class="col-md-4 control-label" style="width: 10%">备注:</td>
				<td class="TableData" style="width: 20%">
				    <input type="text" name="REMARK"  id="REMARK"  class="form-control">
				</td>
			</tr> 
			
		</table>
	</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal"onclick="update()">修改</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
		</div>
		
  </body>
</html>
<script>
	$(function(){ 
		queryAll();
		staffFind();
		rolesFind();
		})
	function queryAll(){
			$.ajax({
				url:"staff/select",
				type:"post",
				dataType:'json',
				success:function(data){
					 $("#tbody").empty()
					 for(var i=0;i<data.length;i++){
					 	var obj=data[i];
	           			var tr="<tr>";
	           			tr+="<td><input type='checkbox' ></td>";
	           			tr+="<td>"+obj.STAFF_NAME+"</td>";
		                tr+="<td>"+obj.rolesName+"</td>";
		                tr+="<td>"+ditchA(obj.STAFF_SEX)+"</td>";
		                tr+="<td>"+obj.STAFF_BIRTH+"</td>";
		                tr+="<td>"+obj.STAFF_NATIONALITY+"</td>";
		                tr+="<td>"+obj.STAFF_NATIVE_PLACE+"</td>";
		                tr+="<td>"+ditchB(obj.STAFF_POLITICAL_STATUS)+"</td>";
		                tr+="<td>"+obj.DATES_EMPLOYED+"</td>";
		                tr+="<td><input type='button' data-toggle='modal' data-target='#staffModal' title=" + obj.staff_id+ "  class='selId btn btn-default' value='修改'></td>";
		                tr+="<td><input type='button' id='"+obj.staff_id+"' class='deletestaf  btn btn-default' value='删除'></td>";
		                tr+="</tr>";
		                $("#tbody").append(tr);
					 }
				}			
			})
		}
		/* 根据ID查询 */
	$(function(){
				$("#tbody").on("click",".selId",function(){
					var id=this.title;
					$.ajax({
						url:"staff/selectId",
						type:"post",
						async:true,
						data:{"staff_id":id},
						dataType: 'Json',
						success:function(data){
						
						$("#staff_id").val(data[0].staff_id);
						$("#staffFind").val(data[0].departmentId);
						$("#rolesFind").val(data[0].rolesId);
						$("#STAFF_NO").val(data[0].STAFF_NO);
						$("#STAFF_NAME").val(data[0].STAFF_NAME);
						$("#STAFF_CARD_NO").val(data[0].STAFF_CARD_NO);
						$("#STAFF_BIRTH").val(data[0].STAFF_BIRTH);
						$("#STAFF_AGE").val(data[0].STAFF_AGE);
						$("#STAFF_SEX").val(data[0].STAFF_SEX);
						$("#STAFF_POLITICAL_STATUS").val(data[0].STAFF_POLITICAL_STATUS);
						$("#STAFF_NATIVE_PLACE").val(data[0].STAFF_NATIVE_PLACE);
						$("#STAFF_NATIONALITY").val(data[0].STAFF_NATIONALITY);
						$("#STAFF_EMAIL").val(data[0].STAFF_EMAIL);
						$("#STAFF_PHONE").val(data[0].STAFF_PHONE);
						$("#HOME_ADDRESS").val(data[0].HOME_ADDRESS);
						$("#STAFF_HIGHEST_SCHOOL").val(data[0].STAFF_HIGHEST_SCHOOL);
						$("#STAFF_HIGHEST_DEGREE").val(data[0].STAFF_HIGHEST_DEGREE);
						$("#GRADUATION_DATE").val(data[0].GRADUATION_DATE);
						$("#GRADUATION_SCHOOL").val(data[0].GRADUATION_SCHOOL);
						$("#STAFF_MAJOR").val(data[0].STAFF_MAJOR);
						$("#STAFF_CS").val(data[0].STAFF_CS);
						$("#STAFF_CTR").val(data[0].STAFF_CTR);
						$("#ADD_TIME").val(data[0].ADD_TIME);
						$("#WORK_STATUS").val(data[0].WORK_STATUS);
						$("#DATES_EMPLOYED").val(data[0].DATES_EMPLOYED);
						$("#REMARK").val(data[0].REMARK);
						}
					});
				})
			})
			/* 模态框修改 */
	   function update(){
			var obj=$("#staf_form").serialize();
		    $.ajax({
		       url:"staff/update",
        	    type:"post",
        	   data :obj,
	           dataType:'json',
        	   success : function(data) {
        	      queryAll();
        	} 
 		}); 
	 }
	/*删除*/
	 $(function(){
				$("#tbody").on("click",".deletestaf",function(){
					var id=this.id;
					$.ajax({
						url:"staff/delete",
						type:"post",
						async:true,
						data:{"staff_id":id},
						dataType: 'Json',
						success:function(data){
						
						}
					});
				})
			})
			//部门查询
			function staffFind(){
				  $.ajax({
				        url:"staff/selectDep",
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        	  for(var i=0;i<data.length;i++){
				        		$("#staffFind").append("<option value='"+data[i].departmentId+"'>"+data[i].departmentName+"</option>"); 
				         	
				        	}  
				        	
				        }
			      }); 
	
	 } 
	 //角色
			function rolesFind(){
				  $.ajax({
				        url:"staff/selectRole",
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        	  for(var i=0;i<data.length;i++){
				        		$("#rolesFind").append("<option value='"+data[i].rolesId+"'>"+data[i].rolesName+"</option>"); 
				         	
				        	}  
				        	
				        }
			      }); 
	
	 } 
	 	/*性别判断  */
		function ditchA(STAFF_SEX){
  	   if(STAFF_SEX==""){
  	       return '无';
  	   }else if(STAFF_SEX==1){
  	       return '男';
  	   }else if(STAFF_SEX==2){
  	       return '女';
  	       }
  	}
  	/*性别判断  */
		function ditchB(STAFF_POLITICAL_STATUS){
  	   if(STAFF_POLITICAL_STATUS==""){
  	       return '无';
  	   }else if(STAFF_POLITICAL_STATUS==1){
  	       return '群众';
  	   }else if(STAFF_POLITICAL_STATUS==2){
  	       return '共青团员';
  	       }else if(STAFF_POLITICAL_STATUS==3){
  	       return '党员';
  	     }
  	}
  	/*详细信息*/
			$(function(){
				$("#transfer_tbody").on("click",".details",function(){
					var id=this.id;
					$.ajax({
						url:"stfer/queryId",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(id),
						dataType: 'Json',
						success:function(data){
						$("#from_details").html("");
						    var tr="<tr >";
        		            tr+="<td>姓名:</td><td>"+data[0].departmentId+"</td><td>角色:</td><td>"+ditch(data[0].rolesId)+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>调动日期:</td><td>"+data[0].TRANSFER_DATE+"</td><td>电动生效日期:</td><td>"+data[0].TRANSFER_EFFECTIVE_DATE+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>调动前部门:</td><td>"+data[0].DIAOQIAN+"</td><td>调动后部门:</td><td>"+data[0].DIAOHOU+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>调动手续办理</td><td>"+data[0].START_DATE+"</td>";		            
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>调动原因</td><td>"+data[0].TRAN_REASON+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>备注</td><td>"+data[0].DESPACHO+"</td>";
        		            tr+="</tr>";
        		            tr+="<tr>";
        		            tr+="<td>附件文档</td><td>"+data[0].ATTACHMENT_NAME+"</td>";
        		            tr+="</tr>";
        		            tr+="<td>登记时间</td><td>"+data[0].ADD_TIME+"</td>";
        		            tr+="</tr>";
        		            tr+="<td>最后修改时间</td><td>"+data[0].LAST_UPDATE_TIME+"</td>";
        		            tr+="</tr>";
        		            $("#from_details").append(tr); 
						}
					});
				})
			})             
</script>