<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="icon" href="/student-community/ico/ico.png">
<title>学生社区</title>
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/layui/lay/modules/layedit.js"></script>
<script src="/student-community/layui/layui.js" charset="utf-8"></script>
<script src="/student-community/layui/area.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
<link href="/student-community/layui/css/modules/laydate/laydate.css" rel="stylesheet">
<link href="/student-community/layui/css/layui.css"  rel="stylesheet" media="all"/>
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet" media="screen">
</head>
<style>
	#layui-input{
		height:50px;
		width:800px;
	}
</style>
<script type="text/javascript">
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
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
        	  
        	  //监听指定开关
        	  form.on('switch(switchTest)', function(data){
        	    layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
        	      offset: '6px'
        	    });
        	    layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        	  });
        	  
        	  //监听提交
        	  form.on('submit(demo1)', function(data){
        		 $("#dynamicsContent").val(layedit.getContent(editIndex));
        		 $.ajax({
        			 url:"${pageContext.request.contextPath}/addActivity.a",
        			 type:"post",
        			 data: $("#addActivityForm").serialize(),
      	           	success:function(data){
        				 if(data=="ok")
        					 {
        				 		window.location.href="${pageContext.request.contextPath}/getActivity.a";
        					 }
        			 }
        		 })
        	     return false;
        	  })
        	});
        
    </script>
</script>
<body>
	<!-- navbar -->
	<%@include file="nav.jsp" %>
	<div class="container">
		<h3>最新活动</h3>
		<div class="layui-form">
		<form id="dynamicsForm" class="layui-form">
		<input type="text" name="dynamicsContent" id="dynamicsContent" value="${dynamicsContent }"/>
			<div class="layui-form-item layui-form-text">
					    <label class="layui-form-label">编辑器</label>
					    <div class="layui-input-block" id="layui-input">
					      <textarea class="layui-textarea layui-hide" lay-verify="content" id="LAY_demo_editor">${activity.endDate}</textarea>
					    </div>
					  </div>
					  
			</form>
			<form>
			
			</form>
	</div>
	</div>
</body>
</html>
