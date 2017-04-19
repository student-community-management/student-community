<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="cn">
<head>

<meta charset="utf-8">
<title>学生社区</title>
<link rel="icon" href="/student-community/ico/ico.png">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/layui/lay/modules/layedit.js"></script>
<script src="/student-community/layui/layui.js"></script>
<script src="/student-community/layui/area.js"></script>
<link href="/student-community/layui/css/modules/laydate/laydate.css" rel="stylesheet">
<link href="/student-community/layui/css/layui.css" rel="stylesheet">
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/mycssfront.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">

<script src="/student-community/js/bootstrap.min.js"></script>


</head>
<script>
        layui.use('laydate', function(){
        	  var laydate = layui.laydate;
        });
        layui.use(['form', 'layedit', 'laydate'], function(){
        	  var form = layui.form()
        	  ,layer = layui.layer
        	  ,layedit = layui.layedit
        	  ,laydate = layui.laydate;
        	  
        	  //创建一个编辑器
        	  var editIndex = layedit.build('LAY_demo_editor');
        	  //自定义验证规则
        	  form.verify({
        	    title: function(value){
        	      if(value.length < 5){
        	        return '标题至少得5个字符啊';
        	      }
        	    }
        	    ,content: function(value){
        	      layedit.sync(editIndex);
        	    }
        	  });
        	});
    </script>
<body>
	<%@ include file="nav.jsp" %>
	<div class="container">
		<ul class="nav nav-tabs nav-justified">
		<li role="presentation"><a
				href="/student-community/jsps/front/community.jsp">全新论坛</a></li>
			<li role="presentation" class="active"><a
				href="/student-community/jsps/front/discuss.jsp">发表话题</a></li>
		</ul>
		<div class="page-header">
			<h4>
				<img class="mlist" src="/student-community/ico/list.png" width="20">
				讨论话题
			</h4>
		</div>
		<form class="form-horizontal layui-form">
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">标题</label>
				<div class="layui-input-block">
					<input type="text" class="form-control" id="inputEmail3"
						placeholder="请输入标题">
				</div>
			</div>
			 <div class="layui-form-item layui-form-text">
					    <label class="layui-form-label">编辑器</label>
					    <div class="layui-input-block">
					      <textarea class="layui-textarea layui-hide" lay-verify="content" id="LAY_demo_editor">${activity.endDate}</textarea>
					    </div>
					  </div>
				<div class="btn-group btn-group-justified" role="group" aria-label="...">
				<div class="btn-group" role="group">
				<button type="submit" class="btn btn-default">提交</button>
				</div>
				</div>
		</form>
		
	</div>
</body>
</html>
