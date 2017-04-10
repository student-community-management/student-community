<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="icon" href="/student-community/ico/ico.png">
<title>学生社区</title>
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/easyui/jquery.easyui.min.js" rel="stylesheet">
<script src="/student-community/easyui/themes/icon.css"></script>
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/mycss.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<script src="/student-community/js/jquery-1.11.0.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
</head>
<body>
<script type="text/javascript">
</script>
	<!-- Fixed navbar -->
	<%@include file="nav.jsp" %>
	<div class="container">
		<h3>最新活动</h3>
		<c:if test="${list != '[]'}">
		<c:forEach items="${list}" var="list">
		<span><a href="${pageContext.request.contextPath}/updateActivityPre.a?actId=${list.activityid}">修改</a></span>
		<span><a href="${pageContext.request.contextPath}/deleteActivity.a?actId=${list.activityid}">删除</a></span>
		<span><a href="${pageContext.request.contextPath}/addactivitypre.a">发布活动</a></span>
			<table width="100%" cellpadding="0" cellspacing="0" class = "myfont" border="1">
				<tr>
					<td>社团名称</td>
					<th>活动标题</th>
					<th>活动地点</th>
					<th>活动内容</th>
					<th>报名开始时间</th>
					<th>报名截止时间</th>
					<th>活动开始时间</th>
					<th>活动截止时间</th>
					<th>活动状态</th>
				</tr>
				<tr>
				<input type="hidden" value="${list.activityid}" id="activityid"/>
					<td>${list.community.communityName}</td>
					<td>${list.activityTitle }</td>
					<td>${list.activityLoc}</td>
					<td>${list.activityContent }</td>
					<td>${list.activityDate }</td>
					<td>${list.closeingDate }</td>
					<td>${list.startDate }</td>
					<td>${list.endDate }</td>
					<td><c:if test="${list.status == 1}">
						已经结束
					</c:if>
					<c:if test="${list.status == 0 }">
						<h3>还在报名中!!!!</h3>
					</c:if>
					</td>
				</tr>
			</table>
			</c:forEach>
		</c:if>
	</div>
</body>
</html>
