<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
//初始数据
var areaData = Area;
var $form;
var form;
var $;
layui.use(['jquery', 'form'], function() {
    $ = layui.jquery;
    form = layui.form();
    $form = $('form');
    loadProvince();
});
 //加载省数据
function loadProvince() {
    var proHtml = '';
    for (var i = 0; i < areaData.length; i++) {
        proHtml += '<option value="' + areaData[i].provinceCode + '_' + areaData[i].mallCityList.length + '_' + i + '">' + areaData[i].provinceName + '</option>';
    }
    //初始化省数据
    $form.find('select[name=province]').append(proHtml);
    form.render();
    
    form.on('select(province)', function(data) {
        $form.find('select[name=area]').html('<option value="">请选择县/区</option>').parent().hide();
        var value = data.value;
        var d = value.split('_');
        var code = d[0];
        var count = d[1];
        var index = d[2];
        if (count > 0) {
            loadCity(areaData[index].mallCityList);
            
        } else {
            $form.find('select[name=city]').parent().hide();
        }
    });
}
 //加载市数据
function loadCity(citys) {
	
    var cityHtml = '';
    for (var i = 0; i < citys.length; i++) {
        cityHtml += '<option value="' + citys[i].cityCode + '_' + citys[i].mallAreaList.length + '_' + i + '">' + citys[i].cityName + '</option>';
    }
    $form.find('select[name=city]').html(cityHtml).parent().show();
    form.render();
    form.on('select(city)', function(data) {
        var value = data.value;
        var d = value.split('_');
        var code = d[0];
        var count = d[1];
        var index = d[2];
        if (count > 0) {
            loadArea(citys[index].mallAreaList);
        } else {
            $form.find('select[name=area]').parent().hide();
        }
    });
}
 //加载县/区数据
function loadArea(areas) {
    var areaHtml = '';
    for (var i = 0; i < areas.length; i++) {
        areaHtml += '<option value="' + areas[i].areaCode + '">' + areas[i].areaName + '</option>';
    }
    $form.find('select[name=area]').html(areaHtml).parent().show();
    form.render();
    form.on('select(area)', function(data) {
    });
}

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
		 alert(layedit.getContent(editIndex));
		 $("#VContent").val(layedit.getContent(editIndex));
		 $.ajax({
			 url:"${pageContext.request.contextPath}/addActivity.a",
			 type:"post",
			 data: $("#addActivityForm").serialize(),
	           	success:function(data){
	           		if(data=="ok")
					 {
				 window.location.href="${pageContext.request.contextPath}/getActivity.a";
					 }else{
				window.location.href="${pageContext.request.contextPath}/addactivitypre.a";	 
					 }
			 }
		 })
	     return false;
	  })
	});
    </script>
<body>
	<%@ include file="nav.jsp" %>
	<div class="container">
		<ul class="nav nav-tabs nav-justified">
			<li role="presentation"><a
				href="${pageContext.request.contextPath}/getActivity.a">活动社区</a></li>
			<li role="presentation" class="active"><a
				href="${pageContext.request.contextPath}/addactivitypre.a">发起活动</a></li>
			<li role="presentation"><a
				href="#">活动相册</a></li>
		</ul>
		<div class="page-header">
			<h4>
				<img class="mlist" src="/student-community/ico/list.png" width="20">
				活动发布
			</h4>
		</div>
		
		<form class="form-horizontal layui-form" id="addActivityForm">
		<input name="activityContent" type="hidden" id="VContent">
		<div class="layui-form-item ma-text">
				<label class="ma-label">活动类型</label>
				<div class="ma-layui-input-block">
	  <div class="ma-toggle">
		   <select class="form-control" name="activityTypeid" style="width:250px;">
    									<option value="1">同乡会</option>
    									<option value="2">生日会</option>
    									<option value="3">考试</option>
    									<option value="4">其他</option>
    		</select>
  </div>
  </div>
  </div>
					  <div class="layui-form-item ma-text">
									<label class="ma-label">活动类型</label>
					<div class="ma-layui-input-block">
						  <div class="ma-toggle">
					  	<select class="form-control" name="community.communityid" style="width:250px;">
    							<c:forEach items="${community}" var="community">
    									<option value="${community.communityid}" selected="selected">${community.communityName}</option>
    							</c:forEach>
    						</select>
						</div>
						</div>
			</div>
			<div class="layui-form-item ma-text">
				<label class="ma-label">活动标题</label>
				<div class="layui-input-block">
	  			<input type ="text" value="${activity.activityTitle}" name="activityTitle" class="form-control" style="width:250px;"/>
				</div>
			</div>
			<div class="layui-form-item ma-text">
				<label class="ma-label">活动位置</label>
				<div class="layui-input-block">
	  			<input type ="text" id="activityLoc" name="activityLoc" value="${activity.activityLoc}" class="form-control" style="width:250px;"/>
				</div>
			</div>
							
			<div class="layui-form-pane" style="margin-top: 15px;">
			  <div class="layui-form-item">
			    <label class="layui-form-label">报名截止</label>
			    <div class="layui-input-inline">
			      <input class="layui-input" placeholder="截止日"  value="${activity.closingDate}" name="closingDate"   onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			    </div>
			    <label class="layui-form-label">活动日期 </label>
			    <div class="layui-input-inline">
			      <input class="layui-input" placeholder="开始日" value="${activity.startDate}" name="startDate" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			    </div>
			     <div class="layui-inline">
			  <input class="layui-input" placeholder="截止日" value="${activity.endDate}" name="endDate" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
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
				 <div class="layui-form-item">
					    <div class="layui-input-block" style="text-align:center;">
					      <button class="layui-btn" lay-submit lay-filter="demo1">立即提交</button>
					      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
					    </div>
					  </div>
				</div>
		</form>
	</div>
</body>
</html>
