<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- 使用模态窗口引入bootstrap -->
<link rel="stylesheet" type="text/css"
	href="resource/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resource/js/bootstrap/css/bootstrap-theme.min.css">
<script src="resource/js/jquery.min.js"></script>
<script src="resource/js/bootstrap/js/bootstrap.min.js"></script>
<!--最基础jQuery.js都是基于这个  -->
<script type="text/javascript" src="resource/jquery-1.11.3.min.js"></script>
<!-- 异步转换参数js -->
<script type="text/javascript" src="resource/jqueryExt.js"></script>
<!-- 上传文件js -->
<script type="text/javascript" src="resource/jquery.form.js"></script>

<link rel="stylesheet" href="layuiadmin/layui/css/layui.css"
	media="all">
<script src="layuiadmin/layui/layui.js" charset="utf-8"></script>
</head>
<body>
	<table class="table table-hover">
		<thead>
		<tr>
		  <!-- <th>
				<input type="button" data-toggle="modal" data-target="#select" class="emptys btn btn-info btn-xs" value="查询合同信息">
		  </th>	 -->
		  <th>
				<input type="button" data-toggle="modal" data-target="#select1" class="select1 btn btn-info btn-xs" value="查询合同到期信息">
		  </th>
		  <th>
				<input type="button" data-toggle="modal" data-target="#select2" class="select2 btn btn-info btn-xs" value="查询试用到期信息">
		  </th>
		  <!-- <th>
				<input type="button" data-toggle="modal" data-target="#select3" class="select3 btn btn-info btn-xs" value="未签劳动合同">
		  </th> -->
	    </tr>
			<tr class="success">
				<th>员工姓名</th>
				<th>签约公司</th>
				<th>合同类型</th>
				<th>合同状态</th>
				<th>合同签订日期</th>
				<th>合同到期日期</th>
				<th> </th>
				<th>操作</th>
				<th><input type="button" data-toggle="modal"
					data-target="#myModal" class="emptys btn btn-default" value="新建合同"></th>
			</tr>
		</thead>
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
	<!-- 模态框弹出录入内容 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="modalTitle1" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						&times;
						<!-- 关闭按钮 -->
					</button>
					<h4 class="modal-title" id="modalTitle1">合同管理</h4>
				</div>
				<div class="modal-body">
					<!--form提交表单  -->
					<form class="form-horizontal" id="form1"
						enctype="multipart/form-data">						  
							<div class="form-group">							
                                <div class="col-lg-4">
                                  <label>员工</label>
								  <input type="hidden" id="contractId" name="contractId" class="form-control" placeholder="请输入">
										<select class="staffinfo form-control" id="staffId" name="staffId">
        	                            </select>
								</div>							
                                <div class="col-lg-4">
                                  <label>合同类型</label>
                                <select class="contractType form-control" id="contractType" name="contractType">
                                  <option value="1">聘用合同</option>
                                  <option value="2">兼职合同</option>
                                  <option value="3">集体合同</option>
        	                    </select>
                                </div>
                            </div>                          
                            <div class="form-group">                           
								<div class="col-lg-4">
                                  <label>签约公司</label>
										<select class="contractEnterpries form-control" id="contractEnterpries" name="contractEnterpries">
        	                               <option value="OA">OA</option>
        	                            </select>
								</div>								
                            </div>                   
                           <div class="layui-inline">
							<label>试用生效日期</label>
							<div class="layui-input-inline">
								<input class="layui-input" id="t3" name="trailEffectiveTime"
									placeholder="试用生效日期" type="text">
						    </div>
						    <label>试用到期日期</label>
							<div class="layui-input-inline">
								<input class="layui-input" id="t4" name="trailOverTime"
									placeholder="试用到期日期" type="text">
						    </div>
                          </div>                     
                          <div class="layui-inline">
							<label>合同签订日期</label>
							<div class="layui-input-inline">
								<input class="layui-input" id="t1" name="makeContract"
									placeholder="合同签订日期" type="text">
						    </div>
						    <label>合同到期日期</label>
							<div class="layui-input-inline">
								<input class="layui-input" id="t2" name="contractEndTime"
									placeholder="合同解除日期" type="text">
						    </div>				    
                          </div>						
						<input type="button" id="insertorupdate" data-toggle='modal'
							data-target='#myModal' class="btn btn-primary" value="保存">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="up btn btn-default"
						data-dismiss="modal">关闭</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<!-- 模态框弹出模糊查询合同内容 -->
	<div class="modal fade" id="select" tabindex="-1" role="dialog"
		aria-labelledby="modalTitle1" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						&times;
						<!-- 关闭按钮 -->
					</button>
					<h4 class="modal-title" id="modalTitle1">合同信息查询</h4>
				</div>
				<div class="modal-body">
				</div>
				<div class="modal-footer">
					<button type="button" class="up btn btn-default"
						data-dismiss="modal">关闭</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<!-- 模态框弹出查询合同到期内容 -->
	<div class="modal fade" id="select1" tabindex="-1" role="dialog"
		aria-labelledby="modalTitle1" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						&times;
						<!-- 关闭按钮 -->
					</button>
					<h4 class="modal-title" id="modalTitle1">合同到期查询</h4>
				</div>
				<div class="modal-body">			
   <table class="table table-hover">
		<thead>
			<tr class="success">
				<th>员工姓名</th>
				<th>签约公司</th>
				<th>合同类型</th>
				<th>合同签订日期</th>
				<th>合同到期日期</th>
			</tr>
		</thead>
		<tbody id="select1tbody">
		</tbody>
	</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="up btn btn-default"
						data-dismiss="modal">关闭</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<!-- 模态框弹出查询试用到期内容 -->
	<div class="modal fade" id="select2" tabindex="-1" role="dialog"
		aria-labelledby="modalTitle1" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						&times;
						<!-- 关闭按钮 -->
					</button>
					<h4 class="modal-title" id="modalTitle1">试用到期查询</h4>
				</div>
				<div class="modal-body"> 
	<table class="table table-hover">
		<thead>
			<tr class="success">
				<th>员工姓名</th>
				<th>签约公司</th>
				<th>合同类型</th>
				<th>试用签订日期</th>
				<th>试用到期日期</th>
			</tr>
		</thead>
		<tbody id="select2tbody">
		</tbody>
	</table> 
				</div>
				<div class="modal-footer"> 
					<button type="button" class="up btn btn-default"
						data-dismiss="modal">关闭</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div> 
</body> 
</html> 
<script>
	/* 页面加载函数 */
	$(function() {
		selectcontract();
	}); 
	function selectcontract(startPage) { 
		$.ajax({
			url : "contract/selectcontract",
			type : "post",
			data : { "startPage" : startPage },
			dataType : "json",
			success : function(data) {
				$("#tbody").empty();
				var list=data.list;
				for (var i = 0; i < list.length; i++) {
					var obj = list[i]; 
					var contype=null;
					if(obj.CONTRACT_TYPE=='1'){
					   contype="聘用合同"
					}else if(obj.CONTRACT_TYPE=='2'){
					   contype="兼职合同"
					}else if(obj.CONTRACT_TYPE=='3'){
					   contype="集体合同"
					};
				   var ttt=null;
				   if(obj.STATUS=='1'){
				      ttt="生效中"
				   }else if(obj.STATUS=='2'){
				      ttt="试用到期"
				   }else if(obj.STATUS=='3'){
				      ttt="合同到期"
				   };
					var tr = "<tr>";
					tr += "<td style='display:none'>" + obj.CONTRACT_ID + "</td>"; //合同编号
					tr += "<td id='staffname'>" + obj.STAFF_NAME + "</td>"; //员工姓名
					tr += "<td>" + obj.CONTRACT_ENTERPRIES + "</td>"; //合同续签公司
					tr += "<td>" + contype + "</td>"; //合同类型
					tr += "<td>" + ttt + "</td>"; //合同状态
					tr += "<td>" + obj.MAKE_CONTRACT + "</td>"; //合同签订日期
					tr += "<td>" + obj.CONTRACT_END_TIME + "</td>"; //合同到期日期
					tr += "<td id='htdq' style='display:none'>" + obj.htdaoqi + "</td>"; //合同剩余时间
					tr += "<td id='sydq' style='display:none'>" + obj.sydaoqi + "</td>"; //试用剩余时间
					tr += "<td></td>";
					tr += "<td><input type='button' data-toggle='modal' data-target='#myModal' title=" + obj.CONTRACT_ID + "  class='selectByID btn btn-default' value='修改'></td>";
					tr += "<td><input type='button' id=" + obj.CONTRACT_ID + "  class='delete btn btn-default' value='删除'></td>";
					tr += "<td></td>";
					tr += "</tr>";
					$("#tbody").append(tr);
				}
				//当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					selectcontract(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if(last<curr){
					   $("#currPage").val(last);
					   selectcontract(last);
					}
					if(curr<=0){
					  $("#currPage").val(1);
					   selectcontract(1);
					}
					 selectcontract(curr);
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
  }
  /* 按钮的赋值 */
	$("#syy").click(function() {
		var currPage = parseInt($("#currPage").val());
		selectcontract(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		selectcontract(currPage + 1);
	})
	$("#shouye").click(function() {
		selectcontract(1);
	}) 
 /*     
       CONTRACT_ID contractId;//合同编号
       STAFF_ID  staffId;//员工外键
       CONTRACT_TYPE contractType;//合同类型
       CONTRACT_SPECIALIZATION contractSpecialization;//合同属性
       MAKE_CONTRACT makeContract;//合同签订日期
       TRAIL_EFFECTIVE_TIME trailEffectiveTime;//试用生效日期
       PROBATIONARY_PERIOD probationaryPeriod;//试用期限
       TRAIL_OVER_TIME trailOverTime;//试用到期日期
       PASS_OR_NOT passOrNot;//是否转正
       PROBATION_END_DATE probationEndDate;//合同转正日期
       PROBATION_EFFECTIVE_DATE probationEffectiveDate;//合同生效日期
       ACTIVE_PERIOD activePeriod;//合同期限
       CONTRACT_END_TIME contractEndTime;//合同到期日期
       REMARK remark;//备注
       REMOVE_OR_NOT removeOrNot;//合同是否解除
       STATUS status;//合同状态
       SIGN_TIMES signTimes;//签约次数
       ATTACHMENT_ID attachmentId;//附件编号
       ATTACHMENT_NAME attachmentName;//附件名称
       ADD_TIME addTime;//登记时间
       LAST_UPDATE_TIME lastUpdateTime;//最后修改时间
       REMIND_TIME remindTime;//合同到期提醒
       STAFF_USER_NAME staffUserName;//甲方
       REMIND_USER remindUser;//提醒人员
       REMIND_TYPE remindType;//提醒方式 
       HAS_REMINDED hasReminded;//是否已经提醒
       RENEW_TIME renewTime;//合同续签时间
       CONTRACT_ENTERPRIES contractEnterpries;//合同续签公司
       IS_TRIAL isTrial;//合同是否试用
       IS_RENEW isRenew;//合同是否续签
       CONTRACT_REMOVE_TIME contractRemoveTime;//合同解除日期
        */ 
	/* 添加之前清空form表单 */             
	$(document).on("click", ".emptys", function() {
		$("#contractId").val("");//合同编号
		$("#staffId").html("");//员工外键
		$("#contractType").val("");//合同类型
		$("#contractSpecialization").val("");//合同属性
		$("#contractEnterpries").val("");//合同签约公司
		$("#t1").val("");//合同签订日期
		$("#t2").val("");//合同到期日期
		$("#t3").val("");//试用生效日期
		$("#t4").val("");//试用到期日期
		$("#probationaryPeriod").val("");//试用期限
		$("#passOrNot").val("");//是否转正 
	    $.ajax({
       url:"contract/selectstaffinfo",
       type:"post",
       dataType:"json",
       success:function(data){
         for(var i=0;i<data.length;i++){
            var obj=data[i];
            $(".staff").append("<option value='"+obj.staffId+"'>"+obj.staffName+"</option>");
         } } });  }); 
	//添加与修改
	$(document).on("click", "#insertorupdate", function() { 
		var obj = $("#form1").serializeObject();
		$.ajax({
			url : "contract/insertorupdate",
			type : "post",
			async : true,
			contentType : "application/json;charset=utf-8",
			data : JSON.stringify(obj),
			dataType : "text",
			success : function(data) {
				selectcontract();
			} }); });
	/*修改前查询  */
	$(document).on("click", ".selectByID", function() { 
	 	var staffName=$(this).parent().parent().find("#staffname").html();
	    //合同到期时间
	 	var htdq=$(this).parent().parent().find("#htdq").html();
	 	//试用到期时间
	 	var sydq=$(this).parent().parent().find("#sydq").html();
	 	if(sydq<=0){
	 	  alert(staffName+"试用已过期"); 
	 	}
	 	if(htdq<=0){
	 	  alert(staffName+"合同已过期"); 
	 	}
		$("#staffId").html("");//职务表外键 职务名称 
		var id = this.title;
		$.ajax({
			url : "contract/selectByID",
			type : "post",
			data : { "contractId" : id },
			dataType : "json",
			success : function(data) {
						$("#contractId").val(data.contractId);//合同编号
		                $("#staffId").val(data.staffId);//员工外键
		                $("#contractType").val(data.contractType);//合同类型
	                  	$("#contractSpecialization").val(data.contractSpecialization);//合同属性
	                 	$("#contractEnterpries").val(data.contractEnterpries);//合同签约公司
	                 	$("#t1").val(data.makeContract);//合同签订日期
	                	$("#t2").val(data.contractEndTime);//合同到期日期
	                 	$("#t3").val(data.trailEffectiveTime);//试用生效日期
		                $("#t4").val(data.trailOverTime);//试用到期日期
			}
		});
	   $.ajax({
       url:"contract/selectstaffinfo",
       type:"post",
       dataType:"json",
       success:function(data){
         for(var i=0;i<data.length;i++){
            var obj=data[i];
            if(staffName==obj.staffName){
             $(".staffinfo").append("<option value='"+obj.staffId+"' selected='selected'>"+obj.staffName+"</option>");
            }else{
             $(".staffinfo").append("<option value='"+obj.staffId+"'>"+obj.staffName+"</option>");
            } } } });
             });

	/* 删除 */
	$(document).on("click", ".delete", function() {
		var id = this.id;
		$.ajax({
			url : "contract/delete",
			type : "post",
			data : {
				"contractId" : id
			},
			dataType : "text",
			success : function(data) {
				selectcontract();
			} }); });
	//查询合同到期
$(document).on("click", ".select1", function() {
		$.ajax({
			url : "contract/hetongdaoqi",
			type : "post",
			dataType : "json",
			success : function(data) {
				$("#select1tbody").empty();
				for (var i = 0; i < data.length; i++) {
					var obj = data[i];
					var contype=null;
					if(obj.CONTRACT_TYPE=='1'){
					   contype="聘用合同"
					}else if(obj.CONTRACT_TYPE=='2'){
					   contype="兼职合同"
					}else if(obj.CONTRACT_TYPE=='3'){
					   contype="集体合同"
					}
					var tr = "<tr>";
					tr += "<td style='display:none'>" + obj.CONTRACT_ID + "</td>"; //合同编号
					tr += "<td>" + obj.STAFF_NAME + "</td>"; //员工姓名
					tr += "<td>" + obj.CONTRACT_ENTERPRIES + "</td>"; //合同续签公司
					tr += "<td>" + contype + "</td>"; //合同类型
					tr += "<td>" + obj.MAKE_CONTRACT + "</td>"; //合同签订日期
					tr += "<td>" + obj.CONTRACT_END_TIME + "</td>"; //合同到期日期
					tr += "</tr>";
					$("#select1tbody").append(tr);
				}
				}})});
				
	//查询试用到期
$(document).on("click", ".select2", function() {
		$.ajax({
			url : "contract/shiyongdaoqi",
			type : "post",
			dataType : "json",
			success : function(data) {
				$("#select2tbody").empty();
				for (var i = 0; i < data.length; i++) {
					var obj = data[i];
					var contype=null;
					if(obj.CONTRACT_TYPE=='1'){
					   contype="聘用合同"
					}else if(obj.CONTRACT_TYPE=='2'){
					   contype="兼职合同"
					}else if(obj.CONTRACT_TYPE=='3'){
					   contype="集体合同"
					}
					var tr = "<tr>";
					tr += "<td style='display:none'>" + obj.CONTRACT_ID + "</td>"; //合同编号
					tr += "<td>" + obj.STAFF_NAME + "</td>"; //员工姓名
					tr += "<td>" + obj.CONTRACT_ENTERPRIES + "</td>"; //合同续签公司
					tr += "<td>" + contype + "</td>"; //合同类型
					tr += "<td>" + obj.TRAIL_EFFECTIVE_TIME + "</td>"; //试用签订日期
					tr += "<td>" + obj.TRAIL_OVER_TIME + "</td>"; //试用到期日期
					tr += "</tr>";
					$("#select2tbody").append(tr);
				}
				}})});
		
	
	
	
	
	layui.use('laydate', function() {
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t1',
			type : 'datetime'
		});
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t2',
			type : 'datetime'
		});
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t3',
			type : 'datetime'
		});
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t4',
			type : 'datetime'
		});
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t5',
			type : 'datetime'
		});
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t6',
			type : 'datetime'
		});
	});
	   
	       

 

</script>