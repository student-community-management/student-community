<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">    
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="icon" href="/student-community/ico/ico.png">
<title>学生社区</title>
<script src="/student-community/js/jquery.min.js"></script>
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<link href="/student-community/layui/css/modules/laydate/laydate.css" rel="stylesheet">
<script type="text/javascript" src="/student-community/layui/layui.js"></script>
<script type="text/javascript" src="/student-community/layui/area.js"></script>
<link rel="stylesheet" href="/student-community/layui/css/layui.css"  media="all"/>
<script type="text/javascript" src="/student-community/layui/lay/modules/layedit.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet" media="screen">
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
        				 alert(data);
        			 }
        		 })
        	     return false;
        	  })
        	});
        
    </script>
<body>
	<!-- Fixed navbar -->
	<%@include file="nav.jsp" %>
	<div class="container" style="margin-top:50px;">
		<h3>最新活动</h3>
		<form>
			<input name="activityContent" type="text" id="VContent">
		</form>
		<form id="addActivityForm" class="layui-form">
			<table width="100%" cellpadding="0" cellspacing="0" class = "myfont" border="1">
				<tr>
				<td style="width:25%" align="center">社团名称</td>
					<td>
						<select class="form-control" name="community.communityid" style="width:250px;">
    							<c:forEach items="${community}" var="community">
    									<option value="${community.communityid}" selected="selected">${community.communityName}</option>
    							</c:forEach>
    						</select>
					</td>
					</tr>
					<tr>
					<td style="width:25%" align="center">活动标题</td>
					<td>
						<input type ="text" id="title" name="title" class="form-control" style="width:250px;"/>
					</td>
					</tr>
					<tr>
					<td style="width:25%" align="center">活动类型</td>
					<td>
						<select class="form-control" name="activityType.activityTypeid" style="width:250px;">
    							<c:forEach items="${typelist}" var="typelist">
    									<option value="${typelist.activityTypeid}" selected="selected">${typelist.activityTypeName}</option>
    							</c:forEach>
    						</select>
					</td>
					</tr>
					<tr>
						<td style="width:25%" align="center">活动位置</td>
						<td>
							<input type ="text" id="activityLoc" name="activityLoc" class="form-control" style="width:250px;"/>
						</td>
					</tr>
						<tr>
   					<td style="width:25%" align="center">活动地址</td>
				   	<td> <div style="margin:50px auto;">
				            <div class="layui-form-item">
				                <label class="layui-form-label">选择地区</label>
				                <div class="layui-input-inline">
				                    <select name="province" lay-filter="province">
				                        <option value="">请选择省</option>
				                    </select>
				                </div>
				                <div class="layui-input-inline" style="display: none;">
				                    <select name="city" lay-filter="city">
				                        <option value="">请选择市</option>
				                    </select>
				                </div>
				                <div class="layui-input-inline" style="display: none;">
				                    <select name="area" lay-filter="area">
				                        <option value="">请选择县/区</option>
				                    </select>
				                </div>
				            </div>
				    </div>
   						<span style="display:none" id="activityLocN"><font color="red">活动地址不能为空</font></span>
   					</td>
   					</tr>
   					
   					<tr>
   					<td style="width:25%" align="center">活动报名日期</td>
   					<td>
   						<div class="layui-inline">
  							<input class="layui-input" placeholder="自定义日期格式" value="${activity.activityDate}" name="activityDate" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
						</div>
   						<span style="display:none" id="activityDateN"><font color="red">日期不能为空</font></span>
   					</td>
   					</tr>
   					<tr>
   					<td style="width:25%" align="center">活动截止日期</td>
   					<td>
   					<div class="layui-inline">
  							<input class="layui-input" id="closeingDateN"  value="${activity.closeingDate}" name="closeingDate" placeholder="自定义日期格式" value="${activity.activityDate}" name="activityDate" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
						</div>
   						<span style="display:none" id="closeingDateN"><font color="red">日期不能为空</font></span>
   					</td>
   			</tr>
   			<tr>
   					<td style="width:25%" align="center">活动开始日期</td>
   					<td>
   					<div class="layui-inline">
  							<input class="layui-input"  id="startDateN" value="${activity.startDate}" name="startDate" placeholder="自定义日期格式" value="${activity.activityDate}" name="activityDate" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
						</div>
   						<span style="display:none" id="startDateN"><font color="red">日期不能为空</font></span>
   					</td>
   			</tr>
   			<tr>
   					<td style="width:25%" align="center">活动截止日期</td>
   					<td>
   					<div class="layui-inline">
  							<input class="layui-input"  id="endDateN" value="${activity.endDate}" name="endDate" placeholder="自定义日期格式" value="${activity.activityDate}" name="activityDate" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
						</div>
   						<span style="display:none" id="endDateN"><font color="red">日期不能为空</font></span>
   					</td>
   			</tr>
   			<tr>
   			
   					<td style = "width:25%" align="center">活动内容</td>
   					<td>
   					 <div class="layui-form-item layui-form-text">
					    <label class="layui-form-label">编辑器</label>
					    <div class="layui-input-block">
					      <textarea class="layui-textarea layui-hide" lay-verify="content" id="LAY_demo_editor"></textarea>
					    </div>
					  </div>
   						<span style="display:none" id="activityContentN"><font color="red">活动内容不能为空</font></span>
   					</td>
   					</tr>
	   			<tr>
	   				<td colspan="3" align="center">
	   				 <div class="layui-form-item">
					    <div class="layui-input-block">
					      <button class="layui-btn" lay-submit lay-filter="demo1">立即提交</button>
					      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
					    </div>
					  </div>
					  </td>
   				</tr>
			</table>
			</form>
			</div>
</body>
</html>