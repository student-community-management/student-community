<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- The above 2 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<title>活动</title>
<link rel="icon" href="/student-community/ico/ico.png">
	<!-- 以下bootstrap -->
	
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<script src="/student-community/js/jquery-1.11.0.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
	<!-- 以上bootstrap -->
</head>
<body>
	<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<!-- The mobile navbar-toggle button can be safely removed since you do not need it in a non-responsive implementation -->
				<a class="navbar-brand" href="#">社&nbsp;区</a>
			</div>
			<!-- 头部 -->
			<div id="navbar">
				<ul class="nav navbar-nav">
					<li><a href="/student-community/jsps/front/index.jsp">首页</a></li>
					<li class="active"><a href="/student-community/jsps/front/activity.jsp">活动</a></li>
					<li><a href="">讨论</a></li>
					<li><a href="">问吧</a></li>
					<li><a href="">动态</a></li>
				</ul>
				<form class="navbar-form navbar-left">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="搜索你感兴趣的内容">
					</div>
					<button type="submit" class="btn btn-default">搜索</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><img src="/student-community/face/1.jpg" width="20px">&nbsp;紫萱</a></li>
				</ul>
			</div>
			<!--头部 -->
		</div>
	</nav>
	<!-- 中间部分 -->
	<div class="container">
		<div class="page-header">
			<table width="100%" cellpadding="0" cellspacing="0">
			<tr>
				<th>活动id</th>
				<th>活动标题</th>
				<th>活动地址</th>	
				<th>活动内容</th>	
				<th>活动发出时间</th>
				<th>报名截止日期</th>	
				<th>开始时间</th>	
				<th>结束时间</th>	
			</tr>
			<tr><td>${list}</td></tr>
			<%-- <c:if test="${list!='[]'}">
				<c:forEach items="${list}" var="list">
					<tr>
						<td align="center">${list.activityid}</td>
						<td align="center"></td>
						<td align="center">${list.activityLoc}</td>
						<td align="center"></td>
						<td align="center"></td>
					</tr>
			</c:forEach>
			</c:if> --%>
			</table>
		</div>
	</div>
	<!-- 中间部分结尾-->
</body>
</html>