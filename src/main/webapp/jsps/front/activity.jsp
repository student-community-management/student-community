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
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
</head>
<body>

	<%@ include file="nav.jsp"%>
	<div class="container">
	<div class="middle">
		<ul class="nav nav-tabs nav-justified">
			<li role="presentation" class="active"><a
				href="/student-community/jsps/front/activity.jsp">活动社区</a></li>
			<li role="presentation"><a
				href="/student-community/jsps/front/initiate.jsp">发起活动</a></li>
			<li role="presentation"><a
				href="#">活动相册</a></li>
		</ul>
	<div class="topone">
		<div class="ccc">
		<div class="hb"><h2 class="glyphicon glyphicon-user">公告栏</h2>
		</div>
		<div class="bd">
			<small><a>本活动内容最终解释权归版权方所有</a></small>
		</div>
		</div>
			<div class="moddces">
			<div class="modc-two">
				<div class="events-list-s">
					<ul class="list-m">
						<li class="item-s">
							
							<div class="pic">
								
							</div>
							<div class="info">
								<h3>
									<a href="/student-community/jsps/front/activity_ma.jsp">校园祭</a>
								</h3>
							</div>
							<div class="date">
								<button class="btn " type="button">
							正在进行
						</button>
									<button class="btn btn-primary " type="button">
							生活部
						</button>
							</div>
						</li>
					</ul>
				</div>
				</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
