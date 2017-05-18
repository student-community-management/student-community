<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>我的活动</title>
<link href="/student-community/ma/css/bootstrap.css" rel="stylesheet">
<link href="/student-community/layui/css/layui.css" rel="stylesheet">
<link href="/student-community/ma/macss/style.css" rel="stylesheet">
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/layui/layui.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
</head>
    <%@ include file="personal-nav.jsp" %>
    
        <div class="col-md-4 col-sm-4 mb">
            <div class="white-panel pn">
                <div class="white-header">
                    <h4 class="ma-white-ya"><a href="#" class="ma-href-a">校园祭</a></h4>
                </div>
                <a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
                    <img src="/student-community/img/111.jpg">
                </a>
            </div>
        </div>
        <!-- /col-md-4 -->
        <div class="col-md-4 col-sm-4 mb">
            <div class="white-panel pn">
                <div class="white-header">
                    <h4 class="ma-white-ya"><a href="#" class="ma-href-a">校园祭</a></h4>
                </div>
                <a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
                    <img src="/student-community/img/111.jpg">
                </a>
            </div>
        </div>
        <!-- /col-md-4 -->
        <div class="col-md-4 col-sm-4 mb">
            <div class="white-panel pn">
                <div class="white-header">
                    <h4 class="ma-white-ya"><a href="#" class="ma-href-a">校园祭</a></h4>
                </div>
                <a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
                    <img src="/student-community/img/111.jpg">
                </a>
            </div>
        </div>
        <!-- /col-md-4 -->
        <div class="col-md-4 col-sm-4 mb">
            <div class="white-panel pn">
                <div class="white-header">
                    <h4 class="ma-white-ya"><a href="#" class="ma-href-a">校园祭</a></h4>
                </div>
                <a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
                    <img src="/student-community/img/111.jpg">
                </a>
            </div>
        </div>
        <!-- /col-md-4 -->
        <!--/ row -->
    </section>
</section>
<!-- /MAIN CONTENT -->
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
<script>

$(".ma-drop").click(function() {
    layer.confirm('确定要删除吗？', {
        btn: ['确定', '取消'] //按钮
    }, function() {
        layer.msg('已删除');
    }, function() {});
});
</script>
</body>

</html>
