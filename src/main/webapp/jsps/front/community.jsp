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
<meta content="text/html;charset=utf-8" http-equiv="Content-Type" />
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
<meta name="renderer" content="webkit" />


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
				<a class="navbar-brand mcommunity" href="/student-community/jsps/front/index.jsp">社区</a>
			</div>
			<!-- Note that the .navbar-collapse and .collapse classes have been removed from the #navbar -->
			<div id="navbar">
				<ul class="nav navbar-nav">
					<li><a href="/student-community/jsps/front/index.jsp">首页</a></li>
					<li><a href="#about">活动</a></li>
					<li><a href="/student-community/jsps/front/discuss.jsp">讨论</a></li>
					<li><a href="#contact">问吧</a></li>
					<li><a href="#contact">动态</a></li>
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
<ul class="nav nav-tabs nav-justified">
  <li role="presentation" ><a href="/student-community/jsps/front/discuss.jsp">发表话题</a></li>
  <li role="presentation" class="active"><a href="/student-community/jsps/front/community.jsp">全新论坛</a></li>

</ul>
		<div class="page-header">
			<h4><img class="mlist" src="/student-community/ico/list.png" width="20"> 最新动态</h4>
		</div>
		
		<div class="container">
		<div class="row">
			<div class="aw-content-wrap clearfix">
				<div class="col-sm-12 col-md-9 aw-main-content">
					<div class="aw-mod aw-topic-list-mod">
						<div class="mod-head">
							<div class="tabbable">
								<!-- tab 切换 -->
								<ul class="nav nav-tabs aw-nav-tabs hidden-xs">
									<li class="active"><a href="#" data-toggle="tab">全部内容</a></li>
									<li><a href="#" data-toggle="tab">精华</a></li>							
									<li><a href="#" id="i_about" data-toggle="tab">关于我的话题</a></li>
  					<div class="aw-search-bar pull-right hidden-xs">
										<i class="icon icon-search"></i>
										<input type="text" id="question-input" class="search-query form-control" placeholder="搜索...">
										<div class="aw-dropdown" style="display: none;">
											<p class="title">没有找到相关结果</p>
											<ul class="aw-dropdown-list" style="display: none;"></ul>
										</div>
									</div>
									
								</ul>
						</div>
				</div>
		</div>
						<div class="aw-mod aw-explore-list">
						<div class="mod-body">
							<div class="aw-common-list">
								<div class="aw-item active" data-topic-id="1176,814,">
	
	<a href="#" class="aw-user-name">韦森</a> 
				<span class="text-color-999">发起了问题 &nbsp;&nbsp;最佳回复者:&nbsp;
									<a class="aw-user-name" href="" data-id="29">FiveSay<i class="icon-v" title="个人认证"></i>									</a>
									<span>获得 <b>12</b> 次赞同</span>
								
				</span>
				<a class="aw-user-name hidden-xs" data-id="4444" href="http://wenda.golaravel.com/people/%E9%9F%A6%E6%A3%AE" rel="nofollow"><img src="" alt="" /></a>	<div class="aw-question-content">
		<h4>
						<a href="/student-community/jsps/front/answer.jsp">laravel项目本地运行良好，上传apache服务器后访问首页显示空白无报错 PHP版本5.6</a>
					</h4>
				<a href="/student-community/jsps/front/answer.jsp" class="pull-right text-color-999">回复</a>
				
		<p>
																
									<span class="text-color-999 related-topic hide"> •  来自相关话题</span>
		</p>
		
			</div>	
	</div>				<!-- end tab 切换 -->
							</div>
						</div>
					</div>		
				</div>
			</div>
		</div>
	</div>
</div>
	
</body>
</html>
