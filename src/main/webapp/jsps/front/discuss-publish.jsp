<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<!----------------发布讨论------------->

	<%@ include file="nav.jsp" %>
	<div class="container">
		<ul class="nav nav-tabs nav-justified">
        <li role="presentation"><a
                href="/student-community/discuss/getAllDiscuss.a">话题发现</a></li>
			<li role="presentation" class="active"><a
				href="/student-community/jsps/front/discuss-publish.jsp">发表话题</a></li>
		</ul>
		<div class="page-header">
			<h4>
				<img class="mlist" src="/student-community/ico/list.png" width="20">
				讨论话题
			</h4>
		</div>
		<form class="form-horizontal">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">标题</label>
				<div class="col-sm-9 ">
					<input type="text" class="form-control" id="inputEmail3"
						placeholder="请输入标题">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">内容</label>
				<div class="col-sm-9">
					<textarea class="form-control" rows="3" placeholder="请输入内容"></textarea>
				</div>
			</div>
				<button type="submit" class="btn btn-default"style="width:75%;margin-left:17%">提交</button>
		</form>
	</div>
</body>
</html>