<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/student-community/layui/css/layui.css" rel="stylesheet">
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/mycssfront.css" rel="stylesheet">
<link href="/student-community/css/style.css" rel="stylesheet">
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
<script src="/student-community/layui/layui.js"></script>

</head>
<body style="padding: 20px;">
<c:forEach items="${commList }" var="comm">
     <div class="col-md-4 col-sm-4 mb ss">
        <div class="white-panel pn">
            <div class="white-header">
                <h4 class="ma-white-ya">
                    <a href="#" class="ma-href-a">${ comm.communityName }</a>
                    <c:if test="${ comm.status == null }">
                        <a hrefs="javascript:void(0)" class="ma-href-a commInfo join" commid="${  comm.communityid }">申请加入</a>
                    </c:if>
                    <c:if test="${ comm.status == 0 }">
                        <a hrefs="javascript:void(0)" class="ma-href-a commInfo" title="已经申请,等待审核">已经申请</a>
                    </c:if>
                 </h4>
            </div>
            <a hrefs="/student-community/stu/getStusByCommid.a?commid=${ comm.communityid }&manage=0" class="thumbnail commInfo">
                <img src="/image/community/${ comm.img }">
            </a>
        </div>
    </div>
</c:forEach>
</body>
<script type="text/javascript">
layui.use(['form'], function(){
    var layer = layui.layer;
  });
$('.join').click(function(){
    var obj = $(this);
    var text = obj.text();
	var commid = obj.attr('commid') 
	if(text == '申请加入'){
	    $.ajax({
	        type:'post',
	        url:'/student-community/comm/joinCommRequest.a',
	        data:{'commid':commid},
	        success:function(data){
	            if(data == '1'){
	                obj.text('已经申请');
	               layer.msg('申请成功,等待审核');
	            }
	        }
	    });
	}    
});
</script>
</html>