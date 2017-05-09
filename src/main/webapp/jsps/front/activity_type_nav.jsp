<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="container">
	<%@ include file="nav.jsp"%>
	<div class="middle">
		<div class="QuestionHeader">
			<div class="QuestionHeader-content">
				<div class="ma-QuestionHeader-main">
					<div class="QuestionHeader-topics"> 
						<div class="mod-head">
							<img alt="" width="300px" height="200px" src="/student-community/pic/${activity.photo[0].photoName}">
						</div>
					</div>
					<div class="mod-body">
						<div class="content markitup-box"></div>
					</div>

				</div>
				<div class="ma-QuestionHeader-side">
					<div class="ma-QuestionFollowStatus-counts">
						<h3>[${activity.community.communityName}]准备纳新了<input type="hidden" id="question-input" value="${pagination.keyWord }"
                            class="search-query form-control" placeholder="搜索..."></h3>
	</div>
	<div class="ma-substance">
	<div class="ma-address">
				地址:${activity.activityLoc}

			</div>
		<div class="ma-apply">
			报名时间:&nbsp;&nbsp;<f:formatDate value="${activity.activityDate}"  pattern="yyyy-MM-dd HH:mm:ss"/>&nbsp;&nbsp;截止时间:&nbsp;&nbsp;<f:formatDate value="${activity.closingDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
		</div>
				</div>
				</div>
			</div>
			<div class="QuestionHeader-footer">
				<div class="QuestionHeader-footer-inner">
					<div class="QuestionHeader-footer-inner-main">
						<div class="QuestionHeader-actions">
							
							<form action="${pageContext.request.contextPath}/reportActivity.a" method="post" name="myreport">
								<button id="share" class="btn" type="button">
								<span class="glyphicon glyphicon-send" aria-hidden="true"></span>&nbsp;&nbsp;分享
							</button>
							<button id="collect" class="btn" type="button">
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>&nbsp;&nbsp;收藏
							</button>
								<input type="hidden" name="activity.activityid" value="${activity.activityid}"/>
								<input type="hidden" name="stu.stuid" value="10002"/>
								<c:if test="${reportActivity == null}">
									<button id="inform" class="btn" type="button">
									<span class="glyphicon glyphicon-flag" aria-hidden="true"></span>&nbsp;&nbsp;举报
								</button>
								</c:if>
								<c:if test="${reportActivity != null}">
									<button id="inform" class="btn" type="button" disabled="disabled">
								<span class="glyphicon glyphicon-flag" aria-hidden="true"></span>&nbsp;&nbsp;已举报
								</button>
								</c:if>
							</form>
						</div>
					</div>
						<div class="ma-btn">
						<form action="${pageContext.request.contextPath}/applyActivity.a" method="post" name="myfrom">
							<input type="hidden" name="activityid" value="${activity.activityid}"/>
							<input type="hidden" name="stuid" value="10002"/>
						<!-- 报过名,按钮不可用 -->
						<c:if test="${activityvalidateFlag!=null}">
							<c:if test="${activityvalidateFlag.stuactivity.validateFlag == 1 }">
							<button  class="btn btn-primary" type="button" disabled="disabled">
								报名成功
							</button>
							</c:if>
						</c:if>
						<c:if test="${activityvalidateFlag==null}">
						<button id="apply" class="btn btn-primary" type="button">
							申请报名
						</button>
						</c:if>
						</form>
						</div>
				</div>
			</div>
		</div>
	</div>
	<div class="base">
		<div class="baseone">
		<div class="ma-baseone-one">
		<ul class="nav nav-tabs" role="tablist">
		<li <c:if test="${ choose == 1 }">class="active"</c:if>>
                        <a href="/student-community/getlistActivityAttention.a?ActId=${activity.activityid}">活动详情</a>
        </li>
        <li <c:if test="${ choose == 2 }">class="active"</c:if>>
            <a href="/student-community/getlistActivityTaken.a?ActId=${activity.activityid}">活动成员</a>
        </li>
        <li <c:if test="${ choose == 3 }">class="active"</c:if>>
            <a href="/student-community/getlistActivityReply.a?ActId=${activity.activityid}">用户讨论</a>
        </li>
	</ul>			
		</div>
		
		
		
		
		
		
