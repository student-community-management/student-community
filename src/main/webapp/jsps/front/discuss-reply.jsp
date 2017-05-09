<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="cn">
<head>
<meta charset="utf-8">
<title>学生社区</title>
<link rel="icon" href="/student-community/ico/ico.png">
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/bootstrapValidator.min.css" rel="stylesheet">
<link href="/student-community/layui/css/layui.css" rel="stylesheet">
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/mycssfront.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
<script src="/student-community/js/bootstrapValidator.min.js"></script>
<script src="/student-community/layui/layui.js"></script>
<script src="/student-community/layui/lay/modules/layedit.js"></script>
</head>
<body style="width:590px;min-width: 590px;">
    <c:forEach items="${ replyDiscussList }" var="replyDiscuss">
        <div class="base mbox-shadow">
            <div class="baseone" style="width:550px;min-width: 550px;">${ replyDiscuss.stu.stuName }的回复
                <div class="discuss-reply-content">${replyDiscuss.content }</div>
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
                        <li <c:if test="${pagination.currentPage == page}">class="active"</c:if>>
                            <a href="javascript:void(0);"
                                <c:if test="${pagination.currentPage == page}">onclick="return false"</c:if>
                                class="pageNum">${ page }</a>
                        </li>
                    </c:forEach>
                </c:if>
                <c:if test="${pagination.currentPage-5 > 1}">
                    <c:forEach var="page" begin="${pagination.currentPage-5}"
                        end="${ pagination.currentPage+5}">
                        <li <c:if test="${pagination.currentPage == page}">class="active"</c:if>>
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
        <li <c:if test="${pagination.currentPage == pagination.totalPage}">class="disabled"</c:if>>
            <a href="javascript:void(0);" aria-label="Next" class="next"> <span
                aria-hidden="true">&raquo;</span>
            </a>
        </li>
    </ul>
    <!-------------分页 end------------->

</body>
<script type="text/javascript">
//直接点击的哪一页
$('.pageNum').click(function(){
   window.location="/student-community/replyDiscuss/getReplies.a?currentPage="+$(this).html()
           +"&totalRecord="+${pagination.totalRecord}+'&replyDiscussid='+${replyDiscussid};
});  

//上一页
$('.prev').click(function(){
    if(${pagination.currentPage == 1}){
        return;
    }
    window.location="/student-community/replyDiscuss/getReplies.a?currentPage="
            +${pagination.currentPage - 1}+"&totalRecord="+${pagination.totalRecord}+'&replyDiscussid='+${replyDiscussid};
}); 

//下一页
$('.next').click(function(){
    if(${pagination.currentPage == pagination.totalPage}){
        return;
    }
    window.location="/student-community/replyDiscuss/getReplies.a?currentPage="
            +${pagination.currentPage+1}+"&totalRecord="+${pagination.totalRecord}+'&replyDiscussid='+${replyDiscussid};
});

</script>
</html>