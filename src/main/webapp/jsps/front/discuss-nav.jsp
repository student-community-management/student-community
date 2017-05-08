<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
    <ul class="nav nav-tabs nav-justified">
        <li role="presentation" class="active">
            <a href="/student-community/discuss/getAllDiscuss.a">话题发现</a>
        </li>
        <li role="presentation">
            <a href="/student-community/jsps/front/discuss-publish.jsp">发表话题</a>
        </li>
    </ul>
    <div class="page-header">
        <h4>
            <img class="mlist" src="/student-community/ico/list.png" width="20"> 最新动态
        </h4>
    </div>
    <div class="container">
        <div class="aw-mod aw-topic-list-mod">
            <div class="mod-head">

                <ul class="nav nav-tabs">
                    <li <c:if test="${ choose == 1 }">class="active"</c:if>>
                        <a href="/student-community/discuss/getAllDiscuss.a">全部内容</a>
                    </li>
                    <li <c:if test="${ choose == 2 }">class="active"</c:if>>
                        <a href="/student-community/discuss/getChoicenessDiscuss.a">精选</a>
                    </li>
                    <li <c:if test="${ choose == 3 }">class="active"</c:if>>
                        <a href="/student-community/discuss/getMyAttentionDiscuss.a">关于我的话题</a>
                    </li>
                    <div class="aw-search-bar pull-right hidden-xs">
                        <i class="icon icon-search"></i>
                        <input type="text" id="question-input" value="${ pagination.keyWord }"
                            class="search-query form-control" placeholder="搜索...">
                        <div class="aw-dropdown" style="display: none;">
                            <p class="title">没有找到相关结果</p>
                            <ul class="aw-dropdown-list" style="display: none;"></ul>
                        </div>
                    </div>
                </ul>

            </div>