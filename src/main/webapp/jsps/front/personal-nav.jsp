<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
    $(function() {

        layui.use('upload', function() {
            layui.upload({
                url : '/student-community/stu/img.a',
                title : '请选择上传头像',
                method : 'post', //上传接口的http类型
                elem : '#img',
                success : function(res) {
                    if (res.msg == 'success') {
                        $('#face').attr('src', '/image/stu/' + res.data.src);
                        layer.msg('更换头像成功');
                    } else {
                        layer.msg('更换头像失败');
                    }
                }
            });
        });
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
</script>

<body>
    <header class="header black-bg">
        <a href="/student-community/jsps/front/personal-activity.jsp" class="logo"><b>个人主页</b></a>
        <div class="top-menu">
            <ul class="nav pull-right top-menu">
                <span class="h2"><a href="/student-community/jsps/front/index.jsp">返回到社区
                </a></span>
            </ul>
            <ul class="nav pull-right top-menu">
                <li style="height: 60px">
                    <a class="logout" href="/student-community/jsps/front/personal-dynamics.jsp"><img
                        src="/image/stu/${ sessionScope.fstu.img }" class="img-circle" width="30">&nbsp;${sessionScope.fstu.stuName }</a>
                </li>
            </ul>
        </div>
    </header>
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <div class="page-header">
                <span class="h1">个人</span>
            </div>
            <!-- 头像部分 -->
            <div class="row">
                <div class="ma-col-one">
                    <img src="/image/stu/${ sessionScope.fstu.img }" width="128" height="128"
                        class="img-circle" id="face">
                    <div class="site-demo-upload ma-dtd">
                        <div class="site-demo-upbar">
                            <input type="file" name="img" id="img">
                        </div>
                    </div>
                </div>
                <button id="ma-btt" class="btn btn-primary btn-xs">
                    <span class="h4">编辑个人资料</span>
                </button>
                <br /> <span class="h4">个人标语:<input id="ma-bac" class="ma-inp" type="text"
                    style="border-style: none; background-color: #f2f2f2;" readonly="readonly"></span>
                <br /> <span class="h4">性别:男&nbsp;&nbsp;&nbsp;
                    <button id="ma-sub" class="btn btn-default" type="submit" style="display: none">提交</button>&nbsp;&nbsp;
                    <button id="ma-fn" class="btn btn-default" style="display: none">返回</button>
                </span> <br />
            </div>
            <div class="row mt">
                <ul class="nav nav-tabs nav-justified">
                    <li role="presentation" class="active">
                        <a href="/student-community/jsps/front/personal-activity.jsp">我的活动</a>
                    </li>
                    <li role="presentation">
                        <a href="/student-community/jsps/front/personal-discuss.jsp">我的讨论</a>
                    </li>
                    <li role="presentation">
                        <a href="/student-community/jsps/front/personal-community.jsp">我的社团</a>
                    </li>
                </ul>
            </div>