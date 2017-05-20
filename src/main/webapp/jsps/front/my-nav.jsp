<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container mcontainer">
    <div class="container mcontainer">
        <div class="aw-mod aw-topic-list-mod">
            <div class="mod-head">

                <ul class="nav nav-tabs">
                    <li <c:if test="${ param.choose == 1 }">class="active"</c:if>>
                        <a href="/student-community/jsps/front/my-info.jsp?choose=1">我的个人信息</a>
                    </li>
                    <li <c:if test="${ choose == 2 }">class="active"</c:if>>
                        <a href="/student-community/discuss/getMyDiscuss.a">我的讨论</a>
                    </li>
                    <li <c:if test="${ param.choose == 4 }">class="active"</c:if>>
                        <a href="/student-community/comm/getMyCommunity.a?choose=4">我的社团</a>
                    </li>
                </ul>
            </div>