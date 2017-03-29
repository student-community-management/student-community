<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${list != '[]'}">
			<c:forEach items="${list}" var="list">
			<table width="100%" cellpadding="0" cellspacing="0" class = "myfont" border="1">
				<tr>
					<th>标题</th>
					<th>社团编号</th>
					<th>活动标题</th>
					<th>活动地点</th>
					<th>活动内容</th>
					<th>报名开始时间</th>
					<th>活动开始时间</th>
					<th>活动截止时间</th>
					<th>活动状态</th>
					<td>取消此活动</td>
					<td>查看活动详细信息</td>
				</tr>
				<tr>
					<td>${list.activityid}</td>
					<td>${list.communityid}</td>
					<td>${list.activityTitle }</td>
					<td>${list.activityLoc}</td>
					<td>${list.activityDate }</td>
					<td>${list.closeingDate }</td>
					<td>${list.startDate }</td>
					<td>${list.endDate }</td>
					<td></td>
					<td><c:if test="${list.status ==1}">
						已经结束
					</c:if>
					<c:if test="${list.status ==0 }">
						<h3>还在报名中!!!!</h3>
					</c:if>
					</td>
					<td></td>
				</tr>
			</table>
			</c:forEach>
		</c:if>
</body>
</html>