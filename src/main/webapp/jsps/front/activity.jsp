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
<link href="/student-community/ma/css/bootstrap.css" rel="stylesheet">
<link href="/student-community/ma/macss/style.css" rel="stylesheet">
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
	<div class="topone">
		<div class="ccc">
		<div class="hb">
			<h2>公告栏 </h2>  
		</div>
		<div class="bd">
			<small><a>本活动内容最终解释权归版权方所有</a></small>
		</div>
		</div>
			<div class="moddces">
			<div class="modc-two">
				<div class="events-list-s">
					<div class="col-md-4 col-sm-4 mb">
                      		<div class="white-panel pn">
                      			<div class="white-header">
						  			<h4 class="ma-white-ya"><a href="#" class="ma-href-a">校园祭</a></h4>
                      			</div>
								<a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
            <img src="/student-community/img/111.jpg">
        </a>
                      		</div>
                      	</div><!-- /col-md-4 -->
                      	<!-- 循环 -->
                      	<div class="col-md-4 col-sm-4 mb">
                      		<div class="white-panel pn">
                      			<div class="white-header">
						  			<h4 class="ma-white-ya"><a href="#" class="ma-href-a">校园祭</a></h4>
                      			</div>
								<a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
            <img src="/student-community/img/111.jpg">
        </a>
                      		</div>
                      	</div><!-- /col-md-4 -->
                      	<!-- 循环 -->
                      	<div class="col-md-4 col-sm-4 mb">
                      		<div class="white-panel pn">
                      			<div class="white-header">
						  			<h4 class="ma-white-ya"><a href="#" class="ma-href-a">校园祭</a></h4>
                      			</div>
								<a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
            <img src="/student-community/img/111.jpg">
        </a>
                      		</div>
                      	</div><!-- /col-md-4 -->
                      	<!-- 循环 -->
                      	<div class="col-md-4 col-sm-4 mb">
                      		<div class="white-panel pn">
                      			<div class="white-header">
						  			<h4 class="ma-white-ya"><a href="#" class="ma-href-a">校园祭</a></h4>
                      			</div>
								<a href="/student-community/jsps/front/personal-community-info.jsp" class="thumbnail">
            <img src="/student-community/img/111.jpg">
        </a>
                      		</div>
                      	</div><!-- /col-md-4 -->
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
