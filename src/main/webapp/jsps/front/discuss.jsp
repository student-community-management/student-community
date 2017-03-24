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

<style type="text/css">
	#ddd{   margin-right: auto;
			margin-left: auto;
			width:670px;
			vertical-align:middle;}
			
			#aaa{   text-align: center;
			}
			#ccc{ 	margin-top: 300px;
			}
</style>
<!-- Note there is no responsive meta tag here -->

<link rel="icon" href="/student-community/ico/ico.png">

<title>学生社区</title>
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<script src="/student-community/js/jquery-1.11.0.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>

</head>

<body>

	<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<!-- The mobile navbar-toggle button can be safely removed since you do not need it in a non-responsive implementation -->
				<a class="navbar-brand" href="#">社&nbsp;区</a>
			</div>
			<!-- Note that the .navbar-collapse and .collapse classes have been removed from the #navbar -->
			<div id="navbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">首页</a></li>
					<li><a href="#about">活动</a></li>
					<li><a href="#contact">讨论</a></li>
					<li><a href="#contact">问吧</a></li>
					<li><a href="#contact">动态</a></li>
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
			<!--/.nav-collapse -->
		</div>
	</nav>
	
  <ul class="nav nav-tabs nav-justified">
  <li role="presentation" class="active"><a href="#">发表话题</a></li>
  <li role="presentation"><a href="#">社区</a></li>
  <li role="presentation"><a href="#">回答</a></li>
</ul>
<form class="form-horizontal">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">标题</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="inputEmail3" placeholder="今天干什么">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">内容</label>
    <div class="col-sm-10">
    <textarea class="form-control" rows="3" placeholder="怎么勒"></textarea>
    </div>
  </div>
  <div id="ddd" class="dropdown" >
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    请选择标签 
   
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <li><a href="#">大话乱天</a></li>
    <li><a href="#">谈天说地</a></li>
    <li><a href="#">上下五百年</a></li>
    <li role="separator" class="divider"></li>
    <li><a href="#">历史新闻</a></li>
  </ul>
 
      <button type="submit" class="btn btn-default">提交</button>

</div>
  <div class="form-group">
    
  </div>
</form>
		<div id="ccc" class="row">
			<div class="col-xs-4">One third</div>
			<div class="col-xs-4">One third</div>
			<div class="col-xs-4">One third</div>
		</div>

	</div>
</body>
</html>
