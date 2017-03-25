<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- The above 2 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<!-- Note there is no responsive meta tag here -->

<link rel="icon" href="/student-community/ico/ico.png">

<title>学生社区</title>
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/mycss.css" rel="stylesheet">
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

					<li class="active"><a href="/student-community/jsps/acvitity/activity.jsp">首页</a></li>
					<li><a href="/student-community/jsps/front/activity.jsp">活动</a></li>
					<li><a href="/student-community/jsps/front/activity.jsp">讨论</a></li>
					<li><a href="/student-community/jsps/front/activity.jsp">问吧</a></li>
					<li><a href="/student-community/jsps/front/activity.jsp">动态</a></li>
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
			<h4><img class="mlist" src="/student-community/ico/list.png" width="20"> 最新动态</h4>
		</div>

		<h3>What changes</h3>
		<p>
			Note the lack of the
			<code>&lt;meta name="viewport" content="width=device-width,
				initial-scale=1"&gt;</code>
			, which disables the zooming aspect of sites in mobile devices. In
			addition, we reset our container's width and changed the navbar to
			prevent collapsing, and are basically good to go.
		</p>

		<h3>Regarding navbars</h3>
		<p>As a heads up, the navbar component is rather tricky here in
			that the styles for displaying it are rather specific and detailed.
			Overrides to ensure desktop styles display are not as performant or
			sleek as one would like. Just be aware there may be potential gotchas
			as you build on top of this example when using the navbar.</p>

		<h3>Browsers, scrolling, and fixed elements</h3>
		<p>
			Non-responsive layouts highlight a key drawback to fixed elements. <strong
				class="text-danger">Any fixed component, such as a fixed
				navbar, will not be scrollable when the viewport becomes narrower
				than the page content.</strong> In other words, given the non-responsive
			container width of 970px and a viewport of 800px, you'll potentially
			hide 170px of content.
		</p>
		<p>There is no way around this as it's default browser behavior.
			The only solution is a responsive layout or using a non-fixed
			element.</p>

		<h3>Non-responsive grid system</h3>
		<div class="row">
			<div class="col-xs-4">One third</div>
			<div class="col-xs-4">One third</div>
			<div class="col-xs-4">One third</div>
		</div>

	</div>
</body>
</html>
