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

    <title>我的讨论</title>

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
  			<img  id="LAY_demo_upload" src="/student-community/ma/img/ui-sam.jpg" alt="" class="img-circle">	  
		 <div class="site-demo-upload ma-dtd">
		  <div class="site-demo-upbar">
		    <input type="file" name="file" class="layui-upload-file" id="test">
		  </div>
		</div>
		  </div>
		  <div class="ma-gerenxinxi">
 <h3> Marcel Newwman&nbsp;&nbsp;&nbsp;<button id="ma-btt" class="btn btn-primary btn-xs">编辑个人资料</button></h3> 
 <h4>个人标语:<input id="ma-bac" class="ma-inp" type="text" style="border-style:none;background-color: #f2f2f2;" readonly="readonly"></h4>
 <h4>性别:男&nbsp;&nbsp;&nbsp;<button id="ma-sub" class="btn btn-default" type="submit" style="display:none">提交</button>&nbsp;&nbsp;<button id="ma-fn" class="btn btn-default" style="display:none">返回</button></h4>
 </div>
</div>
<div class="row mt">
<ul class="nav nav-tabs nav-justified">
			<li role="presentation"><a
				href="/student-community/jsps/front/personal-dynamics.jsp">我的动态</a></li>
			<li role="presentation"><a
				href="/student-community/jsps/front/personal-activity.jsp">我的活动</a></li>
			<li role="presentation" class="active"><a
				href="/student-community/jsps/front/personal-discuss.jsp">我的讨论</a></li>
			<li role="presentation"><a
				href="/student-community/jsps/front/personal-community.jsp">我的社团</a></li>
		</ul>
</div>   	             	
                      	  <form id="form1" runat="server" method="post" enctype="multipart/form-data">  
        <div>  
            
        </div>  
    </form>                     	
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
	  layui.use('upload', function(){
		  layui.upload({
		    url: '' //上传接口
		    ,success: function(res){ //上传成功后的回调
		      console.log(res)
		    }
		  });
		  
		  layui.upload({
		    url: '/test/upload.json'
		    ,elem: '#test' //指定原始元素，默认直接查找class="layui-upload-file"
		    ,method: 'get' //上传接口的http类型
		    ,success: function(res){
		      LAY_demo_upload.src = res.url;
		    }
		  });
		});
	  
	  $("#ma-dtd").hover(function () {
		  $("#ma-dtd").css({'display':'none'});
	  });
	  $("#ma-dtd").out(function () {
		  $("#ma-dtd").css({'display':'block'});
	  });
  </script>

  </body>
  
</html>
