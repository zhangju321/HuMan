<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'test.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-theme.min.css">
<script src="resource/jquery-1.11.3.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="resource/bootstrapValidator.min.css">
<script src="resource/bootstrapValidator.min.js"></script>
</head>

<body>

	<!--查询人员考勤情况  -->
	<table class="table table-hover">

		<thead>
			<tr class="warning">
				<th>部门名称</th>
				<th>职务名称</th>
				<th>人员名称</th>

				<th><input type="button" value="设置薪资" onclick="showCol()"
					class="btn btn-primary" data-toggle="modal" href="#modal-container-880261"
					> 全选/全不选<input type="checkbox"
					id="selectAll" /></th>
			</tr>
		</thead>
		<tbody id="tbody2">

		</tbody>
	</table>
	<ul class="pager">
		<li><button type="button" class="btn btn-default" id="shouye">首页</button></li>
		<li><button type="button" class="btn btn-default" id="syy">上一页</button></li>
		<li><button type="button" class="btn btn-default" id="xyy">下一页</button></li>
		<li><button type="button" class="btn btn-default" id="weiye">尾页</button></li>
		<li style="font-weight: lighter;">当前第<input type="text"
			id="currPage"
			style="height:35px;width:50px;border-radius:10px;text-align: center;" />页
		</li>
	</ul>







	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<a id="modal-880261" role="button" class="btn"></a>

				<div class="modal fade" id="modal-container-880261" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content" style="width:650px;">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
								<h4 class="modal-title" id="myModalLabel">添加薪资</h4>
							</div>
							<div class="modal-body">
								<form class="form-horizontal" role="form" id="form1">

									<!-- <div class="form-group">
				<label for="firstname" class="col-sm-2 control-label">部门名称</label>
				<div class="col-sm-3">
						<input type="text" class="form-control" id="bname"
							placeholder="部门名称" readonly="readonly">
						<input type="hidden"   name="departmentId"  id="bid">
					</div>
				</div> -->
									<!-- 
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">职务名称</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="zname"
							placeholder="职务编号" readonly="readonly">
							<input type="hidden" name="positionId" id="zid">
					</div>
				</div> -->



									<div class="form-group">
										<label for="firstname" class="col-sm-2 control-label">人员名称</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="rname"
												placeholder="人员编号"> <input type="hidden" id="rid">
										</div>
									</div>

									<div class="form-group">
										<label for="firstname" class="col-sm-2 control-label">薪资日期</label>
										<div class="col-sm-3">
											<input type="Date" class="form-control" id="tax_time"
												placeholder="薪资日期" name="tax_time">
										</div>
									</div>


									<div class="form-group">
										<label for="firstname" class="col-sm-2 control-label">职务薪水</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="salary"
												placeholder="职务薪水" name="tax_salary">
										</div>
										<input type="button" class="btn btn-primary" data-toggle="modal" value="计算保险总额"
											onclick="bx()">
									</div>


									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">应交保险总额</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="lastname"
												placeholder="应交保险总额" name="insurance" readonly="readonly">

										</div>

									</div>

									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">个人养老保险</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="lastname1"
												placeholder="个人养老保险" name="endowment_insurance"
												readonly="readonly">
										</div>
									</div>


									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">个人医疗保险</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="lastname2"
												placeholder="个人医疗保险" name="medical_insurance"
												readonly="readonly">
										</div>
									</div>


									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">个人生育保险</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="lastname3"
												placeholder="个人生育保险" name="birth_insurance"
												readonly="readonly">
										</div>
									</div>

									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">个人失业保险</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="lastname4"
												placeholder="个人失业保险" name="unemployment_insurance"
												readonly="readonly">
										</div>
									</div>

									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">个人工伤保险</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="lastname5"
												placeholder="个人工伤保险" name="injury_insurance"
												readonly="readonly">
										</div>
									</div>

									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">个人住房公积金</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="lastname6"
												placeholder="个人住房公积金" name="housing_fund"
												readonly="readonly">
										</div>
									</div>


									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">个人保险扣款总额</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="lastname_one"
												placeholder="个人保险扣款总额" name="B_withhold" readonly="readonly">
										</div>
									</div>


									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">单位保险扣款总额</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="lastname_men"
												placeholder="单位保险扣款总额" name="D_withhold" readonly="readonly">
										</div>
									</div>


									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">单位养老保险</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="lastname_d1"
												placeholder="单位养老保险" name="endowment_insurance_d"
												readonly="readonly">
										</div>
									</div>

									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">单位医疗保险</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="lastname_d2"
												placeholder="单位医疗保险" name="medical_insurance_d"
												readonly="readonly">
										</div>
									</div>



									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">单位生育保险</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="lastname_d3"
												placeholder="单位生育保险" name="birth_insurance_d"
												readonly="readonly">
										</div>
									</div>
									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">单位失业保险</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="lastname_d4"
												placeholder="单位失业保险" name="unemployment_insurance_d"
												readonly="readonly">
										</div>
									</div>


									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">单位工伤保险</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="lastname_d5"
												placeholder="单位工伤保险" name="injury_insurance_d"
												readonly="readonly">
										</div>
									</div>


									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">单位住房公积金</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="lastname_d6"
												placeholder="单位住房公积金" name="housing_fund_d"
												readonly="readonly">
										</div>
									</div>



									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">津贴</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="sub"
												placeholder="津贴" name="subvention">
										</div>
									</div>



									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">奖金</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="bonus"
												placeholder="奖金" name="Bonus">
										</div>
									</div>

									<!-- <div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">考勤扣款总额</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="kkze"
							placeholder="考勤扣款总额" name="K_withhold" readonly="readonly">
					</div>
					
					</div> -->


									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">应发工资</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="tax"
												placeholder="应发工资" name="after_tax_salary"
												readonly="readonly">
										</div>
										<input type="button" class="btn btn-primary" data-toggle="modal" value="计算应发工资"
											onclick="bx2()">
									</div>




									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-7">
											<input type="button" class="btn btn-primary" data-toggle="modal" value="添加"
												onclick="save()">

										</div>

									</div>
								</form>



							</div>

							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
							</div>

						</div>

					</div>

				</div>
			</div>
		</div>
	</div>








</body>
<script>


//表单验证
$(document).ready(function() {
 
    $('#form1').bootstrapValidator({
        message: 'This value is not valid',        //验证错误时的信息
        feedbackIcons: {        //验证时显示的图标
            valid: 'glyphicon glyphicon-ok',      //正确图标
            invalid: 'glyphicon glyphicon-remove',        //错误图标
            validating: 'glyphicon glyphicon-refresh'        //正在更新图标
        },
        fields: { 
              //要验证哪些字段
              //职务工资
            tax_salary: {
                    //与表单里input的name属性对应
                message: 'The username is not valid',       //验证错误时的信息，当然这里是可以使用中文的
                validators: {
                    notEmpty: {       //非空判断
                        message: '不能为空'        //验证错误时的信息，
                    },
                    regexp: {          //正则表达式判断 
                        regexp: /^[0-9]+.?[0-9]*$/,           //表达式内容
                        message: '必须为数字'           //验证错误时的信息，
                    }
                }
            },
            //津贴
           subvention: {
                    //与表单里input的name属性对应
                message: 'The username is not valid',       //验证错误时的信息，当然这里是可以使用中文的
                validators: {
                    notEmpty: {       //非空判断
                        message: '不能为空'        //验证错误时的信息，
                    },
                    regexp: {          //正则表达式判断 
                        regexp: /^[0-9]+.?[0-9]*$/,           //表达式内容
                        message: '必须为数字'           //验证错误时的信息，
                    }
                }
            },
            //奖金
              Bonus: {
                    //与表单里input的name属性对应
                message: 'The username is not valid',       //验证错误时的信息，当然这里是可以使用中文的
                validators: {
                    notEmpty: {       //非空判断
                        message: '不能为空'        //验证错误时的信息，
                    },
                    regexp: {          //正则表达式判断 
                        regexp: /^[0-9]+.?[0-9]*$/,           //表达式内容
                        message: '必须为数字'           //验证错误时的信息，
                    }
                }
            },
            
            
        }
     
    });
});

//全选
$(function() { $("#selectAll").click(function() { 
$(":checkbox[name='checkid']").prop("checked", this.checked)
});
}); // this指代的你当前选择的这个元素的JS对象 }); });

//计算应发工资
 function bx2() {
  		var yf1 = $("#salary").val(); //职务工资
  		var num1 = parseInt(yf1);
  		
  		var yf2 = $("#lastname_one").val(); //个人保险扣款
  		var num2 = parseInt(yf2);
  		
  		var yf3 = $("#sub").val(); //津贴
  		var num3 = parseInt(yf3);
  		
  		var yf4 = $("#bonus").val(); //奖金
  		var num4 = parseInt(yf4);
  	
  		/* var yf5 = $("#kkze").val(); //考勤扣款
  		var num5 = parseInt(yf5); */
  		
  
  		var yf = num1 - num2 + num3 + num4; //应发工资=职务工资-个人保险扣款+津贴+奖金-考勤扣款
  		$("#tax").val(yf);
  	}
  
  	//计算保险应交总额，个人保险扣款总额，单位保险扣款总额
  	function bx(){

    var zum=$("#salary").val();
    var zum1=zum*0.08;
 	$("#lastname").val(zum1);
     //个人保险
 	var one_insurance1=zum1*0.05;
 	var one_insurance2=zum1*0.1;
 	var one_insurance3=zum1*0.05;
 	var one_insurance4=zum1*0.03;
 	var one_insurance5=zum1*0.02;
 	var one_insurance6=zum1*0.05;
 	var one=one_insurance1+one_insurance2+one_insurance3+one_insurance4+one_insurance5+one_insurance6;
 	
 	$("#lastname1").val(one_insurance1);
 	$("#lastname2").val(one_insurance2);
 	$("#lastname3").val(one_insurance3);
 	$("#lastname4").val(one_insurance4);
 	$("#lastname5").val(one_insurance5);
 	$("#lastname6").val(one_insurance6);
 	$("#lastname_one").val(one);
 	//获取保险总额
 	var pp=$("#lastname").val();
 	//单位保险
 	var men=pp-one;
 	$("#lastname_men").val(men);
 	var pic1=$("#lastname_men").val();
 		//单位保险
 	var men_insurance1=pic1*0.12;
 	var men_insurance2=pic1*0.18;
 	var men_insurance3=pic1*0.14;
 	var men_insurance4=pic1*0.16;
 	var men_insurance5=pic1*0.22;
 	var men_insurance6=pic1*0.18;
 	
 	$("#lastname_d1").val(men_insurance1);
 	$("#lastname_d2").val(men_insurance2);
 	$("#lastname_d3").val(men_insurance3);
 	$("#lastname_d4").val(men_insurance4);
 	$("#lastname_d5").val(men_insurance5);
 	$("#lastname_d6").val(men_insurance6);
 	

 
 	
 }


				
				
				

 
 
//添加薪资基数
	function save() {
		$.ajax({
			url : "pay/psave",
			type : 'post',
			async : true,
			data :{
				array:$("#rid").val(),
				tax_time:$("#tax_time").val(),
				tax_salary:$("#salary").val(),
				insurance:$("#lastname").val(),
				endowment_insurance:$("#lastname1").val(),
				medical_insurance:$("#lastname2").val(),
				birth_insurance:$("#lastname3").val(),
				unemployment_insurance:$("#lastname4").val(),
				injury_insurance:$("#lastname5").val(),
				housing_fund:$("#lastname6").val(),
				B_withhold:$("#lastname_one").val(),
				D_withhold:$("#lastname_men").val(),
				endowment_insurance_d:$("#lastname_d1").val(),
				medical_insurance_d:$("#lastname_d2").val(),
				birth_insurance_d:$("#lastname_d3").val(),
				unemployment_insurance_d:$("#lastname_d4").val(),
				injury_insurance_d:$("#lastname_d5").val(),
				housing_fund_d:$("#lastname_d6").val(),
				subvention:$("#sub").val(),
				Bonus:$("#bonus").val(),
				after_tax_salary:$("#tax").val()    
				
			}
			,
			dataType : 'text',
			success : function(data) {
				if(data>0){
					alert("添加成功");
				}else{
					alert("重复添加");
				}
				location.reload();
			},
			error : function(data) {}
		})
		}

	

	//查询员工部门职务表和考勤统计表
  function findAll(startPage){
    $.ajax({
       url : "pay/queryAll2",
       type:"post",
       async : true,
       data : {
				"startPage" : startPage
			}, 
       dataType:"json",
      success : function(data) {
				/* alert(data); */
                var ary = data.list;
				$("#tbody2").html("");
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i];
					var tr = "<tr>";
					tr += "<td id='bmid' style='display:none'>" + obj.departmentId + "</td>";
					tr += "<td id='bmname'>" + obj.departmentName + "</td>";
					tr += "<td id='zwid' style='display:none'>" + obj.positionId + "</td>";
					tr += "<td id='zwname'>" + obj.positionName + "</td>";
					tr += "<td name='rsid' style='display:none'>" + obj.staff_id + "</td>";
					tr += "<td name='rsname'>" + obj.STAFF_NAME + "</td>";
			
					
					tr += "<td><input type='checkbox' name='checkid' value='" + obj.staff_id + "'></td>";
					tr += "</tr>";
					$("#tbody2").append(tr);
          }
          //当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					findAll(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if(last<curr){
					   $("#currPage").val(last);
					   findAll(last);
					}
					if(curr<=0){
					  $("#currPage").val(1);
					   findAll(1);
					}
					 findAll(curr);
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
  
  $(function() {
		findAll(1);
	}) 
	
  	/* 按钮的赋值 */
	$("#syy").click(function() {
		var currPage = parseInt($("#currPage").val());
		findAll(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		findAll(currPage + 1);
	})
	$("#shouye").click(function() {
		findAll(1);
	})
	  
	
	//获取人员编号
	 			
function showCol(){
	var check=$("input[name='checkid']:checked");//选中的复选框
	var ty=[];
	var ty1=[];
	check.each(function(){

		var row=$(this).parent("td").parent("tr");

		var id=row.find("[name='rsid']").html();//注意html()和val()

		var name=row.find("[name='rsname']").html();
		ty.push(name);
		ty1.push(id);
	});
	$("#rname").val(ty);
	$("#rid").val(ty1);
}
		
		
		
		
		
		
		


  </script>
</html>
