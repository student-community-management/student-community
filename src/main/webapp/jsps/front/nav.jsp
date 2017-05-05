<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<!-- The mobile navbar-toggle button can be safely removed since you do not need it in a non-responsive implementation -->
				<a class="navbar-brand mcommunity" href="/student-community/jsps/front/index.jsp">社区</a>
			</div>
			<!-- Note that the .navbar-collapse and .collapse classes have been removed from the #navbar -->
			<div id="navbar">
				<ul class="nav navbar-nav">
					<li><a href="/student-community/jsps/front/index.jsp">首页</a></li>
					<li><a href="/student-community/jsps/front/activity.jsp">活动</a></li>
					<li><a href="/student-community/discuss/getAllDiscuss.a">讨论</a></li>
					<li><a href="#contact">动态</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li style="height:60px"><a href="#"><img src="/student-community/face/1.jpg" width="30px">&nbsp;${sessionScope.fstu.stuName }</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>