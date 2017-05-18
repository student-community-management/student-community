<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>社团管理-活动成员</title>
<link href="/student-community/layui/css/layui.css" rel="stylesheet">
<link href="/student-community/ma/css/bootstrap.css" rel="stylesheet">
<link href="/student-community/ma/macss/style.css" rel="stylesheet">
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
<script src="/student-community/layui/layui.js"></script>

<script type="text/javascript">
		//全选事件
		$(function() {
          	
           $("#checkAll").click(function() {
        	   var ch = $("#checkAll").prop('checked');
        	   if(ch == true){
                $('input[name="chkPerson"]').prop("checked",true); 
        	   } else {
                $('input[name="chkPerson"]').prop("checked",false); 
        	   }
            });
        });
		$(function(){
			  $('input[name="chkPerson"]').change(function(){
			  checkOrRemoveCheckAll();
			  });
			});

			function checkOrRemoveCheckAll(){
			if($('input[name="chkPerson"]:checked').length == $('input[name="chkPerson"]').length)
			    {
			        $('#checkAll').prop("checked", "checked");
			    }
			    else
			    {
			        $('#checkAll').removeAttr("checked");
			    }
			}
			// 删除设备点击事件
			$(function(){  
   		 $("#btnDel").click(function() {
        	$("input[name='chkPerson']:checked").each(function() { // 遍历选中的checkbox
            $(this).parents("tr").remove();  // 获取checkbox所在行的顺序
        });
    });
});
			
</script>
</head>
<body>
	<!--sidebar end-->
	<section id="container">
		<%@ include file="personal-headonly.jsp" %>
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="page-header">
					<div class="row mt">
						<ul class="nav nav-tabs nav-justified">
							<li role="presentation" class="active"><a
								href="/student-community/jsps/front/personal-community-info.jsp">社团成员</a></li>
							<li role="presentation"><a
								href="/student-community/jsps/front/personal-community-activity.jsp">社团活动</a></li>
							<li role="presentation"><a
								href="/student-community/jsps/front/personal-community-announce.jsp">发起活动</a></li>
						</ul>
					</div>
					<a class="btn btn-danger" href="#" >查看申请成员</a>
						<a class="btn btn-danger" href="#" id="btnDel">删除成员</a>		
					<table class="layui-table" lay-skin="row" id="tablePxe">
						<thead>
							<tr>
								<th width="10%"><input type="checkbox" id="checkAll" ></th>
								<th width="20%">昵称</th>
								<th width="20%">性别</th>
								<th width="50%">签名</th>
								
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox" name="chkPerson" ></td>
								<td>黄蓉</td>
								<td>女</td>
								<td>人生就像是一场修行</td>
								
							</tr>
							<tr>
								<td><input type="checkbox"  name="chkPerson" ></td>
								<td>郭靖</td>
								<td>男</td>
								<td>人生就像是一场修行</td>
								
							</tr>
					</table>
				</div>
			</section>
		</section>
		<!-- /MAIN CONTENT -->
	</section>
</body>

</html>
