<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container mcontainer">
    <div class="container mcontainer">
        <div class="aw-mod aw-topic-list-mod">
            <div class="mod-head">

                <ul class="nav nav-tabs">
                    <li <c:if test="${ choose == 1 }">class="active"</c:if> class="active">
                        <a href="/student-community/discuss/getMyDiscuss.a">我的讨论</a>
                    </li>
                    <li <c:if test="${ choose == 2 }">class="active"</c:if>>
                        <a href="/student-community/discuss/getMyDiscuss.a">我的活动</a>
                    </li>
                    <li <c:if test="${ choose == 3 }">class="active"</c:if>>
                        <a href="/student-community/discuss/getMyAttentionDiscuss.a">我的社团</a>
                    </li>
                </ul>

            </div>