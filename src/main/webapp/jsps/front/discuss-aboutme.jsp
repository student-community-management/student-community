<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="cn">
<head>
<meta charset="utf-8">
<title>学生社区</title>
    <%@ include file="nav.jsp"%>
    <%@ include file="discuss-nav.jsp"%>
    <div class="tab-content">
        <div class="tab-pane active" id="home">
            <c:forEach var="discuss" items="${ discussList }">
                <div class="aw-item active discuss-content" data-topic-id="1176,814,">
                    <div class="aw-question-content">
                        <h4>
                            <a href="/student-community/discuss/getDicussDetail.a?discussid=${ discuss.discussid}">${discuss.discussTitle }</a>
                        </h4>
                    </div>
                </div>
            </c:forEach>

            <!-------------分页------------->
            <c:if test="${pagination.totalPage != 0 && pagination.totalPage != null }">
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
            </c:if>
            <c:if test="${pagination.totalPage == 0 || pagination.totalPage == null }">
                暂无关注的话题!
            </c:if>
            <!-------------分页 end------------->

            <!-- end tab 切换 -->
        </div>
    </div>
    </div>
    </div>
</body>
<script type="text/javascript">
<%@ include file="discuss-publish-btn.jsp"%>
    $("#question-input").keydown(function(event) {
        if (event.which == "13")
            window.location="/student-community/discuss/getAllDiscuss.a?keyWord="+$('#question-input').val()+
            "&currentPage=1";
    });
    
    $('.pageNum').click(function(){
       window.location="/student-community/discuss/getChoicenessDiscuss.a?keyWord="+$('#question-input').val()+
               "&currentPage="+$(this).html()+"&totalRecord="+${pagination.totalRecord};
    });  
    
    $('.prev').click(function(){
        if(${pagination.currentPage == 1}){
            console.log('上一页不可用');
            return;
        }
        window.location="/student-community/discuss/getChoicenessDiscuss.a?keyWord="+$('#question-input').val()+
        "&currentPage="+${pagination.currentPage - 1}+"&totalRecord="+${pagination.totalRecord};
    }); 
    
    $('.next').click(function(){
        if(${pagination.currentPage == pagination.totalPage}){
            console.log('下一页不可用');
            return;
        }
        window.location="/student-community/discuss/getChoicenessDiscuss.a?keyWord="+$('#question-input').val()+
        "&currentPage="+${pagination.currentPage+1}+"&totalRecord="+${pagination.totalRecord};
    });   
	
    $('#question-input').val();
</script>
</html>
