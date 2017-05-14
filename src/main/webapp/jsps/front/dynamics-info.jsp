<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="cn">
<head>
<meta charset="utf-8">
<title>学生社区</title>
<link rel="icon" href="/student-community/ico/ico.png">
<link href="/student-community/layui/css/modules/laydate/laydate.css" rel="stylesheet">
<link href="/student-community/layui/css/layui.css" rel="stylesheet">
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/mycssfront.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/layui/layui.js"></script>
<script src="/student-community/layui/lay/modules/layedit.js"></script>
<script src="/student-community/layui/lay/modules/layer.js"></script>
<script src="/student-community/layui/area.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>

</head>
<body>
<%@ include file="nav.jsp"%>
<div class="container">
    <ul class="nav nav-tabs nav-justified">
        <li role="presentation" class="active">
            <a href="/student-community/getAllDynamics.a">最新动态</a>
        </li>
    </ul>
    <div class="page-header">
       <div class="layui-form-item layui-form-text" id="block">
       			<form id="parentDynamicsForm" method="post">
       				<input type="text" name=""/>
       				<input id="VContent" name="">
       				<input >
				 <div class="layui-input-block" style="margin-right:100px;">
						<textarea class="layui-textarea layui-hide" lay-verify="content" id="LAY_demo_editor"></textarea>
						<div class="layui-form-item">
					    <div class="layui-input-block" style="text-align:center;">
					      <button class="layui-btn" lay-submit lay-filter="demo">发表</button>
					      <button class="layui-btn layui-btn-primary" id="close">关闭</button>
					    </div>
					  </div>
						    </div>
				 </form>
			<script type="text/javascript">
    			layui.use('laydate', function(){
    				  var laydate = layui.laydate;
    			});
    			layui.use(['form', 'layedit', 'laydate'], function(){
    				  var form = layui.form()
    				  ,layer = layui.layer
    				  ,layedit = layui.layedit
    				  ,laydate = layui.laydate;
    				  //创建一个编辑器
    				  var editIndex = layedit.build('LAY_demo_editor',{height:100,width:1000});
    				  //监听提交
    				  form.on('submit(demo)', function(data){
    					 $("#VContent").val(layedit.getContent(editIndex));
    					 $.ajax({
    						 url:"",
    						 type:"post",
    						 data: $("#childrenForm").serialize(),
    				           	success:function(data){
    							 window.location="";
    						 }
    					 })
    				     return false;
    				  })
    				});
    			    </script>
					  </div>
    </div>
    <div class="container">
        <div class="aw-mod aw-topic-list-mod">
            <div class="mod-head">

                <ul class="nav nav-tabs">
                    <li <c:if test="${ choose == 1 }">class="active"</c:if> >
                        <a href="/student-community/getAllDynamics.a">全部动态</a>
                    </li>
                    <li <c:if test="${ choose == 2 }">class="active"</c:if>>
                        <a href="/student-community/getMyselfAllDynamics.a?id=10002">我的动态</a>
                    </li>
                    <div class="aw-search-bar pull-right hidden-xs">
                        <i class="icon icon-search"></i>
                        <input type="text" id="question-input" value="${pagination.keyWord }"
                            class="search-query form-control" placeholder="搜索...">
                        <div class="aw-dropdown" style="display: none;">
                            <p class="title">没有找到相关结果</p>
                            <ul class="aw-dropdown-list" style="display: none;"></ul>
                        </div>
                    </div>
                </ul>

            </div>
    <div class="tab-content">
        <div class="tab-pane active" id="home">
            <c:forEach var="dynamicsList" items="${dynamicsList}">
                <div class="aw-item active discuss-content" data-topic-id="1176,814,">
                    <a href="#" class="aw-user-name">${dynamicsList.stu.stuName }</a> <span
                        class="text-color-999">${dynamicsList.dynamicsid}</span> <a class="aw-user-name hidden-xs"
                        data-id="4444" href="http://wenda.golaravel.com/people/%E9%9F%A6%E6%A3%AE"
                        rel="nofollow"><img src="" alt="" /></a>
					<!-- 动态内容 -->
                    <div class="aw-question-content">
                        <h4>
                            <a href="/student-community/jsps/front/answer.jsp">${dynamicsList.dynamicsContent }</a>
                        </h4>
                       
						<!-- 子回复,对评论进行回复 一个按钮-->
    				<form  id="childrenForm"  class="form-horizontal layui-form" method="post">
    					<input type="hidden" name="activity.activityid" value=""/>
						<input type="hidden" name="stu.stuid" value="10002"/>
						<input type="hidden"  name="replyActivityid" value=""/>
						<input type="hidden" name="content"  id="VContent">
						 <div class="layui-form-item layui-form-text" style="display:none;" id="block">
						    <div class="layui-input-block">
						      <textarea class="layui-textarea layui-hide" lay-verify="content" id="LAY_demo_editor"></textarea>
						<div class="layui-form-item">
					    <div class="layui-input-block" style="text-align:center;">
					      <button class="layui-btn" lay-submit lay-filter="demo">立即提交</button>
					      <button class="layui-btn layui-btn-primary" id="close">关闭</button>
					    </div>
					  </div>
						    </div>
					  </div>
				    	<botton  id="childrencomment"  class="layui-btn">
    							评论
    					</botton>
    				</form>
                    </div>
                    <!-- 评论 -->
                     <div>
                        	<c:forEach items="${dynamicsList.replyDynamics}" var="replyDynamicsList" >
                        		<div>姓名${replyDynamicsList.replyDynamicsid}</div>
                        		<div>姓名${replyDynamicsList.stu.stuName}</div>
                        		<div>${replyDynamicsList.content}</div>
                        		<div>评论时间${replyDynamicsList.replyDate}</div>
                        		<%-- <!-- 子评论 -->
                        		<c:if test="${fn:length(replyDynamicsList.replyDynamicses!=null)}">
                        		<c:forEach items="${replyDynamicsList.replyDynamicses}" var="replyDynamicsList.replyDynamicses">
		                        <div style="border:1px solid black;">
		                        ${replyDynamicsList.replyDynamicses.content}
		                        </div>
		                        </c:forEach>
		                        </c:if> --%>
                        	</c:forEach>
                        
                        </div>
                        
                </div>
            </c:forEach>

            <!-------------分页------------->
            <ul class="pagination">
                <li <c:if test="${pagination.currentPage == 1}">class="disabled"</c:if>>
                    <a href="javascript:void(0);" aria-label="Previous" class="prev"> <span
                        aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <c:if test="${pagination.totalPage <= 5}">
                    <c:forEach var="page" begin="1" end="${pagination.totalPage}">
                        <li <c:if test="${pagination.currentPage == page}">class="active"</c:if>>
                            <a href="javascript:void(0);"
                                <c:if test="${pagination.currentPage == page}">onclick="return false"</c:if>
                                class="pageNum">${ page }</a>
                        </li>
                    </c:forEach>
                </c:if>
                <c:if test="${pagination.totalPage > 5}">

                    <c:if test="${pagination.currentPage+5 <= pagination.totalPage}">
                        <c:if test="${pagination.currentPage-5 <= 1}">
                            <c:forEach var="page" begin="1" end="${ pagination.currentPage+5}">
                                <li
                                    <c:if test="${pagination.currentPage == page}">class="active"</c:if>>
                                    <a href="javascript:void(0);"
                                        <c:if test="${pagination.currentPage == page}">onclick="return false"</c:if>
                                        class="pageNum">${ page }</a>
                                </li>
                            </c:forEach>
                        </c:if>
                        <c:if test="${pagination.currentPage-5 > 1}">
                            <c:forEach var="page" begin="${pagination.currentPage-5}"
                                end="${ pagination.currentPage+5}">
                                <li
                                    <c:if test="${pagination.currentPage == page}">class="active"</c:if>>
                                    <a href="javascript:void(0);"
                                        <c:if test="${pagination.currentPage == page}">onclick="return false"</c:if>
                                        class="pageNum">${ page }</a>
                                </li>
                            </c:forEach>
                        </c:if>
                    </c:if>

                    <c:if
                        test="${pagination.currentPage+5 > pagination.totalPage && pagination.currentPage-5 >= 1 }">
                        <c:forEach var="page" begin="${ pagination.currentPage - 5}"
                            end="${ pagination.totalPage}">
                            <li <c:if test="${pagination.currentPage == page}">class="active"</c:if>>
                                <a href="javascript:void(0);"
                                    <c:if test="${pagination.currentPage == page}">onclick="return false"</c:if>
                                    class="pageNum">${ page }</a>
                            </li>
                        </c:forEach>
                    </c:if>
                </c:if>
                <li
                    <c:if test="${pagination.currentPage == pagination.totalPage}">class="disabled"</c:if>>
                    <a href="javascript:void(0);" aria-label="Next" class="next"> <span
                        aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
            <!-------------分页 end------------->
            <!-- end tab 切换 -->
        </div>
    </div>
    </div>
    </div>
    </div>
</body>
<script type="text/javascript">
$(function(){
    console.log(${pagination.currentPage});
    console.log(${pagination.totalPage});
});

    $("#question-input").keydown(function(event) {
        if (event.which == "13")
            window.location="/student-community/getAllDynamics.a?keyWord="+$('#question-input').val()+
            "&currentPage=1";
    });
    
    $('.pageNum').click(function(){
       window.location="/student-community/getAllDynamics.a?keyWord="+$('#question-input').val()+
               "&currentPage="+$(this).html()+"&totalRecord="+${pagination.totalRecord};
    });  
    
    $('.prev').click(function(){
        if(${pagination.currentPage == 1}){
            console.log('上一页不可用');
            return;
        }
        window.location="/student-community/getAllDynamics.a?keyWord="+$('#question-input').val()+
        "&currentPage="+${pagination.currentPage - 1}+"&totalRecord="+${pagination.totalRecord};
    }); 
    $('.next').click(function(){
        if(${pagination.currentPage == pagination.totalPage}){
            console.log('下一页不可用');
            return;
        }
        window.location="/student-community/getAllDynamics.a?keyWord="+$('#question-input').val()+
        "&currentPage="+${pagination.currentPage+1}+"&totalRecord="+${pagination.totalRecord};
    });   
    $('#question-input').val();
</script>
</html>