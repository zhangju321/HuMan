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
	<link rel="stylesheet" href="js/layui/css/layui.css"  media="all">
	<script src="resource/js/jquery.min.js"></script>
	<script src="resource/js/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resource/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="resource/jqueryExt.js"></script>
     <script type="text/javascript" src="resource/jquery.form.js"></script>
     
  <script src="js/layui/layui.js" charset="utf-8"></script>
     
  </head>
  
  <body>
  <div style="text-align: center">
  <input type="button"  data-toggle="modal" data-target="#myModal"  class="saveORUpdate btn btn-default" value="新建班次"></th>
 </div>
   <table border="1" class="table">   
     <thead>   
       <tr class="success">
         <th>排班类型</th>
         <th>第一次登记</th>
         <th>第二次登记</th>
         <th>第三次登记</th>
         <th>第四次登记</th>
         <th>第一次签到延后多少分钟允许登记</th>
         <th>第二次签到延后多少分钟允许登记</th>
         <th>第三次签到延后多少分钟允许登记</th>
         <th>第四次签到延后多少分钟允许登记</th>
         <th></th>
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
						<h4 class="modal-title" id="modalTitle1">新建班次</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" role="form" id="file1">
							<div class="form-group">
								<label for="roleName" class="col-sm-2 control-label">排班类型:</label>
								<div class="col-sm-4">
							   <input type="hidden" id="duty_id" name="duty_id" class="form-control" >
							    <!-- <input type="text" id="duty_name" name="duty_name" class="form-control"> -->
							    <select id="duty_name" name="duty_name" class="form-control">
							    <option value="1">休息</option>
							    <option value="2">正常班</option>
							    <option value="3">全日班</option>
							    </select>
								</div>
							</div>

							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">第一次登记:</label>
                             <div class="col-sm-4">
								<input  id="test4" name="duty_time1" class="form-control" placeholder="HH:mm:ss" type="text">
								</div> 
							</div> 
			
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">第二次登记:</label>
                               <div class="col-sm-4">
                              <input class="form-control" id="test8" name="duty_time2" placeholder="HH:mm:ss" type="text">
                              </div>
	   						</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">第三次登记:</label>
								<div class="col-sm-4">
                                <input class="form-control" id="test6" name="duty_time3" placeholder="HH:mm:ss" type="text">
                               </div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">第四次登记:</label>
								<div class="col-sm-4">
                                <input class="form-control" id="test7" name="duty_time4" placeholder="HH:mm:ss" type="text">
                               </div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">第一次签到延后多少分钟允许登记:</label>
								<div class="col-sm-4">
									<input type="text" id="duty_after1" onblur="checkNumber(this.value)" placeholder="请输入数字！" class="form-control" name="duty_after1" />
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">第二次签到延后多少分钟允许登记:</label>
								<div class="col-sm-4">
									 <input type="text" id="duty_after2" onblur="checkNumber(this.value)" placeholder="请输入数字！" class="form-control" name="duty_after2"> 
										
								</div>
							</div>
							        
							
							<div class="form-group">
								<label for="sellCount" class="col-sm-2 control-label">第三次签到延后多少分钟允许登记:</label>
								<div class="col-sm-4">
									 <input type="text" id="duty_after3" class="form-control" onblur="checkNumber(this.value)" placeholder="请输入数字！" name="duty_after3"> 
										
								</div>
							</div>
							
							<div class="form-group">
								<label for="goodsDate" class="col-sm-2 control-label">第四次签到延后多少分钟允许登记:</label>
								<div class="col-sm-4">
									 <input type="text"  class="form-control" id="duty_after4" onblur="checkNumber(this.value)" placeholder="请输入数字！" name="duty_after4"> 
										
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
    conFind(1);
  });
  function conFind(startPage){
    $.ajax({
       url:"attend_config/conFind",
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
            var dname=null;
            if(obj.duty_name=='1'){
            dname="休息"
            };
             if(obj.duty_name=='2'){
          dname="正常班"
          };
          if(obj.duty_name=='3'){
          dname="全日班"
          };
            var tr="<tr>";
                 tr+="<td>"+dname+"</td>";
                 tr+="<td>"+obj.duty_time1+"</td>";
                 tr+="<td>"+obj.duty_time2+"</td>";
                 tr+="<td>"+obj.duty_time3+"</td>";
                 tr+="<td>"+obj.duty_time4+"</td>";
                 tr+="<td>"+obj.duty_after1+"</td>";
                 tr+="<td>"+obj.duty_after2+"</td>";
                 tr+="<td>"+obj.duty_after3+"</td>";
                 tr+="<td>"+obj.duty_after4+"</td>";
                 tr+="<td><input type='button' data-toggle='modal' data-target='#myModal' id="+obj.duty_id+"  class='findById btn btn-default' value='修改'></td>";
                 tr+="<td><input type='button' id="+obj.duty_id+"  class='delete btn btn-default' value='删除'></td>";
                 tr+="</tr>";
                 $("#tbody").append(tr);
          }
          //当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					conFind(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if(last<curr){
					   $("#currPage").val(last);
					   conFind(last);
					}
					if(curr<=0){
					  $("#currPage").val(1);
					   conFind(1);
					}
					 conFind(curr);
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
		conFind(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		conFind(currPage + 1);
	})
	$("#shouye").click(function() {
		conFind(1);
	})

  $(document).on("click",".saveORUpdate",function(){
          $("#duty_id").val("");
          $("#duty_name").val("");
          $("#test4").val("");
          $("#test8").val("");
          $("#test6").val("");
          $("#test7").val(""); 
          $("#duty_after1").val("");
          $("#duty_after2").val("");
           $("#duty_after3").val("");
            $("#duty_after4").val("");
  });
   $(document).on("click","#saveOrUpdate",function(){
     var obj=$("#file1").serializeObject();//将表单数据转换json对象
     $.ajax({
       url:"attend_config/saveOrUpdate",
       type:"post",
       async:true,
       contentType:"application/json;charset=utf-8",//发送的内容类型utf-8
       data:JSON.stringify(obj),//将json对象转换成json字符串
       dataType:"text",
       success:function(data){
          conFind();
       }
     });
  });
  
   $(document).on("click",".findById",function(){
    var id=this.id;
    $.ajax({
       url:"attend_config/conFindById",
  
       data:{"duty_id":id},
       type:"post",
       dataType:"json", 
 
       success:function(data){
          $("#duty_id").val(data.duty_id);
          $("#duty_name").val(data.duty_name);
          $("#test4").val(data.duty_time1);
          $("#test8").val(data.duty_time2);
          $("#test6").val(data.duty_time3);
          $("#test7").val(data.duty_time4);
          $("#duty_after1").val(data.duty_after1);
          $("#duty_after2").val(data.duty_after2);
          $("#duty_after3").val(data.duty_after3);
          $("#duty_after4").val(data.duty_after4);
       }
    });
  });
  
   $(document).on("click",".delete",function(){
    
    var id=this.id;
    $.ajax({
       url:"attend_config/conDelete",
       data:{"duty_id":id},
       type:"post",
       dataType:"text",
       success:function(data){
         alert(data);
         conFind();
       }
    });
  });
	
</script>
<script>
layui.use('laydate', function(){
  var laydate = layui.laydate;
  //时间选择器
  laydate.render({
    elem: '#test4',
    type: 'time'
  }); 
   laydate.render({
    elem: '#test5',
    type: 'time'
  });
   laydate.render({
    elem: '#test6',
    type: 'time'
  });
   laydate.render({
    elem: '#test7',
    type: 'time'
  });
  
   //日期时间选择器
  laydate.render({
    elem: '#test8'
    ,type: 'time'
  });
  });
  </script>
<script language=javascript>
//验证只能为数字
function checkNumber(obj){
var reg = /^[0-9]+$/;
if(obj!=""&&!reg.test(obj)){
alert('只能输入数字！');
return false;
}
}
</script>