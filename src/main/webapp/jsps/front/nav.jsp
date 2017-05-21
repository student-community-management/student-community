<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="icon" href="/student-community/ico/ico.png">
<link href="/student-community/layui/css/layui.css" rel="stylesheet">
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/bootstrapValidator.min.css" rel="stylesheet">
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/mycssfront.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/layui/layui.js"></script>
<script src="/student-community/layui/lay/modules/layedit.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
<script src="/student-community/js/bootstrapValidator.min.js"></script>
</head>
<body>
    <div class="container">
<nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand mcommunity" href="/student-community/discuss/getAllDiscuss.a">社区</a>
            </div>
            <div id="navbar">
                <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="padding:10px;">
                  <img src="/image/stu/${ sessionScope.fstu.img }" style="border-radius: 50%; width: 35px; height: 35px;" id="nav-face">${sessionScope.fstu.stuName } 
                  <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="/student-community/jsps/front/my-info.jsp?choose=1">个人主页</a></li>
                    <li><a href="/student-community/stu/invalidate.a">注销</a></li>
                  </ul>
                </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>