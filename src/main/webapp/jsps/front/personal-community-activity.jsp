<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<title>社团管理-活动成员</title>
<link href="/student-community/layui/css/layui.css" rel="stylesheet">
<link href="/student-community/ma/css/bootstrap.css" rel="stylesheet">
<link href="/student-community/ma/macss/style.css" rel="stylesheet">
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
<script src="/student-community/layui/layui.js"></script>
</head>
<body>
    <!--sidebar end-->
    <section id="container">

    <%@ include file="personal-headonly.jsp" %>
        <!--header end-->
        <!--main content start-->
        <section id="main-content">
            <section class="wrapper">
                <div class="page-header">
                    <div class="row mt">
                        <ul class="nav nav-tabs nav-justified">
                            <li role="presentation">
                                <a href="/student-community/jsps/front/personal-community-info.jsp">社团成员</a>
                            </li>
                            <li role="presentation" class="active">
                                <a
                                    href="/student-community/jsps/front/personal-community-activity.jsp">社团活动</a>
                            </li>
                            <li role="presentation">
                                <a
                                    href="/student-community/jsps/front/personal-community-announce.jsp">发起活动</a>
                            </li>
                        </ul>
                    </div>
                    <!-- 循环 -->
                    <div class="col-md-4 col-sm-4 mb ss">
                        <div class="white-panel pn">
                            <div class="white-header">
                                <h4 class="ma-white-ya">
                                    <a href="#" class="ma-href-a">校园祭</a>
                                </h4>
                            </div>

                            <a href="/student-community/jsps/front/personal-community-info.jsp"
                                class="thumbnail"> <img src="/student-community/img/111.jpg">
                            </a>
                        </div>
                    </div>
                    <!-- /col-md-4 -->
                    <!-- 循环 -->
                    <div class="col-md-4 col-sm-4 mb ss">
                        <div class="white-panel pn">
                            <div class="white-header">
                                <h4 class="ma-white-ya">
                                    <a href="#" class="ma-href-a">校园祭</a>
                                </h4>
                            </div>

                            <a href="/student-community/jsps/front/personal-community-info.jsp"
                                class="thumbnail"> <img src="/student-community/img/111.jpg">
                            </a>
                        </div>
                    </div>
                    <!-- /col-md-4 -->
                    <!-- 循环 -->
                    <div class="col-md-4 col-sm-4 mb ss">
                        <div class="white-panel pn">
                            <div class="white-header">
                                <h4 class="ma-white-ya">
                                    <a href="#" class="ma-href-a">校园祭</a>
                                </h4>
                            </div>

                            <a href="/student-community/jsps/front/personal-community-info.jsp"
                                class="thumbnail"> <img src="/student-community/img/111.jpg">
                            </a>
                        </div>
                    </div>
                    <!-- /col-md-4 -->
                </div>
            </section>
        </section>
        <!--main content end-->
        <!--footer end-->
    </section>
</body>

</html>
