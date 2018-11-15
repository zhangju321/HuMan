<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'work.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="${pageContext.request.contextPath}/js/layui/css/layui.css" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/jquery.form.js"></script>
     
  </head>
  
  <body>
    	<div  style="width:1300px">
	<table class="table table-condensed">
		<tr>
			<td>登记编号</td>
			<td>登记次序</td>
			<td>应出勤</td>
			<td>实出勤</td>
			<td>休</td>
			<td>旷工</td>
			<td>迟到</td>
			<td>早退</td>
			<td>上班时间1</td>
			<td>下班时间1</td>
			<td>上班时间2</td>
			<td>下班时间2</td>
		</tr>
		<tbody id="work_body"></tbody>
	</table>
</div>


 <form method="POST"  enctype="multipart/form-data" id="form1" action="work/upload.do">  
        <table>  
         <tr>  
            <td> <input id="upfile" type="file" class="layui-input" name="upfile"></td>  
         </tr>  
        <tr>  
        <td><input type="button" value="导入考勤记录" id="btn" class="layui-btn" onclick="shangchuan()"  name="btn"></td>  
         </tr>  
        </table>    
    </form>  

  </body>
</html>
<script>
	$(function(){ 
			queryAll();
		})

	  /* function shangchuan() {
		$.ajax({
			url : "work/ajaxUpload.do",
			type : "post",
			success : resutlMsg,

			error : errorMsg
		})
		function resutlMsg(msg) {
			alert(msg);

			$("#upfile").val("");

		}

		function errorMsg() {
			alert("导入excel出错！");

		}
 
	}  */
	/* 查询全部 */
	function queryAll(){
		$.ajax({
        	url : "work/queryAll",
        	type : "post",
        	async : true,
        	contentType: "application/json; charset=utf-8",
       	 	dataType : 'json', 
        	success : function(data) {
        		$("#work_body").html("");
        		 for(var i=0; i<data.length;i++){
        		    var tr="<tr>";
        		    tr+="<td>"+data[i].work_id+"</td>";
        		    tr+="<td>"+data[i].register_order+"</td>";
        		    tr+="<td>"+data[i].attendance_should+"</td>";
        		    tr+="<td>"+data[i].attendance_actual+"</td>";
        		    tr+="<td>"+data[i].rest+"</td>";
        		    tr+="<td>"+data[i].absenteeism+"</td>";
        		    tr+="<td>"+data[i].late+"</td>";
        		    tr+="<td>"+data[i].early_retreat+"</td>";
        		    tr+="<td>"+data[i].work_time1+"</td>";
        		    tr+="<td>"+data[i].work_offtime1+"</td>";
        		    tr+="<td>"+data[i].work_time2+"</td>";
        		    tr+="<td>"+data[i].work_offtime2+"</td>";
        		    tr+="</tr>";
        		    $("#work_body").append(tr); 
        	}}
 		}); 
	 }
	 
	 
	   //ajax 方式上传文件操作  

               $(document).ready(function(){  

                $('#btn').click(function(){  
                    if(checkData()){  
                        $('#form1').ajaxSubmit({    

                            url:'work/ajaxUpload.do',  
                            dataType: 'text',  

                            success: resutlMsg,  

                            error: errorMsg  

                        });   

                        function resutlMsg(msg){  

                            alert(msg);     

                            $("#upfile").val("");  

                        }  

                        function errorMsg(){   

                            alert("导入excel出错!");      

                        }  

                    }  

                });  

             });   

               

             //JS校验form表单信息  

             function checkData(){  

                var fileDir = $("#upfile").val();  

                var suffix = fileDir.substr(fileDir.lastIndexOf("."));  

                if("" == fileDir){  

                    alert("选择需要导入的Excel文件！");  

                    return false;  

                }  

                if(".xls" != suffix && ".xlsx" != suffix ){  

                    alert("选择Excel格式的文件导入！");  

                    return false;  

                }  

                return true;  

             }   
</script>
