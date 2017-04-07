<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="cn">
<head>
<meta charset="utf-8">
<title>学生社区</title>
<link rel="icon" href="/student-community/ico/ico.png">
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/mycssfront.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
</head>
<body>
	<%@ include file="nav.jsp" %>

	<div class="container">
		<div class="page-header">
			<h4><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> 最新动态</h4>
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
