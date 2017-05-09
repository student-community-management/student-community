<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="cn">
<head>
<meta charset="utf-8">
<title>学生社区</title>
<link rel="icon" href="/student-community/ico/ico.png">
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/bootstrapValidator.min.css" rel="stylesheet">
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/mycssfront.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
<script src="/student-community/js/bootstrapValidator.min.js"></script>
</head>
<body>
	<%@ include file="nav.jsp"%>
	<div class="container">
	<div class="middle">
		<ul class="nav nav-tabs nav-justified">
			<li role="presentation" class="active"><a
				href="/student-community/getActivity.a">活动社区</a></li>
		</ul>
	<div class="topone">
		<div class="ccc">
		<div class="hb">
		<h2 class="glyphicon glyphicon-user"><span><input type="text" id="question-input" value="${pagination.keyWord}"
                     class="search-query form-control" placeholder="搜索..."></span>公告栏   </h2>
                  
		</div>
		<div class="bd">
			<small><a>本活动内容最终解释权归版权方所有</a></small>
		</div>
		</div>
			<div class="moddces">
			<div class="modc-two">
				<div class="events-list-s">
					<ul class="list-m">
						<li class="item-s">
						<li class="item closes">
						<c:if test="${activityList != '[]'}">
							<c:forEach items="${activityList}" var="activityList">
							<div class="date">
								已结束
							<span class="follow">加关注</span>
							</div>
							<div class="pic">
							</div>
							<div class="info">
								<h3>
									<a href="/student-community/getlistActivityAttention.a?ActId=${activityList.activityid}">${activityList.activityTitle}</a>
								</h3>
							</div>
							<div class="date">
								<button class="btn " type="button">
							<c:if test="${activityList.closingDate>=currentTime}">
									在报名
								</c:if>
								<c:if test="${activityList.closingDate<currentTime}">
									<h3>该活动已经结束!!!!</h3>
								</c:if>
						</button>
						<button class="btn btn-primary " type="button">
							${activityList.community.communityName}
						</button>
							</div>
							</c:forEach>
							</c:if>
						</li>
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
					</ul>
					
            <!-------------分页 end------------->
				</div>
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
            window.location="/student-community/getActivity.a?keyWord="+$('#question-input').val()+
            "&currentPage=1";
    });
    
    $('.pageNum').click(function(){
       window.location="/student-community/getActivity.a?keyWord="+$('#question-input').val()+
               "&currentPage="+$(this).html()+"&totalRecord="+${pagination.totalRecord};
    });  
    
    $('.prev').click(function(){
        if(${pagination.currentPage == 1}){
            console.log('上一页不可用');
            return;
        }
        window.location="/student-community/getActivity.a?keyWord="+$('#question-input').val()+
        "&currentPage="+${pagination.currentPage - 1}+"&totalRecord="+${pagination.totalRecord};
    }); 
    $('.next').click(function(){
        if(${pagination.currentPage == pagination.totalPage}){
            console.log('下一页不可用');
            return;
        }
        window.location="/student-community/getActivity.a?keyWord="+$('#question-input').val()+
        "&currentPage="+${pagination.currentPage+1}+"&totalRecord="+${pagination.totalRecord};
    });   
    $('#question-input').val();
</script>
</html>