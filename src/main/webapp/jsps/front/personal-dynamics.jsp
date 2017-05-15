<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>个人主页-我的动态</title>

    <!-- Bootstrap core CSS -->
    <link href="/student-community/ma/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="/student-community/ma/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="/student-community/ma/css/jquery.gritter.css" />
    <!-- Custom styles for this template -->
    <link href="/student-community/ma/macss/style.css" rel="stylesheet">

<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/bootstrapValidator.min.css" rel="stylesheet">
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/mycssfront.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<link href="/student-community/ma/macss/style.css" rel="stylesheet">
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
<script src="/student-community/js/bootstrapValidator.min.js"></script>

  </head>

  <body>
      <!--sidebar end-->
        <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
            <!--logo start-->
            <a href="/student-community/jsps/front/personal-dynamics.jsp" class="logo"><b>个人主页</b></a>
            <!--logo end-->
            <div class="top-menu">
            	 <ul class="nav pull-right top-menu">
                	<a href="/student-community/jsps/front/index.jsp"><h2>返回到社区</h2></a>
            	</ul>
            	<ul class="nav pull-right top-menu">
                    <li style="height:60px"><a class="logout" href="/student-community/jsps/front/personal-dynamics.jsp"><img src="/student-community/ma/img/ui-sam.jpg" class="img-circle" width="30">&nbsp;${sessionScope.fstu.stuName }</a></li>
            	</ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="/student-community/jsps/front/personal-dynamics.jsp"><img src="/student-community/ma/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
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
  <h1>My Personal Information  <small>individual resume</small></h1>
  
</div>
		<div class="row">
  <div class="ma-col-one">
    <a href="#">
      <img src="/student-community/ma/img/ui-sam.jpg" alt="" class="img-circle">
    </a>
  </div>
 <h3> Marcel Newwman&nbsp;&nbsp;&nbsp;<button id="ma-btt" class="btn btn-primary btn-xs">编辑个人资料</button></h3> 
 <h4>个人标语:<input id="ma-bac" class="ma-inp" type="text" style="border-style:none;background-color: #f2f2f2;" readonly="readonly"></h4>
 <h4>性别:男&nbsp;&nbsp;&nbsp;<button id="ma-sub" class="btn btn-default" type="submit" style="display:none">提交</button>&nbsp;&nbsp;<button id="ma-fn" class="btn btn-default" style="display:none">返回</button></h4>
 
</div>
<div class="row mt">
<ul class="nav nav-tabs nav-justified">
			<li role="presentation" class="active"><a
				href="/student-community/jsps/front/personal-dynamics.jsp">我的动态</a></li>
			<li role="presentation"><a
				href="/student-community/jsps/front/personal-activity.jsp">我的活动</a></li>
			<li role="presentation"><a
				href="/student-community/jsps/front/personal-discuss.jsp">我的讨论</a></li>
			<li role="presentation"><a
				href="/student-community/jsps/front/personal-community.jsp">我的社团</a></li>
		</ul>
</div>
        <!-- 循环 -->
		<div class="col-md-4 col-sm-4 ma-dt">
			<div>
                      		<div class="pn dn">
                      			<div class="ma-biaoti">
                      			<div class="ma-tupian">
                      				<img class="img-circle" width="80px" height="80px" src="/student-community/ma/img/ui-sam.jpg">
                      				</div>
                      			<div class="ma-mamingzi">
                      				郭靖<br/>
                      				11.16
                      			</div>
                      			<div class="ma-cai">
                      			 <div class="btn-group">
						  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						    更多 <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu ma-menu">
						    <li><a href="#">删除</a></li>
						  </ul>
						</div>
								</div>
                      			</div>
                      			<div class="ma-neirong">
                      				<div class="ma-wenzi">
                      					这个是内容你能看明白吗？这个是内容你能看明白吗？这个是内容你能看明白吗？这个是内容你能看明白吗？这个是内容你能看明白吗？这个是内容你能看明白吗？这个是内容你能看明白吗？这个是内容你能看明白吗？这个是内容你能看明白吗？这个是内容你能看明白吗？这个是内容你能看明白吗？
                      				</div>
                      				
  </div><!-- /.col-lg-6 -->
                      		</div>
                      			</div>          	             	                      	                     	
      		<!--/ row -->
          </section>
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2014 - Alvarez.is
              <a href="/student-community/jsps/front/personal-dynamics.jsp" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

  </body>
  
</html>
