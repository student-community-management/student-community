<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>学生社区后台登录</title>
<link rel="icon" href="/student-community/ico/ico.png">
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/bootstrapValidator.min.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<link href="/student-community/css/mycssfront.css" rel="stylesheet">
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
<script src="/student-community/js/bootstrapValidator.min.js"></script>
</head>
<body>
    <div class="form-divs">
    <center><h1>学生社区管理</h1></center>
        <form id="loginForm">
            <div class="form-group">
                <label for="account">Account</label> 
                <input type="text" class="form-control" id="account" placeholder="Place input your id number" name="managerid">
            </div>
            <div class="form-group">
                <label for="pwd">Password</label> 
                <input type="password" class="form-control " id="pwd" placeholder="Place input your password" name="managerPwd">
            </div>
            <button type="submit" class="btn btn-default submit-btn" id="submit-btn">Submit</button>
           <center> <div style="display: none ;color:red;" id="warn"></div></center>
        </form>
    </div>

</body>
<script type="text/javascript">
$(function() {
    $('#account').focus();
    $('#loginForm').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            managerid: {
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
            managerPwd: {
                validators: {
                    notEmpty: {
                        message: 'The password is required and can\'t be empty'
                    },
                    callback: {
                        callback: function(value, validator) {
                            // Check the password strength
                            if (value.length < 5) {
                                return {
                                    valid: false,
                                    message: 'The password must be more than 5 characters'
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
        url:'/student-community/mgr/login.a',
        data:$("#loginForm").serialize(),
        success:function(data){
            if(data == 'ok'){
                console.log('登陆成功');
                window.location = '/student-community/pm/getMenu.a';
            } else if(data == 'no'){
               $('#pwd').select();
               $('#warn').html('您的帐号或者密码错误');
               $('#warn').css({'display':'block'});
            } else if (data == 'no role') {
               $('#warn').html('您还没有被分配角色请与管理员联系');
               $('#warn').css({'display':'block'});
                
            } else if (data == 'no submenu') {
               $('#warn').html('您还没有被分配菜单请与管理员联系');
               $('#warn').css({'display':'block'});
            } 
        }
    });
});
</script>
</html>