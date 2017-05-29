<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>社团管理-活动成员</title>
<link href="/student-community/layui/css/layui.css" rel="stylesheet">
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/style.css" rel="stylesheet">
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
<script src="/student-community/layui/layui.js"></script>

<script type="text/javascript">
		//全选事件
		$(function() {
          	
           $("#checkAll").click(function() {
        	   var ch = $("#checkAll").prop('checked');
        	   if(ch == true){
                $('input[name="chkPerson"]').prop("checked",true); 
        	   } else {
                $('input[name="chkPerson"]').prop("checked",false); 
        	   }
            });
        });
		$(function(){
			  $('input[name="chkPerson"]').change(function(){
			  checkOrRemoveCheckAll();
			  });
			});

			function checkOrRemoveCheckAll(){
			if($('input[name="chkPerson"]:checked').length == $('input[name="chkPerson"]').length)
			    {
			        $('#checkAll').prop("checked", "checked");
			    }
			    else
			    {
			        $('#checkAll').removeAttr("checked");
			    }
			}
			// 删除设备点击事件
			$(function(){  
   		 $("#btnDel").click(function() {
   		     
        	$("input[name='chkPerson']:checked").each(function() { // 遍历选中的checkbox
            $(this).parents("tr").remove();  // 获取checkbox所在行的顺序
            
        });
    });
});
			
</script>
</head>
<body style="padding:10px;">
	<%@ include file="my-community-nav.jsp" %>
					<!-- 等待更改 -->
                    <c:if test="${ fn:length(studentList) == 0 }">
                       <center> <h1>暂无申请人员</h1></center>
					</c:if>
                    <c:if test="${ fn:length(studentList) != 0}">
                        <a class="btn btn-danger" href="#" id="agree">同意加入</a>
    					<a class="btn btn-danger" href="#" id="ignore">忽略</a>		
                    
                    <table class="layui-table" lay-skin="row" id="tablePxe">
						<thead>
							<tr>
								<th width="10%"><input type="checkbox" id="checkAll" ></th>
								<th width="20%">昵称</th>
								<th width="20%">性别</th>
								<th width="50%">签名</th>
							</tr>
						</thead>
						<tbody>
                            <c:forEach items="${ studentList }" var="stu">
                                <tr>
								    <td>
                                        <input type="checkbox" name="chkPerson" value="${ stu.stuid }" >
                                    </td>
    								<td>${stu.stuName }</td>
    								<td>${ stu.stuSex == 0 ?'女':'男' }</td>
    								<td>
                                    ${ stu.introduce == null ? "(暂无签名)" : stu.introduce}
                                    </td>
    							</tr>
                            </c:forEach>
					</table>
                    </c:if>
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
                    
                    
                    
			</section>
		</section>
		<!-- /MAIN CONTENT -->
	</section>
</body>
<script type="text/javascript">
layui.use(['form'], function(){
  var layer = layui.layer;
});

//直接点击的哪一页
$('.pageNum').click(function(){
   window.location="/student-community/stu/getReqStu?commid=${ commid }&manage=${ manage }"+
           "&currentPage="+$(this).html()+"&totalRecord="+${pagination.totalRecord};
});  

//上一页
$('.prev').click(function(){
    if(${pagination.currentPage == 1}){
        return;
    }
    window.location="/student-community/stu/getReqStu.a?commid=${ commid }&manage=${ manage }"+
    "&currentPage="+${pagination.currentPage - 1}+"&totalRecord="+${pagination.totalRecord};
}); 

//下一页
$('.next').click(function(){
    if(${pagination.currentPage == pagination.totalPage}){
        return;
    }
    window.location="/student-community/stu/getReqStu?commid=${ commid }&manage=${ manage }"+
    "&currentPage="+${pagination.currentPage+1}+"&totalRecord="+${pagination.totalRecord};
});   

$('#ignore').click(function(){
        var vals = new Array();
        $('input[name="chkPerson"]:checked').each(function () {
            vals.push(parseInt(this.value));
        });
        
        if(vals.length == 0){
            layer.msg('请选中数据');
            return;
        }
        
        $.ajax({
            type:'post',
            url:'/student-community/comm/ignore.a?commid=${commid}',
            data:JSON.stringify(vals),
            datatype : 'json',
            contentType : 'application/json;charset=utf-8',
            success:function(data){
                if(data == 1){
                    layer.msg('忽略成功 ');
                    setTimeout(() => {
                        location.reload();
                    }, 2000);
                }
            }
        });
});

$('#agree').click(function(){
        var vals = new Array();
        $('input[name="chkPerson"]:checked').each(function () {
            vals.push(parseInt(this.value));
        });
        
        if(vals.length == 0){
            layer.msg('请选中数据');
            return;
        }
        
        $.ajax({
            type:'post',
            url:'/student-community/comm/saveCommStu.a?commid=${commid}',
            data:JSON.stringify(vals),
            datatype : 'json',
            contentType : 'application/json;charset=utf-8',
            success:function(data){
                if(data == 1){
                    layer.msg('添加成功 ');
                    setTimeout(() => {
                        location.reload();
                    }, 2000);
                }
            }
        });
});


</script>
</html>
