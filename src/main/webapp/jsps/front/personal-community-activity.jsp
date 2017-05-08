<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

<title>社团管理-活动成员</title>

<!-- Bootstrap core CSS -->
<script src="/student-community/js/jquery.min.js"></script>
<link href="/student-community/layui/css/layui.css" rel="stylesheet">
<script src="/student-community/js/bootstrap.min.js"></script>
<link href="/student-community/ma/css/bootstrap.css" rel="stylesheet">
<!--external css-->
<link href="/student-community/ma/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="/student-community/ma/css/jquery.gritter.css" />
<!-- Custom styles for this template -->
<link href="/student-community/ma/macss/style.css" rel="stylesheet">
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<!-- js placed at the end of the document so the pages load faster -->
<script class="include" type="text/javascript"
	src="/student-community/ma/js/jquery.dcjqaccordion.2.7.js"></script>
<!--common script for all pages-->
<script src="/student-community/ma/js/common-scripts.js"></script>
<!-- luary -->

<script src="/student-community/layui/layui.js"></script>
<link href="/student-community/layui/css/modules/laydate/laydate.css" rel="stylesheet">

<script type="text/javascript">
		
			
</script>
</head>
<body>
	<!--sidebar end-->
	<section id="container">
		<!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
		<!--header start-->
		<header class="header black-bg">
			<!--logo start-->
			<a href="/student-community/jsps/front/personal-dynamics.jsp"
				class="logo"><b>个人主页</b></a>
			<!--logo end-->
			<div class="top-menu">
				<ul class="nav pull-right top-menu">
					<a href="/student-community/jsps/front/index.jsp"><h2>返回到社区</h2>
					</a>
				</ul>
				<ul class="nav pull-right top-menu">
					<li style="height: 60px"><a class="logout"
						href="/student-community/jsps/front/personal-dynamics.jsp"><img
							src="/student-community/ma/img/ui-sam.jpg" class="img-circle"
							width="30">&nbsp;${sessionScope.fstu.stuName }</a></li>
				</ul>
			</div>
		</header>
		<!--header end-->

		<!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu" id="nav-accordion">

					<p class="centered">
						<a href="/student-community/jsps/front/personal-dynamics.jsp"><img
							src="/student-community/ma/img/ui-sam.jpg" class="img-circle"
							width="60"></a>
					</p>
					<h5 class="centered">Marcel Newman</h5>
					<h5 class="centered">获得 111 次收藏</h5>
					<h5 class="centered">获得 3416 次赞同</h5>
				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="page-header">
					<div class="row mt">
						<ul class="nav nav-tabs nav-justified">
							<li role="presentation" ><a
								href="/student-community/jsps/front/personal-community-info.jsp">社团成员</a></li>
							<li role="presentation" class="active"><a
								href="/student-community/jsps/front/personal-community-activity.jsp">社团活动</a></li>
							<li role="presentation"><a
								href="/student-community/jsps/front/personal-community-announce.jsp">发起活动</a></li>
						</ul>
					</div>
<!-- 循环 -->  
<div class="col-md-4 col-sm-4 mb ss">
                      		<div class="white-panel pn">
                      			<div class="white-header">	
					<h4 class="ma-white-ya"><a href="#" class="ma-href-a">校园祭</a></h4>
                      			</div>
                      			
                      			 <a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
            <img src="/student-community/img/111.jpg">
        </a>
                      		</div>
                      	</div><!-- /col-md-4 -->
<!-- 循环 -->  
<div class="col-md-4 col-sm-4 mb ss">
                      		<div class="white-panel pn">
                      			<div class="white-header">	
					<h4 class="ma-white-ya"><a href="#" class="ma-href-a">校园祭</a></h4>
                      			</div>
                      			
                      			 <a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
            <img src="/student-community/img/111.jpg">
        </a>
                      		</div>
                      	</div><!-- /col-md-4 -->
<!-- 循环 -->  
<div class="col-md-4 col-sm-4 mb ss">
                      		<div class="white-panel pn">
                      			<div class="white-header">	
					<h4 class="ma-white-ya"><a href="#" class="ma-href-a">校园祭</a></h4>
                      			</div>
                      			
                      			 <a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
            <img src="/student-community/img/111.jpg">
        </a>
                      		</div>
                      	</div><!-- /col-md-4 -->		
					
				</div>
			</section>
		</section>
		<!-- /MAIN CONTENT -->

		<!--main content end-->
		<!--footer start-->
		<footer class="site-footer">
			<div class="text-center">
				2014 - Alvarez.is <a
					href="/student-community/jsps/front/personal-dynamics.jsp"
					class="go-top"> <i class="fa fa-angle-up"></i>
				</a>
			</div>
		</footer>
		<!--footer end-->
	</section>
</body>

</html>
