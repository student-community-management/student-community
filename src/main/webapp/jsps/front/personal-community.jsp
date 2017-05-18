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
    <%@ include file="personal-nav.jsp"%>
    <!-- 循环 -->
    <div class="col-md-4 col-sm-4 mb ss">
        <div class="white-panel pn dt">
            <div class="white-header">
                <h4 class="ma-white-ya">
                    <a href="/student-community/jsps/front/personal-community-info.jsp"
                        class="ma-href-a">编辑部</a><a
                        href="/student-community/jsps/front/personal-community-info.jsp"
                        class="ma-href-a">查看社团</a>
                    <button class="ma-drop">删除社团</button>
                </h4>
            </div>

            <a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
                <img src="/student-community/img/111.jpg">
            </a>
        </div>
    </div>
    <!-- /col-md-4 -->
    <!-- 循环 -->
    <div class="col-md-4 col-sm-4 mb ss">
        <div class="white-panel pn dt">
            <div class="white-header">
                <h4 class="ma-white-ya">
                    <a href="/student-community/jsps/front/personal-community-info.jsp"
                        class="ma-href-a">编辑部</a><a
                        href="/student-community/jsps/front/personal-community-info.jsp"
                        class="ma-href-a">查看社团</a>
                    <button class="ma-drop">删除社团</button>
                </h4>
            </div>

            <a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
                <img src="/student-community/img/111.jpg">
            </a>
        </div>
    </div>
    <!-- /col-md-4 -->
    <!-- 循环 -->
    <div class="col-md-4 col-sm-4 mb ss">
        <div class="white-panel pn dt">
            <div class="white-header">
                <h4 class="ma-white-ya">
                    <a href="/student-community/jsps/front/personal-community-info.jsp"
                        class="ma-href-a">编辑部</a><a
                        href="/student-community/jsps/front/personal-community-info.jsp"
                        class="ma-href-a">查看社团</a>
                    <button class="ma-drop">删除社团</button>
                </h4>
            </div>

            <a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
                <img src="/student-community/img/111.jpg">
            </a>
        </div>
    </div>
    <!-- /col-md-4 -->
    <!-- 循环 -->
    <div class="col-md-4 col-sm-4 mb ss">
        <div class="white-panel pn dt">
            <div class="white-header">
                <h4 class="ma-white-ya">
                    <a href="/student-community/jsps/front/personal-community-info.jsp"
                        class="ma-href-a">编辑部</a><a
                        href="/student-community/jsps/front/personal-community-info.jsp"
                        class="ma-href-a">查看社团</a>
                    <button class="ma-drop">删除社团</button>
                </h4>
            </div>

            <a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
                <img src="/student-community/img/111.jpg">
            </a>
        </div>
    </div>
    <!-- /col-md-4 -->
    <!-- 循环 -->
    <!--/ row -->
    </section>
    </section>
    <!-- /MAIN CONTENT -->

    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
        <div class="text-center">
            2014 - Alvarez.is <a href="/student-community/jsps/front/personal-dynamics.jsp"
                class="go-top"> <i class="fa fa-angle-up"></i>
            </a>
        </div>
    </footer>
    <!--footer end-->
    </section>

    <script>
                    //custom select box
                    $(function() {
                        $('select.styled').customSelect();
                    });
                    $("#ma-btt").click(function() {
                        $("#ma-bac").css({
                            'border-style' : ''
                        });
                        $("#ma-bac").removeAttr("readonly");
                        $("#ma-sub").css({
                            'display' : ''
                        });
                        $("#ma-fn").css({
                            'display' : ''
                        });
                        $("#ma-bac").focus();
                    });
                    $("#ma-sub").click(function() {
                        $("#ma-bac").css({
                            'border-style' : 'none'
                        });
                        $("#ma-sub").css({
                            'display' : 'none'
                        });
                        $("#ma-fn").css({
                            'display' : 'none'
                        });
                        $("#ma-bac").attr('readonly', 'readonly');
                    });
                    $("#ma-fn").click(function() {
                        $("#ma-bac").css({
                            'border-style' : 'none'
                        });
                        $("#ma-sub").css({
                            'display' : 'none'
                        });
                        $("#ma-fn").css({
                            'display' : 'none'
                        });
                        $("#ma-bac").attr('readonly', 'readonly');
                    });

                    $(".ma-drop").click(function() {
                        var ojb = $(this);
                        layer.confirm('确定要删除吗？', {
                            btn : [ '确定', '取消' ]
                        //按钮
                        }, function() {
                            layer.msg('已删除');
                            ojb.parents('.ss').remove();
                        }, function() {
                        });
                    });
                </script>

</body>

</html>
