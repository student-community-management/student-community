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
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
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
        
        layui.use('laydate', function(){
        	  var laydate = layui.laydate;
        	  
        	  var start = {
        	    min: laydate.now()
        	    ,max: '2099-06-16 23:59:59'
        	    ,istoday: false
        	    ,choose: function(datas){
        	      end.min = datas; //开始日选好后，重置结束日的最小日期
        	      end.start = datas //将结束日的初始值设定为开始日
        	    }
        	  };
        	  
        	  var end = {
        	    min: laydate.now()
        	    ,max: '2099-06-16 23:59:59'
        	    ,istoday: false
        	    ,choose: function(datas){
        	      start.max = datas; //结束日选好后，重置开始日的最大日期
        	    }
        	  };
        	  
        	  document.getElementById('LAY_demorange_s').onclick = function(){
        	    start.elem = this;
        	    laydate(start);
        	  }
        	  document.getElementById('LAY_demorange_e').onclick = function(){
        	    end.elem = this
        	    laydate(end);
        	  }
        	  
        	});
    </script>
<body>
	<%@ include file="nav.jsp" %>
	<div class="container">
		<ul class="nav nav-tabs nav-justified">
			<li role="presentation"><a
				href="/student-community/jsps/front/activity.jsp">活动社区</a></li>
			<li role="presentation" class="active"><a
				href="/student-community/jsps/front/initiate.jsp">发起活动</a></li>
			<li role="presentation"><a
				href="#">活动相册</a></li>
		</ul>
			<div class="page-header">
				<h4>
					<img class="mlist" src="/student-community/ico/list.png" width="20">
					活动发布
				</h4>
			</div>
			<form class="form-horizontal layui-form">
			<div class="layui-form-item ma-text">
					<label class="ma-label">活动类型</label>
					<div class="ma-layui-input-block">
		  <div class="ma-toggle">
			    <select class="form-control"> 
			      <option>同乡会</option> 
			      <option>生日会</option> 
			      <option>其他活动</option> 
			      </select>
	  </div>
		</div>
				</div>
				<div class="layui-form-item ma-text">
					<label class="ma-label">活动标题</label>
					<div class="layui-input-block">
		  <input type="text" class="ma-form-control" id="inputEmail3"
							placeholder="请输入标题">
					</div>
				</div>
				<div class="layui-form-pane" style="margin-top: 15px;">
	  <div class="layui-form-item">
	    <label class="layui-form-label">报名日期 </label>
	    <div class="layui-input-inline">
	      <input class="layui-input" placeholder="开始日" id="LAY_demorange_s">
	    </div>
	    <label class="layui-form-label">活动日期 </label>
	    <div class="layui-input-inline">
	      <input class="layui-input" placeholder="开始日" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
	    </div>
	     <div class="layui-inline">
	  <input class="layui-input" placeholder="截止日" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
	</div>
	  </div>
	</div>      
				
				 <div class="layui-form-item layui-form-text">
						    <label class="ma-label">活动内容</label>
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
