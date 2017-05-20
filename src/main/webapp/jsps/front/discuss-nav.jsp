<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
var layedit;
var editIndex;
layui.use(['form', 'layedit'], function(){
  var form = layui.form();
  var layer = layui.layer;
});


</script>

<div class="container mcontainer">
    <div class="container mcontainer">
        <div class="aw-mod aw-topic-list-mod">
        <button class="btn btn-primary" type="button" id="publish">发布话题</button><br><br>
            <div class="mod-head">

                <ul class="nav nav-tabs">
                    <li <c:if test="${ choose == 1 }">class="active"</c:if>>
                        <a href="/student-community/discuss/getAllDiscuss.a">全部内容</a>
                    </li>
                    <li <c:if test="${ choose == 2 }">class="active"</c:if>>
                        <a href="/student-community/discuss/getChoicenessDiscuss.a">精选</a>
                    </li>
                    <li <c:if test="${ choose == 3 }">class="active"</c:if>>
                        <a href="/student-community/discuss/getMyAttentionDiscuss.a">我关注的话题</a>
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