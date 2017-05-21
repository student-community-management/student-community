<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="cn">
<head>
<meta charset="utf-8">
<title>学生社区</title>
    <%@ include file="nav.jsp"%>
    <%@ include file="my-nav.jsp"%>
    <div class="tab-content">
        <div class="tab-pane active" id="home">

            <c:forEach var="discuss" items="${ discussList }">
                <div class="aw-item active discuss-content" data-topic-id="1176,814,">
                    <div class="aw-question-content">
                        <h4>
                            <c:if test="${discuss.status == 1}">
                                <div  class="disinfo">
                                    <a href="/student-community/discuss/getDicussDetail.a?discussid=${ discuss.discussid}">${discuss.discussTitle }</a>
                                    <a class="delNullDiscuss" discussid="${ discuss.discussid}">[删除]</a>
                                </div>
                            </c:if>
                            <c:if test="${discuss.status == 0}">
                                <a style="color: gray;" href="#">${discuss.discussTitle }</a>
                                <a class="lockReason" discussid="${ discuss.discussid}">[此条讨论已被锁定,点击查看封锁原因]</a>
                                <a class="delLockdiscuss" discussid="${ discuss.discussid}">[删除]</a>
                            </c:if>
                        </h4>
                    </div>
                </div>
            </c:forEach>

            <!-------------分页------------->
            <c:if test="${pagination.totalPage != 0 && pagination.totalPage != null }">
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
            </c:if>
            <!-------------分页 end------------->

            <!-- end tab 切换 -->
        </div>

    </div>

    </div>
  </div>
</div>

</body>
<script type="text/javascript">

layui.use(['form'], function(){
  var form = layui.form();
  var layer = layui.layer;
});




$('.delLockdiscuss').click(function(){
    var discussid = $(this).attr('discussid');
    var $obj = $(this);
    layer.confirm('是否确认删除？', {
        btn: ['确认', '取消']
      }, function(){
          
          $.ajax({
             type:'post',
             url:'/student-community/discuss/del.a',
             data:{'discussid': discussid },
             success:function(data){
                 if(data == '1'){
                     layer.msg('删除成功');
                     $obj.parent().remove();
                 } else {
                     layer.msg('删除失败');
                 }
             }
              
          });
          
      });
    
    
    
});


$('.lockReason').click(function(){
    
    var id = $(this).attr('discussid');
    
    $.ajax({
       url:'/student-community/ld/getLockInfo.a',
       type:'post',
       dataType:'text',
       data:{'discussid':id},
       success:function(data){
 		   var obj = JSON.parse(data);
           var message = '';
           var status = obj.status;
           if(status == 1){
               message = '等待处理结果';
           } else if(message == 0){
               message = '我要修改';
           }
           
           layer.confirm(obj.message, {
               btn: [message,'取消'] //按钮
             }, function(index){
                 	layer.close(index);
               		if(message == '我要修改'){
               		 layer.open({
               		  	type: 2,
               		  	title:'修改话题',
               		   	area : ['970px' , '550px'],
               		  	content: '/student-community/discuss/getBaseInfo.a?discussid='+id
               		  }); 
               		}
             });
           	
       }
    });
    
});


//标题悬浮事件

$('.disinfo').hover(
function () {
    $(this).find('.delNullDiscuss').css('display','inline');
  },
function () {
    $(this).find('.delNullDiscuss').css('display','none');
}
);


$('.delNullDiscuss').click(function(){
    var $obj = $(this);
    var discussid = $obj.attr('discussid');
    
    $.ajax({
        type:'post',
        url:'/student-community/replyDiscuss/getReplyDiscussesCount.a',
        data:{'discussid': discussid },
        success:function(data){
            
            if(data != '0'){
                layer.msg('此讨论下还有回复,不能删除');
            } else {
                
                layer.confirm('是否确认删除？', {
                    btn: ['确认', '取消']
                  }, function(){
                      
                      $.ajax({
                         type:'post',
                         url:'/student-community/discuss/del.a',
                         data:{'discussid': discussid },
                         success:function(data){
                             if(data == '1'){
                                 layer.msg('删除成功');
                                 $obj.parent().remove();
                             } else {
                                 layer.msg('删除失败');
                             }
                         }
                          
                      });
                      
                  }, function(){
                      
                      
                  });
                
            }
        }
    });
});


//直接点击的哪一页
$('.pageNum').click(function(){
   window.location="/student-community/discuss/getMyDiscuss.a?currentPage="+$(this).html()+"&totalRecord="+${pagination.totalRecord};
});  

//上一页
$('.prev').click(function(){
    if(${pagination.currentPage == 1}){
        return;
    }
    window.location="/student-community/discuss/getMyDiscuss.a?currentPage="+${pagination.currentPage - 1}+"&totalRecord="+${pagination.totalRecord};
}); 

//下一页
$('.next').click(function(){
    if(${pagination.currentPage == pagination.totalPage}){
        return;
    }
    window.location="/student-community/discuss/getMyDiscuss.a?currentPage="+${pagination.currentPage+1}+"&totalRecord="+${pagination.totalRecord};
});   
	
</script>
</html>
