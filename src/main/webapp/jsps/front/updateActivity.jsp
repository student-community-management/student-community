<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>修改活动信息</title>
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
<script type="text/javascript">
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
	  //监听提交
	  form.on('submit(demo1)', function(data){
		 $("#activityContent").val(layedit.getContent(editIndex)); 
		 $.ajax({
			 url:"${pageContext.request.contextPath}/updateActivity.a",
			 type:"post",
			 data: $("#updateActivityForm").serialize(),
           		success:function(data){
				 if(data=="ok")
					 {
				 		window.location.href="${pageContext.request.contextPath}/getActivity.a";
					 }else{
						 window.location.href="${pageContext.request.contextPath}/updatePreActivity.a";
					 }
			 }
		 })
		 return false;
	  })
	});

</script>
<body>

	<form id="updateActivityForm" class="layui-form"> 
	<table style="margin-top:10xpx;" width="100%" cellpadding="0" cellspacing="0" class = "myfont" border="0">
	
			<tr>	
   					<td style ="width:35%" align="center">社团名称
   					<input type ="hidden" value="${activity.activityid}" name="activityid"/>
					<input type="hidden"  name="activityContent" id="activityContent"/>
   					</td>
   					<td>
   					<select class="form-control" name="community.communityid" style="width:150px;">
    							<c:forEach items="${community}" var="community">
    								<c:if test="${community.communityid == activity.community.communityid}">
    									<option value="${community.communityid}" selected="selected">${community.communityName}</option>
    								</c:if>
    								<c:if test="${community.communityid != activity.community.communityid}">
    									<option value="${community.communityid}" selected="selected">${community.communityName}</option>
    								</c:if>
    							</c:forEach>
    						</select>
   					</td>
   					</tr>
   					<tr>
   					<td style="width:35%" align="center">活动标题</td>
   					<td><input type ="text" id="activityTitle" required  lay-verify="required" value="${activity.activityTitle}" name="activityTitle" class="layui-input" style="width:250px;"/>
   					</td>
   					</tr>
   					<tr>
    					<td align="center">活动类型${activity.activityTypeid}</td>
    					<td>
    						<select class="form-control" name="activityTypeid" style="width:250px;">
    						<c:if test="${activity.activityTypeid==1}">
    							<option value="1" selected="selected">同乡会</option>
    							<option value="2">生日会</option>
    							<option value="3">考试</option>
    							<option value="4">其他</option>
    						</c:if>
    						<c:if test="${activity.activityTypeid==2}">
    							<option value="1">同乡会</option>
    							<option value="2" selected="selected">生日会</option>
    							<option value="3">考试</option>
    							<option value="4">其他</option>
    						</c:if>
    						<c:if test="${activity.activityTypeid==3}">
    							<option value="1">同乡会</option>
    							<option value="2">生日会</option>
    							<option value="3" selected="selected">考试</option>
    							<option value="4">其他</option>
    						</c:if>
    						<c:if test="${activity.activityTypeid==4}">
    							<option value="1">同乡会</option>
    							<option value="2">生日会</option>
    							<option value="3">考试</option>
    							<option value="4" selected="selected">其他</option>
    						</c:if>
    						</select>
    					</td>
    					</tr>
    					<tr>
   					<td style="width:35%" align="center">活动地址</td>
   					<td><input type ="text" id="activityLocN" value="${activity.activityLoc}" name="activityLoc" class="form-control" style="width:250px;"/>
   						<span style="display:none" id="activityLocN"><font color="red">活动地址不能为空</font></span>
   					</td>
   					</tr>
   					
   					<tr>
   					<tr>
   					<td style="width:25%" align="center">活动报名日期</td>
   					<td>
   						<div class="layui-inline">
  							<input class="layui-input" placeholder="自定义日期格式" value='<f:formatDate value="${activity.activityDate}" type="both"/>' name="activityDate" id="date"  onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
						</div>
   						<span style="display:none" id="activityDateN"><font color="red">日期不能为空</font></span>
   					</td>
   					</tr>
   					<tr>
   					<td style="width:25%" align="center">活动截止日期</td> 
   					<td>
   					<div class="layui-inline">
  							<input class="layui-input" id="closingDateN"  value='<f:formatDate  value="${activity.closingDate}" type="both" />' name="closingDate" id="date"  placeholder="自定义日期格式" value="${activity.activityDate}" name="activityDate" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
						</div>
   						<span style="display:none" id="closingDateN"><font color="red">日期不能为空</font></span>
   					</td>
   			</tr>
   			<tr>
   					<td style="width:25%" align="center">活动开始日期</td>
   					<td>
   					<div class="layui-inline">
  							<input class="layui-input"  id="startDateN"   placeholder="自定义日期格式" name="startDate"  value='<f:formatDate value="${activity.startDate}" type="both" />' name="startDate"  id="date"  onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
						</div>
   						<span style="display:none" id="startDateN"><font color="red">日期不能为空</font></span>
   					</td>
   			</tr>
   			<tr>
   					<td style="width:25%" align="center">活动截止日期</td>
   					<td>
   					<div class="layui-inline">
  							<input class="layui-input"  id="endDateN"  name="endDate" placeholder="自定义日期格式" value='<f:formatDate value="${activity.activityDate}" type="both" />' name="activityDate" id="date"  onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
						</div>
   						<span style="display:none" id="endDateN"><font color="red">日期不能为空</font></span>
   					</td>
   			</tr>
   			<tr>
   					<td style="width:35%" align="center">活动内容</td>
   					<td>
   					 <div style="margin-left: -150px;" class="layui-form-item layui-form-text">
					    <label class="layui-form-label">编辑器</label>
					    <div class="layui-input-block">
					      <textarea class="layui-textarea layui-hide" lay-verify="content" id="LAY_demo_editor">${activity.activityContent}</textarea>
					    </div>
					  </div>
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
</body>
</html>