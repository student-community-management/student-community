<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="icon" href="/student-community/ico/ico.png">
<title>学生社区</title>
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/easyui/jquery.easyui.min.js" rel="stylesheet">
<script src="/student-community/easyui/themes/icon.css"></script>
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/mycss.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<script src="/student-community/js/jquery-1.11.0.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- Fixed navbar -->
	<%@include file="nav.jsp" %>
	<div class="container">
		<h3>最新活动</h3>
			<table width="100%" cellpadding="0" cellspacing="0" class = "myfont" border="1">
			
				<tr>
				<td style="width:35%" align="center">社团名称</td>
					<td>
						<select class="form-control" name="communityid.communityid" style="width:250px;">
    							<c:forEach items="${community}" var="community">
    									<option value="${community.communityid}" selected="selected">${community.communityName}</option>
    							</c:forEach>
    						</select>
					</td>
					</tr>
					<tr>
					<td style="width:35%" align="center">活动标题</td>
					<td>
						<input type ="text" id="activityTitle" name="activityTitle" class="form-control" style="width:250px;"/>
					</td>
					</tr>
					<tr>
					<td style="width:35%" align="center">活动类型</td>
					<td>
						<select class="form-control" name="activityTypeid.activityTypeid" style="width:250px;">
    							<c:forEach items="${typelist}" var="typelist">
    									<option value="${typelist.activityTypeid}" selected="selected">${typelist.activityTypeName}</option>
    							</c:forEach>
    						</select>
					</td>
					</tr>
					<tr>
					<td style="width:35%" align="center">活动内容</td>
					<td>
						<input type ="text" id="activityContent" name="activityContent" class="form-control" style="width:250px;"/>
					</td>
					</tr>
					<tr>
						<td style="width:35%" align="center">活动位置</td>
						<td>
							<input type ="text" id="activityLoc" name="activityLoc" class="form-control" style="width:250px;"/>
						</td>
					</tr>
						<tr>
   					<td style="width:35%" align="center">活动地址</td>
   					<td><input type ="text" id="activityLocN" value="${activity.activityLoc}" name="activityLoc" class="form-control" style="width:250px;"/>
   						<span style="display:none" id="activityLocN"><font color="red">活动地址不能为空</font></span>
   					</td>
   					</tr>
   					<tr>
   					<td style = "width:35%" align="center">活动内容</td>
   					<td><input type ="text" id="activityContent" value="${activity.activityContent}" name="activityContent" class="form-control" style="width:250px;"/>
   						<span style="display:none" id="activityContentN"><font color="red">活动内容不能为空</font></span>
   					</td>
   					</tr>
   					<tr>
   					<td style="width:35%" align="center">活动报名日期</td>
   					<td><input type ="text" id="activityDateN" value="${activity.activityDate}" name="activityDate" class="form-control" style="width:250px;"/>
   						<span style="display:none" id="activityDateN"><font color="red">日期不能为空</font></span>
   					</td>
   					</tr>
   					<tr>
   					<td style="width:35%" align="center">活动截止日期</td>
   					<td><input type ="text" id="closeingDateN" value="${activity.closeingDate}" name="closeingDate" class="form-control" style="width:250px;"/>
   						<span style="display:none" id="closeingDateN"><font color="red">日期不能为空</font></span>
   					</td>
   			</tr>
   			<tr>
   					<td style="width:35%" align="center">活动截止日期</td>
   					<td><input type ="text" id="startDateN" value="${activity.startDate}" name="startDate" class="form-control" style="width:250px;"/>
   						<span style="display:none" id="startDateN"><font color="red">日期不能为空</font></span>
   					</td>
   			</tr>
   			<tr>
   					<td style="width:35%" align="center">活动截止日期</td>
   					<td><input type ="text" id="endDateN" value="${activity.endDate}" name="endDate" class="form-control" style="width:250px;"/>
   						<span style="display:none" id="endDateN"><font color="red">日期不能为空</font></span>
   					</td>
   			</tr>
			</table>
			</div>
</body>
</html>