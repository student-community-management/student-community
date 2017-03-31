<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- The above 2 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<style type="text/css">
	#ddd{   
			margin-left: 100px;		
		}
			#aaa{   text-align: center;
			}
			
</style>
<!-- Note there is no responsive meta tag here -->

<link rel="icon" href="/student-community/ico/ico.png">

<title>学生社区</title>
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/mycss.css" rel="stylesheet">
<script src="/student-community/js/jquery-1.11.0.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>

</head>

<body>

<!-- Fixed navbar -->
	<%@ include file="nav.jsp" %>
	<div class="container">	
  <ul class="nav nav-tabs nav-justified">
  <li role="presentation" class="active"><a href="/student-community/jsps/front/discuss.jsp">发表话题</a></li>
  <li role="presentation" ><a href="/student-community/jsps/front/community.jsp">全新论坛</a></li>
 
</ul>
<form class="form-horizontal">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">标题</label>
    <div class="col-sm-9 ">
      <input type="text" class="form-control" id="inputEmail3" placeholder="请输入标题">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">内容</label>
    <div class="col-sm-9">
    <textarea class="form-control" rows="3" placeholder="请输入内容"></textarea>
    </div>
  </div>
  <div id="ddd" class="dropdown" >
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    请选择标签 
   
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu dropdown-menu-left" aria-labelledby="dropdownMenu1">
    <li><a href="#">大话乱天</a></li>
    <li><a href="#">谈天说地</a></li>
    <li><a href="#">上下五百年</a></li>
    <li role="separator" class="divider"></li>
    <li><a href="#">历史新闻</a></li>
  </ul>
 
      <button type="submit" class="btn btn-default">提交</button>

</div>
  <div class="form-group">
    
  </div>
</form>
	</div>
</body>
</html>
