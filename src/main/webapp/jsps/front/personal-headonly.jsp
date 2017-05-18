<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header class="header black-bg">
    <!--logo start-->
    <a href="/student-community/jsps/front/personal-activity.jsp" class="logo"><b>个人主页</b></a>
    <!--logo end-->
    <div class="top-menu">
        <ul class="nav pull-right top-menu">
            <a href="/student-community/jsps/front/index.jsp"><h2>返回到社区</h2> </a>
        </ul>
        <ul class="nav pull-right top-menu">
            <li style="height: 60px">
                <a class="logout" href="/student-community/jsps/front/personal-activity.jsp"><img
                   src="/image/stu/${ sessionScope.fstu.img }" class="img-circle" width="30">&nbsp;${sessionScope.fstu.stuName }</a>
            </li>
        </ul>
    </div>
</header>