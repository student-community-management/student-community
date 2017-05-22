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
    <label>我的姓名:</label>
    <label> ${ sessionScope.fstu.stuName }</label><br>
    </div><br>
    <div>
    <label>我的性别:</label>
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
        <br><br>
         <button class="btn btn-danger" type="button" id="updatePwdbtn">修改密码</button>
        
</div>
</div>
</div>


</body>
<div id="updatePwd" style="display: none;" >
<form class="layui-form">
<div class="layui-form-item">
    <label class="layui-form-label" style="width:140px;" >请输入新的密码:</label>
    <div class="layui-input-inline">
      <input type="password"  id="pass" placeholder="请输入密码" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux">请填写6位密码</div>
  </div>
  
<div class="layui-form-item">
    <label class="layui-form-label" style="width:140px;">请重复密码:</label>
    <div class="layui-input-inline">
      <input type="password" id="repass" placeholder="请重复密码" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux">请填写6位密码</div>
</div>
</form>

</div>

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
    
    $('#updatePwdbtn').click(function(){
        
        layer.open({
            type: 1, 
            area: ['460px','280px'],
            content: $('#updatePwd'),
            btn:['确认修改'],
            yes:function(index){
				  //$('#pass')  $('#repass')
                
				  if($('#pass').val().length != 6 ){
				      layer.msg('密码必须为6位数');
				      return;
				  }
                
                if($('#pass').val() != $('#repass').val()){
                    layer.msg('两次密码不一致');
                    $('#repass').val('');
				      return;
                }
                
                if($('#pass').val() == $('#repass').val()){
                    $.ajax({
                        type:'post',
                        url:'/student-community/stu/updatePwd.a',
                        data:{'stuid': ${sessionScope.fstu.stuid} ,'stuPwd':$('#pass').val(),'step':1},
                        success:function(data){
                            if(data == 'step'){
                                layer.msg('修改成功,请重新登陆');
                                setTimeout(() => {
                                    window.location = "/student-community/jsps/front/login.jsp";
                                }, 2000);
                            }
                        }
                        
                    });
                }
            }
          }); 
        
    });
    
</script>
</html>
