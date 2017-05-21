<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--sidebar end-->
<section id="container">
<!--header end-->
<!--main content start-->
<section id="main-content" style="padding:10px;">
    <section class="wrapper">
            <div class="row mt">
                <ul class="nav nav-tabs nav-justified">
                    <li <c:if test="${ choose == 1 }"> class="active" </c:if> >
                        <a href="/student-community/stu/getStusByCommid.a?commid=${ commid }&manage=${ manage }">社团成员</a>
                    </li>
                    <c:if test="${ manage == 1 }">
                        <li <c:if test="${ choose == 2 }"> class="active" </c:if> >
                            <a href="/student-community/stu/getReqStu.a?commid=${ commid }&manage=${ manage }">社团申请人员</a>
                        </li>
                    </c:if>
                
            </ul>
            
        </div>