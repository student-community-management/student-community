<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand mcommunity" href="#">社区</a>
            </div>
            <div id="navbar">
                <ul class="nav navbar-nav">
                    <li><a href="/student-community/discuss/getAllDiscuss.a">首页</a></li>
                    <li><a href="/student-community/getActivity.a">活动</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="padding:10px;">
                  <img src="/image/stu/${ sessionScope.fstu.img }" width="35px">${sessionScope.fstu.stuName } 
                  <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="/student-community/discuss/getMyDiscuss.a">个人主页</a></li>
                    <li class="dropdown-header">注销</li>
                  </ul>
                </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>