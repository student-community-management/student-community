<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>修改活动信息</title>
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/easyui/jquery.easyui.min.js" rel="stylesheet">
<script src="/student-community/easyui/themes/icon.css"></script>
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/mycss.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<script src="/student-community/js/jquery-1.11.0.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
	function getAll(){
		document.myfrom.submit();//表单提交
	}
</script>
<body>
	<form action="${pageContext.request.contextPath}/updateActivity.a"  method="post" name="myfrom" id="myfrom"> 
	<table width="100%" cellpadding="0" cellspacing="0" class = "myfont" border="0">
			<tr>	
   					<td style="width:35%" align="center">社团名称
   					<input type ="hidden" id="activityid" value="${activity.activityid}" name="activityid"/>
   					</td>
   					<td>
   					<select class="form-control" name="community.communityid" style="width:150px;">
    							<c:forEach items="${community}" var="community">
    								<c:if test="${community.communityid == activity.community.communityid}">
    									<option value="${community.communityid}" selected="selected">${community.communityName}</option>
    								</c:if>
    								<c:if test="${community.communityid != activity.community.communityid}">
    									<option value="${community.communityid}" selected="selected">${community.communityName}</option>
    								</c:if>
    							</c:forEach>
    						</select>
   					</td>
   					</tr>
   					<tr>
   					<td style="width:35%" align="center">活动标题</td>
   					<td><input type ="text" id="activityTitle" value="${activity.activityTitle}" name="activityTitle" class="form-control" style="width:250px;"/>
   						<span style="display:none" id="activityTitleN"><font color="red">标题不能为空</font></span>
   					</td>
   					</tr>
   					<tr>
    					<td align="center">活动类型</td>
    					<td>
    						<select class="form-control" name="activityType.activityTypeid" style="width:150px;">
    							<c:forEach items="${typelist}" var="typelist">
    								<c:if test="${typelist.activityTypeid== activity.activityType.activityTypeid}">
    									<option value="${typelist.activityTypeid}" selected="selected">${typelist.activityTypeName}</option>
    								</c:if>
    								<c:if test="${typelist.activityTypeid!=activity.activityType.activityTypeid}">
    									<option value="${typelist.activityTypeid}" >${typelist.activityTypeName}</option>
    								</c:if>
    							</c:forEach>
    						</select>
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
   			<tr>
			            <td align="center" colspan="2">
			                <input type="button" value = "保存" class="btn btn-info" onclick="getAll();"/>
			            </td>
			</tr>
		</table>
	</form>
</body>
</html>