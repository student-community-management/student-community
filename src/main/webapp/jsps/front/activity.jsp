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
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use('form', function(){
  var $ = layui.jquery, form = layui.form();
  //全选
  form.on('checkbox(allChoose)', function(data){
    var child = $(data.elem).parents('table').find('tbody input[type="checkbox"]');
    child.each(function(index, item){
      item.checked = data.elem.checked;
    });
    form.render('checkbox');
  });
  
});
</script>
<body>
	<!-- Fixed navbar -->
	<%@include file="nav.jsp" %>
	<div class="container">
		<h3>最新活动</h3>
		<div class="layui-form">
		<form id="activityForm" class="layui-form">
			<table  class="layui-table" style="margin-top:10px;" width="100%" cellpadding="0" cellspacing="0" class = "myfont" border="1">
				 <thead>
				<tr style="margin-top:10px;">
				<td><input type="checkbox" name="" onclick="onclick()" class="activityid" lay-skin="primary" lay-filter="allChoose"></td>
					<td>社团名称</td>
					<th>活动标题</th>
					<th>活动地点</th>
					<th>活动内容</th>
					<th>活动发起日期</th>
					<th>报名截止时间</th>
					<th>活动开始时间</th>
					<th>活动截止时间</th>
					<th>活动状态</th>
				</tr>
				</thead>
				<c:if test="${list != '[]'}">
		<c:forEach items="${list}" var="list">
		<span><a href="${pageContext.request.contextPath}/updateActivityPre.a?actId=${list.activityid}">修改</a></span>
		<span><a href="${pageContext.request.contextPath}/deleteActivity.a?actId=${list.activityid}">删除</a></span>
		<span><a href="${pageContext.request.contextPath}/addactivitypre.a">发布活动</a></span>
				<tbody>
				<tr>
				<td><input type="checkbox" name="" lay-skin="primary" value="${list.activityid}" onclick="onclick()"  class="activityid" >
					<input type="hidden" value="${list.activityid}" id="activityid"/></td>
					<td>${list.community.communityName}</td>
					<td>${list.activityTitle }</td>
					<td>${list.activityLoc}</td>
					<td>${list.activityContent }</td>
					<td> <f:formatDate value="${list.activityDate}" type="both"/> </td>
					<td><f:formatDate value="${list.closingDate}" type="both"/></td>
					<td><f:formatDate value="${list.startDate}" type="both"/></td>
					<td><f:formatDate value="${list.endDate}" type="both"/></td>
					<!-- 时间比较 -->
					<td><c:if test="${list.closingDate>=currentTime}">
						在报名
					</c:if>
					<c:if test="${list.closingDate<currentTime}">
						<h3>该活动已经结束!!!!</h3>
					</c:if>
					</td>
				</tr>
				</tbody>
					</c:forEach>
			</c:if>
			</table>
			</form>
	</div>
	</div>
</body>
</html>
