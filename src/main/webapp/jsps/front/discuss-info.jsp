<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="cn">
<head>
<meta charset="utf-8">
<title>学生社区</title>
<link rel="icon" href="/student-community/ico/ico.png">
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/bootstrapValidator.min.css" rel="stylesheet">
<link href="/student-community/css/mycssfront.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
<script src="/student-community/js/bootstrapValidator.min.js"></script>
</head>
<body>
    <%@ include file="nav.jsp"%>
    <%@ include file="discuss-nav.jsp"%>
                <div class="tab-content">
                    <div class="tab-pane active" id="home">

                        <c:forEach var="discuss" items="${ discussList }">
                            <div class="aw-item active discuss-content" data-topic-id="1176,814,">
                                <a href="#" class="aw-user-name">${discuss.stu.stuName }</a> <span
                                    class="text-color-999"> 发起了问题 </span> <a
                                    class="aw-user-name hidden-xs" data-id="4444"
                                    href="http://wenda.golaravel.com/people/%E9%9F%A6%E6%A3%AE"
                                    rel="nofollow"><img src="" alt="" /></a>

                                <div class="aw-question-content">
                                    <a href="/student-community/jsps/front/answer.jsp"
                                        class="pull-right text-color-999">回复</a>
                                    <h4>
                                        <a href="/student-community/jsps/front/answer.jsp">${discuss.discussTitle }</a>
                                    </h4>

                                </div>
                            </div>
                        </c:forEach>

                        <!-------------分页------------->
                        <ul class="pagination">
                            <li <c:if test="${pagination.currentPage == 1}">class="disabled"</c:if>>
                                <a href="javascript:void(0);" aria-label="Previous" class="prev">
                                    <span aria-hidden="true">&laquo;</span>
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
                                        <li <c:if test="${pagination.currentPage == page}">class="active"</c:if>>
                                            <a href="javascript:void(0);"
                                                <c:if test="${pagination.currentPage == page}">onclick="return false"</c:if>
                                                class="pageNum">${ page }</a>
                                        </li>
                                    </c:forEach>
                                    </c:if>
                                    <c:if test="${pagination.currentPage-5 > 1}">
                                    <c:forEach var="page" begin="${pagination.currentPage-5}" end="${ pagination.currentPage+5}">
                                        <li <c:if test="${pagination.currentPage == page}">class="active"</c:if>>
                                            <a href="javascript:void(0);"
                                                <c:if test="${pagination.currentPage == page}">onclick="return false"</c:if>
                                                class="pageNum">${ page }</a>
                                        </li>
                                    </c:forEach>
                                    </c:if>
                                </c:if>
                                
                                <c:if test="${pagination.currentPage+5 > pagination.totalPage && pagination.currentPage-5 >= 1 }">
                                <c:forEach var="page" begin="${ pagination.currentPage - 5}" end="${ pagination.totalPage}">
                                    <li <c:if test="${pagination.currentPage == page}">class="active"</c:if>>
                                        <a href="javascript:void(0);"
                                            <c:if test="${pagination.currentPage == page}">onclick="return false"</c:if>
                                            class="pageNum">${ page }</a>
                                    </li>
                                </c:forEach>
                                </c:if>
                            </c:if>
                            <li <c:if test="${pagination.currentPage == pagination.totalPage}">class="disabled"</c:if>>
                                <a href="javascript:void(0);" aria-label="Next" class="next">
                                    <span aria-hidden="true">&raquo;</span>
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
            window.location="/student-community/discuss/getAllDiscuss.a?keyWord="+$('#question-input').val()+
            "&currentPage=1";
    });
    
    $('.pageNum').click(function(){
       window.location="/student-community/discuss/getAllDiscuss.a?keyWord="+$('#question-input').val()+
               "&currentPage="+$(this).html()+"&totalRecord="+${pagination.totalRecord};
    });  
    
    $('.prev').click(function(){
        if(${pagination.currentPage == 1}){
            console.log('上一页不可用');
            return;
        }
        window.location="/student-community/discuss/getAllDiscuss.a?keyWord="+$('#question-input').val()+
        "&currentPage="+${pagination.currentPage - 1}+"&totalRecord="+${pagination.totalRecord};
    }); 
    
    $('.next').click(function(){
        if(${pagination.currentPage == pagination.totalPage}){
            console.log('下一页不可用');
            return;
        }
        window.location="/student-community/discuss/getAllDiscuss.a?keyWord="+$('#question-input').val()+
        "&currentPage="+${pagination.currentPage+1}+"&totalRecord="+${pagination.totalRecord};
    });   
	
    $('#question-input').val();
</script>
</html>
