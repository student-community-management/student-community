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
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/mycss.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<script src="/student-community/js/jquery-1.11.0.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<!-- The mobile navbar-toggle button can be safely removed since you do not need it in a non-responsive implementation -->
				<a class="navbar-brand mcommunity" href="/student-community/jsps/front/index.jsp">社&nbsp;区</a>
			</div>
			<!-- Note that the .navbar-collapse and .collapse classes have been removed from the #navbar -->
			<div id="navbar">
				<ul class="nav navbar-nav">

					<li class="active"><a href="${pageContext.request.contextPath}/jsps/acvitity/activity.jsp">首页</a></li>
					<li><a href="${pageContext.request.contextPath}/getActivity.a">社区</a></li>
					<li><a href="${pageContext.request.contextPath}/jsps/front/activity.jsp">讨论</a></li>
					<li><a href="${pageContext.request.contextPath}/jsps/front/activity.jsp">问吧</a></li>
					<li><a href="${pageContext.request.contextPath}/jsps/front/activity.jsp">动态</a></li>
				</ul>
				<form class="navbar-form navbar-left">
					<div class="form-group">
						<input type="text" class="form-control msearch" placeholder="搜索你感兴趣的内容">
					</div>
					<button type="submit" class="btn btn-default msearch">搜索</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li style="height:60px"><a href="#"><img src="/student-community/face/1.jpg" width="30px">&nbsp;紫萱dsgsdf</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>
	<div class="container">
		<div class="page-header">
			<h4><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> 最新动态</h4>
		</div>
		<h3>社区</h3>
		<c:if test="${listcomm!=null}">
		<c:forEach items="${listcomm}" var="listcomm">
			<table width="100%" cellspacing="0" border="0" cellpadding="0" class = "myfont" >
				<tr>
					<th>社区名称</th>
				</tr>
				<tr>
					<td>${listcomm.communityName}</td>
				</tr>
			</table>
			</c:forEach>
			</c:if>

	</div>
</body>
</html>
