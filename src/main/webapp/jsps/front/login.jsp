<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>学生社区登录</title>
<link rel="icon" href="/student-community/ico/ico.png">
<link href="/student-community/layui/css/layui.css" rel="stylesheet">
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/bootstrapValidator.min.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<link href="/student-community/css/mycssfront.css" rel="stylesheet">
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/layui/layui.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
<script src="/student-community/js/bootstrapValidator.min.js"></script>
</head>
<body>
    <div class="form-divs">
    <center><h1>欢迎来到学生社区</h1></center>
        <form id="loginForm">
            <div class="form-group">
                <label for="account">Account</label> 
                <input type="text" class="form-control" id="account" placeholder="Place input your id number" name="stuid">
            </div>
            <div class="form-group">
                <label for="pwd">Password</label> 
                <input type="password" class="form-control " id="pwd" placeholder="Place input your password" name="stuPwd">
            </div>
            <button type="submit" class="btn btn-default submit-btn" id="submit-btn">Submit</button>
           <center> <div style="display: none ;color:red;" id="warn">您的帐号或者密码错误</div></center>
        </form>
    </div>

<div id="updatePwd" style="display: none;" >

<form id="" class="layui-form">
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
</body>
<script type="text/javascript">
$(function() {
layui.use(['form'], function(){
    var form = layui.form()
    ,layer = layui.layer
});
    
    $('#account').focus();
    $('#loginForm').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            stuid: {
                message: 'The username is not valid',
                validators: {
                    notEmpty: {
                        message: 'The username is required and can\'t be empty'
                    },
                    regexp: { 
                        regexp: /^[0-9]+$/, 
                        message: 'The username can only be some number' 
                    },
                    callback: {
                        callback: function(value, validator) {
                            if (value.length < 5) {
                                return {
                                    valid: false,
                                    message: 'The username must be more than 5 characters'
                                }
                            }
                            if (value.length > 10) {
                                return {
                                    valid: false,
                                    message: 'The username must be less than 10 characters'
                                }
                            }
                            
                            return true;
                        }
                    }
                }
            },
            stuPwd: {
                validators: {
                    notEmpty: {
                        message: 'The password is required and can\'t be empty'
                    },
                    callback: {
                        callback: function(value, validator) {
                            // Check the password strength
                            if (value.length < 6) {
                                return {
                                    valid: false,
                                    message: 'The password must be more than 6 characters'
                                }
                            }
                            
                            if (value.length > 10) {
                                return {
                                    valid: false,
                                    message: 'The password must be more less 10 characters'
                                }
                            }
                            return true;
                        }
                    }
                }
            }
        }
    });
}).
on('success.form.bv', function (e) {
    e.preventDefault();//防止重复提交
    $.ajax({
        type:'post',
        url:'/student-community/stu/login/flogin.a',
        data:$("#loginForm").serialize(),
        success:function(data){
            if(data == '1'){
                var pwd = $('#pwd').val();
                if(pwd == '123123'){
                    layer.confirm('您的密码是默认密码不安全,是否更改密码?', {
                        btn: ['立即更改', '不更改,直接进入'] //可以无限个按钮
                      }, function(index, layero){
                          layer.close(index);
                          layer.open({
                              type: 1, 
                              area: ['460px','280px'],
                              content: $('#updatePwd'),
                              btn:['确认修改'],
                              yes:function(index){
                                  
								  if($('#pass').val().length != 6){
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
                                          data:{'stuid': $('#account').val() ,'stuPwd':$('#pass').val(),'step':0},
                                          success:function(data){
                                              if(data == 1){
                                                  layer.msg('请用新密码登陆吧');
                                                  layer.close(index);
                                                  $('#pwd').val('');
                                              }
                                          }
                                          
                                      });
                                  }
                              }
                            }); 
                      }, function(index){
                          window.location = '/student-community/discuss/getAllDiscuss.a';
                          
                      });
                    
                    
                    
                    
                } else {
                    window.location = '/student-community/discuss/getAllDiscuss.a';
                }
               // window.location = '/student-community/discuss/getAllDiscuss.a';
            } else {
               $('#pwd').select();
               $('#warn').css({'display':'block'});
            }
        }
    });
});
</script>
</html>