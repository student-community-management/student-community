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

    <title>社团管理-活动成员</title>

    <!-- Bootstrap core CSS -->
    <link href="/student-community/layui/css/layui.css" rel="stylesheet">
	<script src="/student-community/js/bootstrap.min.js"></script>
    <link href="/student-community/ma/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="/student-community/ma/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="/student-community/ma/css/jquery.gritter.css" />
    <!-- Custom styles for this template -->
    <link href="/student-community/ma/macss/style.css" rel="stylesheet">
    <link href="/student-community/css/mymayachao.css" rel="stylesheet">
<!-- js placed at the end of the document so the pages load faster -->
    <script src="/student-community/ma/js/jquery-1.8.3.min.js"></script>
    <script class="include" type="text/javascript" src="/student-community/ma/js/jquery.dcjqaccordion.2.7.js"></script>
    <!--common script for all pages-->
    <script src="/student-community/ma/js/common-scripts.js"></script>
    <!-- luary -->
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/layui/layui.js"></script>
<link href="/student-community/layui/css/modules/laydate/laydate.css" rel="stylesheet">


  </head>
<script>
        layui.use(['form', 'layedit', 'laydate'], function(){
        	  var form = layui.form()
        	  ,layer = layui.layer
        	  ,layedit = layui.layedit
        	  ,laydate = layui.laydate;
        	});
    </script>
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
                	<a href="/student-community/jsps/front/index.jsp"><h2>返回到社区</h2> </a>
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
 <h3> Marcel Newwman&nbsp;&nbsp;&nbsp;<button id="ma-btt" class="btn btn-primary btn-xs">编辑个人资料</button>&nbsp;<button id="ma-btt" class="btn btn-primary btn-xs">申请加入社团</button></h3> 
 <h4>个人标语:<input id="ma-bac" class="ma-inp" type="text" style="border-style:none;background-color: #f2f2f2;" readonly="readonly"></h4>
 <h4>性别:男&nbsp;&nbsp;&nbsp;<button id="ma-sub" class="btn btn-default" type="submit" style="display:none">提交</button>&nbsp;&nbsp;<button id="ma-fn" class="btn btn-default" style="display:none">返回</button></h4>
 
</div>
<div class="row mt">
<ul class="nav nav-tabs nav-justified">
			<li role="presentation"><a
				href="/student-community/jsps/front/personal-dynamics.jsp">我的动态</a></li>
			<li role="presentation"><a
				href="/student-community/jsps/front/personal-activity.jsp">我的活动</a></li>
			<li role="presentation" ><a
				href="/student-community/jsps/front/personal-discuss.jsp">我的讨论</a></li>
			<li role="presentation" class="active"><a
				href="/student-community/jsps/front/personal-dynamics.jsp">我的社团</a></li>
		</ul>
</div>


<!-- 循环 -->  
<div class="col-md-4 col-sm-4 mb ss">
                      		<div class="white-panel pn dt">
                      			<div class="white-header">	
					<h4 class="ma-white-ya"><a href="/student-community/jsps/front/personal-community-info.jsp" class="ma-href-a">编辑部</a><a href="/student-community/jsps/front/personal-community-info.jsp" class="ma-href-a">查看社团</a><button class="ma-drop">删除社团</button> </h4>
                      			</div>
                      			
                      			 <a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
            <img src="/student-community/img/111.jpg">
        </a>
                      		</div>
                      	</div><!-- /col-md-4 -->
                      	<!-- 循环 -->  
<div class="col-md-4 col-sm-4 mb ss">
                      		<div class="white-panel pn dt">
                      			<div class="white-header">	
					<h4 class="ma-white-ya"><a href="/student-community/jsps/front/personal-community-info.jsp" class="ma-href-a">编辑部</a><a href="/student-community/jsps/front/personal-community-info.jsp" class="ma-href-a">查看社团</a><button class="ma-drop">删除社团</button> </h4>
                      			</div>
                      			
                      			 <a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
            <img src="/student-community/img/111.jpg">
        </a>
                      		</div>
                      	</div><!-- /col-md-4 -->
                      	<!-- 循环 -->
<div class="col-md-4 col-sm-4 mb ss">
                      		<div class="white-panel pn dt">
                      			<div class="white-header">	
					<h4 class="ma-white-ya"><a href="/student-community/jsps/front/personal-community-info.jsp" class="ma-href-a">编辑部</a><a href="/student-community/jsps/front/personal-community-info.jsp" class="ma-href-a">查看社团</a><button class="ma-drop">删除社团</button> </h4>
                      			</div>
                      			
                      			 <a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
            <img src="/student-community/img/111.jpg">
        </a>
                      		</div>
                      	</div><!-- /col-md-4 -->
                      	<!-- 循环 --> 
<div class="col-md-4 col-sm-4 mb ss">
                      		<div class="white-panel pn dt">
                      			<div class="white-header">	
					<h4 class="ma-white-ya"><a href="/student-community/jsps/front/personal-community-info.jsp" class="ma-href-a">编辑部</a><a href="/student-community/jsps/front/personal-community-info.jsp" class="ma-href-a">查看社团</a><button class="ma-drop">删除社团</button> </h4>
                      			</div>
                      			
                      			 <a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
            <img src="/student-community/img/111.jpg">
        </a>
                      		</div>
                      	</div><!-- /col-md-4 -->
                      	<!-- 循环 --> 
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
    
  <script>
      //custom select box
      $(function(){
          $('select.styled').customSelect();
      });
      $("#ma-btt").click(function (){
    	  $("#ma-bac").css({'border-style':''}); 
    	  $("#ma-bac").removeAttr("readonly");
    	  $("#ma-sub").css({'display':''});
    	  $("#ma-fn").css({'display':''});
          $("#ma-bac").focus();
      });
      $("#ma-sub").click(function (){
    	  $("#ma-bac").css({'border-style':'none'}); 
    	  $("#ma-sub").css({'display':'none'});
    	  $("#ma-fn").css({'display':'none'});
    	  $("#ma-bac").attr('readonly','readonly');
      });
      $("#ma-fn").click(function (){
    	  $("#ma-bac").css({'border-style':'none'}); 
    	  $("#ma-sub").css({'display':'none'});
    	  $("#ma-fn").css({'display':'none'});
    	  $("#ma-bac").attr('readonly','readonly');
      });
      
     $(".ma-drop").click(function (){
    	 var ojb = $(this);
    	 layer.confirm('确定要删除吗？', {
    		  btn: ['确定','取消'] //按钮
    		}, function(){
    			layer.msg('已删除');
    			ojb.parents('.ss').remove();
    		}, function(){
    		});
      });
  </script>

  </body>
  
</html>
