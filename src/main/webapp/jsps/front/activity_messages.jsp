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
 <div class="col-lg-6">
    	<div class="input-group">
    		<c:forEach items="${replyActivitylist}" var="replyActivitylist">
    		<div class="tab-pane" id="profile">
    				<div class="baseone mbox-shadow">${replyActivitylist.stu.stuName}
    				内容&nbsp;&nbsp;${replyActivitylist.content}
    				<input type="hidden" name="replyActivityid" value="${replyActivitylist.replyActivityid}"/>
    				评论时间&nbsp;&nbsp;<f:formatDate value="${replyActivitylist.replyDate}" type="both" pattern="yyyy-MM-dd HH:mm:ss"/>
    				<!-- 子回复,对评论进行回复 -->
    				<form  id="childrenForm${replyActivitylist.replyActivityid}"  class="form-horizontal layui-form" method="post">
    					<input type="hidden" name="activity.activityid" value="${activity.activityid}"/>
						<input type="hidden" name="stu.stuid" value="10002"/>
						<input type="hidden"  name="replyActivityid" value="${replyActivitylist.replyActivityid}"/>
						<input type="hidden" name="content"  id="VContent${replyActivitylist.replyActivityid}">
						 <div class="layui-form-item layui-form-text" style="display:none;" id="block${replyActivitylist.replyActivityid}">
						    <div class="layui-input-block">
						      <textarea class="layui-textarea layui-hide" lay-verify="content" id="LAY_demo_editor${replyActivitylist.replyActivityid}"></textarea>
						<div class="layui-form-item">
					    <div class="layui-input-block" style="text-align:center;">
					      <button class="layui-btn" lay-submit lay-filter="demo${replyActivitylist.replyActivityid}">立即提交</button>
					      <button class="layui-btn layui-btn-primary" id="close${replyActivitylist.replyActivityid}">关闭</button>
					    </div>
					  </div>
						    </div>
					  </div>
				    	<botton  id="childrencomment${replyActivitylist.replyActivityid}"  class="layui-btn">
    							回复
    					</botton>
    				</form>
    				</div>
    					&nbsp;&nbsp;
    					<!-- 子评论 -->
    					<c:forEach items="${replyActivitylist.replyActivities}" var="list">
    						<div class="baseone mbox-shadow">
    							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${list.stu.stuName}
    							内容&nbsp;&nbsp;${list.content}
    							回复时间&nbsp;&nbsp;<f:formatDate value="${list.replyDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
    						</div>
    					</c:forEach>
    			</div>
    			<script type="text/javascript">
    			 $('#childrencomment${replyActivitylist.replyActivityid}').on('click', function() {
						$('#block${replyActivitylist.replyActivityid}').show();
				});
    			 $('#close${replyActivitylist.replyActivityid}').on('click', function() {
						$('#block${replyActivitylist.replyActivityid}').hide();
				});
    			</script>
    			<script type="text/javascript">
    			layui.use('laydate', function(){
    				  var laydate = layui.laydate;
    			});
    			layui.use(['form', 'layedit', 'laydate'], function(){
    				  var form = layui.form()
    				  ,layer = layui.layer
    				  ,layedit = layui.layedit
    				  ,laydate = layui.laydate;
    				  //创建一个编辑器
    				  var editIndex = layedit.build('LAY_demo_editor${replyActivitylist.replyActivityid}',{height:100,width:1000});
    				  //监听提交
    				  form.on('submit(demo${replyActivitylist.replyActivityid})', function(data){
    					 $("#VContent${replyActivitylist.replyActivityid}").val(layedit.getContent(editIndex));
    					 $.ajax({
    						 url:"${pageContext.request.contextPath}/ReplyActivityChildren.a",
    						 type:"post",
    						 data: $("#childrenForm${replyActivitylist.replyActivityid}").serialize(),
    				           	success:function(data){
    							 window.location="${pageContext.request.contextPath}/getlistActivityReply.a?ActId="+${activity.activityid};
    						 }
    					 })
    				     return false;
    				  })
    				});
    			    </script>
    		</c:forEach>
    		<!-- 对活动发表的意见 -->
	      <form action="${pageContext.request.contextPath}/ReplyActivityParent.a" method="post" name="reply">
	      <span class="input-group-btn">
	        <input type="hidden" name="activity.activityid" value="${activity.activityid}"/>
			<input type="hidden" name="stu.stuid" value="10002"/>
	        <input type="text" name="content" class="form-control"  placeholder="Sends...">
	      <button class="btn btn-default" id="comment" type="button">
	      	发表评论
	      	</button>
	      </span>
	      </form>
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
			window.location = "${pageContext.request.contextPath}/getlistActivityReply.a?ActId=${activity.activityid}";
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
				window.location = "${pageContext.request.contextPath}/getlistActivityReply.a?ActId=${activity.activityid}";
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
<script type="text/javascript">
$(function(){
    console.log(${pagination.currentPage});
    console.log(${pagination.totalPage});
});

    $("#question-input").keydown(function(event) {
        if (event.which == "13")
            window.location="/student-community/getlistActivityReply.a?keyWord="+$('#question-input').val()+
            "&currentPage=1&ActId="+${activity.activityid};
    });
    
    $('.pageNum').click(function(){
       window.location="/student-community/getlistActivityReply.a?keyWord="+$('#question-input').val()+
               "&currentPage="+$(this).html()+"&totalRecord="+${pagination.totalRecord}+"&ActId="+${activity.activityid};
    });  
    
    $('.prev').click(function(){
        if(${pagination.currentPage == 1}){
            console.log('上一页不可用');
            return;
        }
        window.location="/student-community/getlistActivityReply.a?keyWord="+$('#question-input').val()+
        "&currentPage="+${pagination.currentPage - 1}+"&totalRecord="+${pagination.totalRecord}+"&ActId="+${activity.activityid};
    }); 
    $('.next').click(function(){
        if(${pagination.currentPage == pagination.totalPage}){
            console.log('下一页不可用');
            return;
        }
        window.location="/student-community/getlistActivityReply.a?keyWord="+$('#question-input').val()+
        "&currentPage="+${pagination.currentPage+1}+"&totalRecord="+${pagination.totalRecord}+"&ActId="+${activity.activityid};
    });   
    $('#question-input').val();
</script>
</html>
