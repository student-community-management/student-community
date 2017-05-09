<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="cn">
<head>
<meta charset="utf-8">
<title>学生社区</title>
<link rel="icon" href="/student-community/ico/ico.png">
<link href="/student-community/layui/css/modules/laydate/laydate.css" rel="stylesheet">
<link href="/student-community/layui/css/layui.css" rel="stylesheet">
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/mycssfront.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/layui/layui.js"></script>
<script src="/student-community/layui/lay/modules/layedit.js"></script>
<script src="/student-community/layui/lay/modules/layer.js"></script>
<script src="/student-community/layui/area.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="activity_nav.jsp" %>
		<div class="tab-content">
		<div class="tab-pane active" id="home">
		<c:if test="${aclist != '[]'}">
			<c:forEach items="${aclist}" var="activity">
			<div class="baseone mbox-shadow">
				姓名：${activity.stu.stuName}
				</div><br/>
			</c:forEach>
			</c:if>
			<c:if test="${aclist == '[]'}">
				还没有人报名,赶紧来报名吧!!!!
			</c:if>
			</div>
			
			
		</div>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
//申请报名
  $('#apply').click(function(){
	 layer.confirm('确定要报名吗？', {
	   btn: ['确定','取消'] //按钮 
	}, function(index){
		layer.msg('报名成功');
		document.myfrom.submit();
	}, function(index){
			window.location.href = "${pageContext.request.contextPath}/getlistActivityTaken.a?ActId="+${activity.activityid};
	});  
}); 

//举报按钮
  $('#inform').click(function(){
		 layer.confirm('确定要举报吗？', {
		   btn: ['确定','取消'] //按钮 
		}, function(index){
			layer.msg('已经举报');
			document.myreport.submit();
		}, function(index){
				window.location.href = "${pageContext.request.contextPath}/getlistActivityTaken.a?ActId="+${activity.activityid};
		});  
	});
  /*评论
  */
  $('#comment').click(function(){
	  		layer.msg('已经评论');
			document.reply.submit();
	});
//这是收藏按钮
$('#collect').click(function(){
	layer.msg('已收藏');
	$(this).html('<span class="glyphicon glyphicon-flag" aria-hidden="true"></span>&nbsp;&nbsp;已收藏');
});

//分享
$('#share').click(function(){
	//$(this).attr('data-copytarget','#twitter');
	var url = window.location.href;
layer.msg('<input type="text" id="twitter" value="'+url+'" /> <button data-copytarget="#twitter" id="copyUrl">复制</button>', {icon: 1,time:30000});
});
$('#copyUrl').click(function(){
	layer.msg('已复制,快去告诉你的小伙伴吧');

});

//复制
(function() {
	'use strict';
  document.body.addEventListener('click', copy, true);

	// event handler
	function copy(e) {

    // find target element
    var 
      t = e.target,
      c = t.dataset.copytarget,
      inp = (c ? document.querySelector(c) : null);
    // is element selectable?
    if (inp && inp.select) {
      // select text
      inp.select();
      try {
        // copy text
        document.execCommand('copy');
        inp.blur();
        // copied animation
        t.classList.add('copied');
        setTimeout(function() { t.classList.remove('copied'); }, 1500);
      }
      catch (err) {
        alert('please press Ctrl/Cmd+C to copy');
      }
	}
	}
})();
</script>
</html>
