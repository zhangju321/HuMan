<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
	<link rel="stylesheet" type="text/css" href="resource/js/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="resource/js/bootstrap/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="resource/js/bootstrap/css/multiple-select.css" type="text/css"/>
    <link rel="stylesheet" href="resource/js/bootstrap/js/multiple-select.js" type="text/css"/>
    <link rel="stylesheet" href="js/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="bootstrap-select/dist/css/bootstrap-select.min.css"> 
	<script src="resource/js/jquery.min.js"></script>
	<script src="resource/js/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resource/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="resource/jqueryExt.js"></script>
    <script type="text/javascript" src="resource/jquery.form.js"></script>
    <script src="js/layui/layui.js" charset="utf-8"></script>
    <script src="bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-ar_AR.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-bg_BG.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-cs_CZ.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-da_DK.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-de_DE.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-en_US.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-es_CL.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-es_ES.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-et_EE.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-eu.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-fa_IR.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-fi_FI.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-fr_FR.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-hr_HR.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-hu_HU.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-id_ID.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-it_IT.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-ja_JP.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-kh_KM.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-ko_KR.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-lt_LT.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-nb_NO.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-nl_NL.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-pl_PL.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-pt_BR.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-pt_PT.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-ro_RO.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-sk_SK.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-sl_SI.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-sv_SE.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-tr_TR.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-ua_UA.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-vi_VN.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-zh_CN.min.js"></script>
    <script src="bootstrap-select/dist/js/i18n/defaults-zh_TW.min.js"></script>

  </head>
  
  <body>
  <div style="text-align: center">
  <input type="button"  data-toggle="modal" data-target="#myModal"  class="saveORUpdate btn btn-default" value="增加免签节假日"></th>
 </div>
   <table border="1" class="table">   
     <thead>   
       <tr class="success">
         <th>免签节假日</th>
         <th>开始日期</th>
         <th>结束日期</th>
         <th>部门范围</th>
         <th></th>
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
						<h4 class="modal-title" id="modalTitle1">新建免签节假日</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" role="form" id="file1">
							<div class="form-group">
								<label for="roleName" class="col-sm-2 control-label">免签节假日:</label>
								<div class="col-sm-4">
							   <input type="hidden" id="sfId" name="sfId" class="form-control" >
							    <input type="text" id="sfName" name="sfName" class="form-control">
								</div>
							</div>

							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">开始日期:</label>
								 <div class="col-sm-4">
								<input type="date" id="sfTime" name="sfTime" class="form-control">
								</div> 
	   						</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">结束日期:</label>
								 <div class="col-sm-4">
								<input type="date" id="sfTimeEnd" name="sfTimeEnd" class="form-control">
								</div> 
								
                               
	   						</div>
	   						
	   						<div class="form-group">
								<label for="description" class="col-sm-2 control-label">部门范围:</label>
								 <div class="col-sm-4">
								 <select id="departFind" name="departmentId" class="form-control">
								</select>  
								<!--  <select id="departFind" name="departmentId" class="selectpicker show-tick form-control" multiple="multiple">
                                <option value="1">财务部</option> 
                                <option value="2">行政后勤部</option> 
                                <option value="3">人事部</option> 
                                <option value="4">企划部</option> 
                                <option value="5">销售部</option>
                           </select>  -->
								</div> 
								
                               
	   						</div>
						
							<input type="button"  id="saveOrUpdate" data-toggle='modal' data-target='#myModal' class="btn btn-primary" value="保存">
						</form>

					</div>
					<div class="modal-footer">
						
						<button type="button"  class="up btn btn-default" data-dismiss="modal">关闭
						</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
   
  </body>
</html>
<script>
  $(function(){
   sfFind(1);
  });
  function sfFind(startPage){
    $.ajax({
       url:"sf/sfFind",
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
                 tr+="<td>"+obj.sfName+"</td>";
                 tr+="<td>"+obj.sfTime+"</td>";
                 tr+="<td>"+obj.sfTimeEnd+"</td>";
                 tr+="<td id='depart'>"+obj.departmentName+"</td>";
                 tr+="<td><input type='button' data-toggle='modal' data-target='#myModal' id="+obj.sfId+"  class='findById btn btn-default' value='修改'></td>";
                 tr+="<td><input type='button' id="+obj.sfId+"  class='delete btn btn-default' value='删除'></td>";
                 tr+="</tr>";
                 $("#tbody").append(tr);
               
          }
          //当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					sfFind(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if(last<curr){
					   $("#currPage").val(last);
					   sfFind(last);
					}
					if(curr<=0){
					  $("#currPage").val(1);
					   sfFind(1);
					}
					 sfFind(curr);
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
		sfFind(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		sfFind(currPage + 1);
	})
	$("#shouye").click(function() {
		sfFind(1);
	})

  $(document).on("click",".saveORUpdate",function(){
          $("#sfId").val("");
          $("#sfName").val("");
          $("#sfTime").val("");
          $("#sfTimeEnd").val("");
          $("#departmentId").val("");
       
  });
   $(document).on("click","#saveOrUpdate",function(){
     var obj=$("#file1").serializeObject();//将表单数据转换json对象
     $.ajax({
       url:"sf/saveOrUpdate",
       type:"post",
       async:true,
       contentType:"application/json;charset=utf-8",//发送的内容类型utf-8
       data:JSON.stringify(obj),//将json对象转换成json字符串
       dataType:"text",
       success:function(data){
          sfFind();
       }
     });
  });
  
   $(document).on("click",".findById",function(){
    var id=this.id;
    var departName=$(this).parent().parent().find("#depart").html();
     $("#departFind").html("");
    $.ajax({
       url:"sf/sfFindById",
       data:{"sfId":id},
       type:"post",
       dataType:"json", 
       success:function(data){
          $("#sfId").val(data.sfId);
          $("#sfName").val(data.sfName);
          $("#sfTime").val(data.sfTime);
          $("#sfTimeEnd").val(data.sfTimeEnd);
           $("#departmentId").val(data.departmentName);
       }
    });
        $.ajax({
				        url:"sf/departFind",
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        	for(var i=0;i<data.length;i++){
				        	if(departName==data[i].departmentName){
				        	$("#departFind").append("<option value='"+data[i].departmentId+"' selected='selected'>"+data[i].departmentName+"</option>");
				        	}else{
				        	$("#departFind").append("<option value='"+data[i].departmentId+"'>"+data[i].departmentName+"</option>");
				        	}
				        }
				        }
			      }); 
  });
  
  
   $(document).on("click",".delete",function(){
    var id=this.id;
    $.ajax({
       url:"sf/sfDelete",
       data:{"sfId":id},
       type:"post",
       dataType:"text",
       success:function(data){
         alert(data);
         sfFind();
       }
    });
  });
  
     function departFind(){
				 $.ajax({
				        url:"sf/departFind",
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        	for(var i=0;i<data.length;i++){
				        		$("#departFind").append("<option value='"+data[i].departmentId+"'>"+data[i].departmentName+"</option>");
				        	}
				        }
			      });
		
	}  
	
</script>
<script>
layui.use(['laypage', 'layer'], function(){
  var laypage = layui.laypage
  ,layer = layui.layer; 
  //自定义样式
  laypage.render({
    elem: 'demo2'
    ,count: 10
    ,theme: '#1E9FFF'
  });
  
 });
</script>

<!-- <script>
$(window).on('load', function () {
var str='3,4,5,6';
    var arr=str.split(',');
    $('#departFind').selectpicker('val', arr);

    $('#departFind').selectpicker({
        'selectedText': 'cat'
    });
    
});
$('.selectpicker').selectpicker('val', 'Mustard');
</script>
 -->


