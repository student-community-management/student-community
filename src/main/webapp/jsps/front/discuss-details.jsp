<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="cn">
<head>
<meta charset="utf-8">
<title>${ discuss.discussTitle }</title>
<link rel="icon" href="/student-community/ico/ico.png">
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/bootstrapValidator.min.css" rel="stylesheet">
<link href="/student-community/layui/css/layui.css" rel="stylesheet">
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/mycssfront.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
<script src="/student-community/js/bootstrapValidator.min.js"></script>
<script src="/student-community/layui/layui.js"></script>
<script src="/student-community/layui/lay/modules/layedit.js"></script>
</head>
<body>

    <div class="container">
        <%@ include file="nav.jsp"%>
        <div class="middle mbox-shadow">
            <div class="QuestionHeader">
                <div class="QuestionHeader-content">
                    <div class="may-QuestionHeader-main">
                        <div class="QuestionHeader-topics">
                            <div class="mod-head">
                               <span style="font-size:25px;"> ${ discuss.discussTitle }</span>
                            </div>
                        </div>
                        <div class="mod-body">
                            <div class="content markitup-box">${ discuss.discussContent }</div>
                        </div>

                    </div>
                    <div class="may-QuestionHeader-side">
                        <div class="QuestionFollowStatus-counts">
                            <div class="btn-group" role="group" aria-label="...">
                                <button class="btn " type="button">关注者<span id="attentionNum">${ attentionNum }</span> </button>
                                <c:if test="${ checkAttention == 1 }">
                                    <button class="btn btn-primary" type="button" id="attention">取消关注</button>
                                </c:if>
                                <c:if test="${ checkAttention == 0 || checkAttention == null }">
                                    <button class="btn btn-primary" type="button" id="attention">关注话题</button>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="QuestionHeader-footer">
                    <div class="QuestionHeader-footer-inner">
                        <div class="QuestionHeader-footer-inner-main">
                            <div class="QuestionHeader-actions">
                                <button id="share" class="btn" type="button">
                                    <span class="glyphicon glyphicon-send" aria-hidden="true"></span>&nbsp;&nbsp;分享
                                </button>
                                <c:if test="${checkReport == 0 || checkReport == null }">
                                <button class="btn" type="button" id="report"><span class="glyphicon glyphicon-flag" aria-hidden="true"></span>&nbsp;&nbsp;举报</button>
                                </c:if>
                                <c:if test="${checkReport == 1 }">
                                <button class="btn" type="button">
                                    <span class="glyphicon glyphicon-flag disable" aria-hidden="true"></span>&nbsp;&nbsp;已举报
                                </button>
                                </c:if>
                                <span> 发布时间: ${ fn:substring(discuss.discussDate,0,fn:length(discuss.discussDate)-2)}</span>
                                <span>提问者:${discuss.stu.stuName}  </span>
                            </div>
                        </div>
                        <div class="QuestionHeader-footer-inner-side">
                            <div class="QuestionButtonGroup">
                                <button type="button" class="btn" data-toggle="modal" style="width:150px;" id="answer">写回答</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div> 
        </div>
        <c:if test="${ pagination.totalRecord > 0 }">
        <c:forEach var="replyDiscuss" items="${ replyDiscussList }">
        <div class="base mbox-shadow">
                <div class="baseone" >${ replyDiscuss.stu.stuName }的回答
                <input type="hidden" value="${ replyDiscuss.replyDiscussid }" class="replyDiscussid">
                    <div class="discuss-reply-content" >${replyDiscuss.content }</div>
                    <button type="button" <c:if test="${ replyDiscuss.checkPraise == 1 }"> class="btn btn-default btn-sm up active"</c:if>
                     <c:if test="${ replyDiscuss.checkPraise != 1 }"> class="btn btn-default btn-sm up"</c:if>>
                      <span class="glyphicon glyphicon-chevron-up"></span><span class="upNum">${replyDiscuss.praiseCount }</span> 
                    </button>
                    <button type="button" <c:if test="${ replyDiscuss.checkAgainst == 1 }"> class="btn btn-default btn-sm down active"</c:if> 
                    <c:if test="${ replyDiscuss.checkAgainst != 1 }"> class="btn btn-default btn-sm down"</c:if>>
                      <span class="glyphicon glyphicon-chevron-down"></span><span class="downNum">${replyDiscuss.againstCount }</span>
                    </button>
                     <button type="button" class="btn btn-default btn-sm reply">回复</button>
                    <c:if test="${sessionScope.fstu.stuid == replyDiscuss.stu.stuid }">
                        <button type="button" class="btn btn-default btn-sm del">删除此回复</button>
                    </c:if>
                         <button type="button" class="btn btn-default btn-sm look">查看回复</button>
                </div>
        </div>
        </c:forEach>
        </c:if>
        <c:if test="${ pagination.totalRecord ==0 }">
            <div class="base mbox-shadow">
            <div class="baseone" >
                              暂无回复,赶紧来回答吧!
            </div>
            </div>
        </c:if>
         <!-------------分页------------->
         <c:if test="${ pagination.totalRecord != 0 }">
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
            <form class="form-horizontal layui-form" method="POST" id="replyDiscussForm" 
                action="">
            <input type="hidden" value="${ discuss.discussid }" name="discuss.discussid" id="discussid">
            <div class="layui-form-item layui-form-text">
                  <textarea class="layui-textarea layui-hide" lay-verify="content" id="editor" name="content"></textarea>
            </div>
            <div class="btn-group" role="group" style="width:100%">
                <center>
                     <button type="button" class="btn btn-default" style="width:400px;" id="ss">提交</button>
                </center>
            </div>
        </form>
        
    </div>
</body>
<script type="text/javascript">
var layedit;
var editIndex;
layui.use(['form', 'layedit'], function(){
  var form = layui.form();
  var layer = layui.layer;
  layedit = layui.layedit;
  
  //创建一个编辑器
  editIndex = layedit.build('editor');
  
});
    

$('#ss').click(function (){
    var content = layedit.getContent(editIndex);
    var length =content.length;
    if(length == 0){
        layer.msg('内容不能为空'); 
        return false;
    }
    
    if(length < 3){
        layer.msg('会的大内容不能少于三个字符'); 
        return false;
    }
    
   layer.msg('发表成功',{time:1000}); 
   setTimeout(function(){
        $.ajax({
            type:'post',
            url:'/student-community/replyDiscuss/save.a',
            data:{'discuss.discussid':$('#discussid').val(),'content':content},
            success:function(data){
                if(data == "1"){
                   window.location.reload();
                }
            }
        });
    },1000);
});


// 举报
$('#report').click(function(){
    var $btn = $(this);
    var $text = $(this).html();
    
    console.log('text='+$text);
    if($text == '<span class="glyphicon glyphicon-flag" aria-hidden="true"></span>&nbsp;&nbsp;举报'){
        layer.prompt({
       		formType: 2,
       	  	title: '请输入你要举报的内容200字内',
       		maxlength: 200,
       	  	area: ['230px', '230px'] //自定义文本域宽高
       		}, function(value, index){
       		 $.ajax({
                 type:'post',
                 url:'/student-community/rd/save.a',
                 data:{"discuss.discussid":${ discuss.discussid },'message':value},
                 success:function(data){
                     if(data == '1'){
                         layer.msg('添加评论成功');
                         $btn.html('<span class="glyphicon glyphicon-flag" aria-hidden="true"></span>&nbsp;&nbsp;已举报');
                         $btn.addClass('disable');
                         layer.close(index);
                     }
                 }
              });
           	  
       		}
       	);
    }
    
});



// 关注
$('#attention').click(function(){
    var $text = $(this).html();
    var $btn = $(this);
    var $num = parseInt($('#attentionNum').text());
    if($text == '取消关注'){
        $.ajax({
            type:'post',
            url:'/student-community/ad/del.a',
            data:{"discuss.discussid":${ discuss.discussid }},
            success:function(data){
                if(data == '1'){
                    $btn.html('关注话题');
                    $('#attentionNum').text($num-1);
                }
            }
         });
    } else if($text == '关注话题'){
        $.ajax({
            type:'post',
            url:'/student-community/ad/save.a',
            data:{"discuss.discussid":${ discuss.discussid }},
            success:function(data){
                if(data == '1'){
                    $btn.html('取消关注');
                    $('#attentionNum').text($num+1);
                }
            }
         });
        
    }
    
    
});


//点赞
$('.up').click(function(){
    var replyDiscussid = $(this).parent().find('.replyDiscussid').val();
    var $up    = $(this).find('.upNum')
    var $upNum = parseInt($up.text());
 	var active = $(this).attr('class');
 	var $btn   = $(this);
 	
 	if(active.indexOf('active') == -1){
	    $.ajax({
	        type:'post',
	        url:'/student-community/prd/save.a',
	        data:{"replyDiscuss.replyDiscussid":replyDiscussid},
	        success:function(data){
	            if(data == '1'){
	                $btn.addClass("active");
    	            $up.text($upNum+1);
	            }
	        }
	    });
	    
       } else {
           $.ajax({
   	        type:'post',
   	        url:'/student-community/prd/delete.a',
   	        data:{"replyDiscuss.replyDiscussid":replyDiscussid},
   	        success:function(data){
   	            if(data == '1'){
   	             	$btn.removeClass("active");
   	         		$up.text($upNum-1);
   	            }
   	        }
   	       });
        
       }
	
});

// 踩
$('.down').click(function(){
    var replyDiscussid = $(this).parent().find('.replyDiscussid').val();
    var $down    = $(this).find('.downNum');
    var $downNum = parseInt($down.text());
 	var active   = $(this).attr('class');
 	var $btn     = $(this)
 	
	if(active.indexOf('active') == -1){
	    
	    $.ajax({
	        type:'post',
	        url:'/student-community/ard/save.a',
	        data:{"replyDiscuss.replyDiscussid":replyDiscussid},
	        success:function(data){
	            if(data == '1'){
	                $btn.addClass("active");
    	            $down.text($downNum+1);
	            }
	        }
	    });
	    
       } else {
           $.ajax({
   	        type:'post',
   	        url:'/student-community/ard/delete.a',
   	        data:{"replyDiscuss.replyDiscussid":replyDiscussid},
   	        success:function(data){
   	            if(data == '1'){
   	             	$btn.removeClass("active");
   	             	$down.text($downNum-1);
   	            }
   	        }
   	       });
        
       }
});

// 删除回复
$('.del').click(function(){
   	var $parent = $(this).parent().parent();
   	var $replyDiscussid = $(this).parent().find('.replyDiscussid').val();
    layer.confirm('此条回复是您写的所以您才可以删除.是否确定删除?',{icon:3,title:'温馨提示'},function(index){
        $.ajax({
         	type:'post',   
            url:'/student-community/replyDiscuss/del.a',
            data:{replyDiscussid : $replyDiscussid },
            success:function(data){
                if(data == '1'){
                    layer.msg('删除成功');
                    $parent.remove();
                }
            }
            
        });
    });
});


// 回复讨论中的回答

$('.reply').click(function(){
   	var $replyDiscussid = $(this).parent().find('.replyDiscussid').val();
   	layer.prompt({
   		formType: 2,
   	  	title: '请出入你要回复的内容200字内',
   		maxlength: 200,
   	  	area: ['230px', '230px'] //自定义文本域宽高
   		}, function(value, index, elem){
       	  
   		  	$.ajax({
   		  	    type:'post',
   		  	    url:'/student-community/replyDiscuss/replyToReplyDiscuss.a',
   		  	    data:{'replyDiscuss.replyDiscussid':$replyDiscussid,'content':value  },
   		  	    success:function(data){
   		  	        layer.msg('添加评论成功');
   		  	   		layer.close(index);
   		  	    }
   		  	});
   		    
       	  
   		}
   	);
   	
   	
    
});

// 查看回复

$('.look').click(function(){
    var $replyDiscussid = $(this).parent().find('.replyDiscussid').val();
    $.ajax({
        type:'post',
        url:'/student-community/replyDiscuss/getRepliesCount.a',
        data:{'replyDiscussid':$replyDiscussid},
        success:function(data){
            if(data == '0' || data == 'null'){
                layer.msg('此评论下没有回复');
            } else {
                layer.open({
                    type:2,
                    title:'查看回复',
                    content:'/student-community/replyDiscuss/getReplies.a?totalRecord='+parseInt(data)
                            +'&replyDiscussid='+$replyDiscussid,
                    area:['600px','90%'],
                    btn:['关闭']
                });
                
            }
        }
    });
});

//-------------------------------------分页---------------------------------------
//直接点击的哪一页
$('.pageNum').click(function(){
   window.location="/student-community/discuss/getAllDiscuss.a?keyWord="+$('#question-input').val()+
           "&currentPage="+$(this).html()+"&totalRecord="+${pagination.totalRecord};
});  

//上一页
$('.prev').click(function(){
    if(${pagination.currentPage == 1}){
        return;
    }
    window.location="/student-community/discuss/getAllDiscuss.a?keyWord="+$('#question-input').val()+
    "&currentPage="+${pagination.currentPage - 1}+"&totalRecord="+${pagination.totalRecord};
}); 

//下一页
$('.next').click(function(){
    if(${pagination.currentPage == pagination.totalPage}){
        return;
    }
    window.location="/student-community/discuss/getAllDiscuss.a?keyWord="+$('#question-input').val()+
    "&currentPage="+${pagination.currentPage+1}+"&totalRecord="+${pagination.totalRecord};
});

$("#answer").click(function(){
    $("html,body").animate({scrollTop:$("#ss").offset().top},1000);
}); 
//分享
$('#share').click(function(){
	//$(this).attr('data-copytarget','#twitter');
	var url = window.location.href;
layer.msg('<input type="text" id="twitter" value="'+url+'" /> <button data-copytarget="#twitter" id="copyUrl">复制</button>', {icon: 1,time:30000});
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

});
</script>
</html>
