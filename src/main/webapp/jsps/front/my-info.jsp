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
    <div>
    <br><br> 
    <label>我的姓名</label>
    <label> ${ sessionScope.fstu.stuName }</label><br>
    </div><br>
    <div>
    <label>我的性别</label>
    <label> ${ sessionScope.fstu.stuSex==0 ?'女':'男' }</label><br>
    </div>
       <label> 我的头像:</label>
            <img src="/image/stu/${ sessionScope.fstu.img }" width="128" height="128"
                class="img-circle" id="face">
            <input type="file" name="img" id="img">
        
        <br>
        <label>我的个性签名:</label> 
        <label><span id="intro" style="width:100%;">${ sessionScope.fstu.introduce }</span></label>
         <button class="btn btn-default" type="button" id="changeIntro">点击更换个性签名</button>
        </div>
        
        

</div>
</div>
</div>


</body>
<script type="text/javascript">
$(function() {

    layui.use('upload', function() {
        layui.upload({
            url : '/student-community/stu/img.a',
            title : '请选择上传头像',
            method : 'post', //上传接口的http类型
            elem : '#img',
            success : function(res) {
                if (res.msg == 'success') {
                    $('#face').attr('src', '/image/stu/' + res.data.src);
                    $('#nav-face').attr('src', '/image/stu/' + res.data.src);
                    layer.msg('更换头像成功');
                } else {
                    layer.msg('更换头像失败');
                }
            }
        });
    });
});

$('#changeIntro').click(function(){
    layer.prompt({title: '请出入要修改的个性签名'}, function(content, index){
		if(content.length > 30){
			layer.msg('个性签名不能超过30个字');
		    return;
		} else {
		    $.ajax({
				type:'post',
				url:'/student-community/stu/changeIntro.a',
				data:{"introduce":content},
				dataType:'text',
				success:function(data){
				    console.log(data);
				    if(data != null || data != ''){
				        layer.msg('更改成功');
				        layer.close(index);
            		    $('#intro').text(data);
				        
				    }
									    
				}
	        });
		}
		
    });
				        
       	
});
    
</script>
</html>
