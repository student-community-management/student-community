<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="cn">
<head>
<meta charset="utf-8">
<title>学生社区</title>
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
	<div class="container mcontainer">
        <div class="mcontainer">
		<form class="form-horizontal" id="discussForm">
        <input type="hidden" name="discussid" value="<c:if test="${ discuss != null  }">${discuss.discussid}</c:if>">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">标题</label>
				<div class="col-sm-9 ">
					<input type="text" class="form-control" id="discussTitle"
						placeholder="请输入标题" name="discussTitle" value="<c:if test="${ discuss != null  }">${discuss.discussTitle}</c:if>">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">内容</label>
				<div class="col-sm-9">
					<textarea class="form-control" rows="3" placeholder="请输入内容" name="discussContent"><c:if test="${ discuss != null  }">${discuss.discussContent}</c:if></textarea>
				</div>
			</div>
            <c:if test="${ discuss != null }">
    			<div class="form-group">
    				<label for="inputPassword3" class="col-sm-2 control-label">请求理由</label>
    				<div class="col-sm-9">
    					<textarea class="form-control" rows="3" placeholder="请输入内容" name="message"></textarea>
    				</div>
    			</div>
            </c:if>
				<button type="submit" class="btn btn-default"style="width:75%;margin-left:17%">提交</button>
                <br><br>
				<button class="btn btn-danger" style="width:75%;margin-left:17%" id='close'>关闭窗口</button>
		</form>
        </div>
	</div>
</body>
<script type="text/javascript">
$(function() {
    $('#discussTitle').focus();
    $('#discussForm').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            discussTitle: {
                message: 'The discussTitle is not valid',
                validators: {
                    notEmpty: {
                        message: '讨论的话题不能为空'
                    },
                    callback: {
                        callback: function(value, validator) {
                            if (value.length < 3) {
                                return {
                                    valid: false,
                                    message: '话题不能少于3个字'
                                }
                            }
                            if (value.length > 20) {
                                return {
                                    valid: false,
                                    message: '话题不能超过20个字'
                                }
                            }
                            return true;
                        }
                    }
                }
            },
            discussContent: {
                validators: {
                    callback: {
                        callback: function(value, validator) {
                            if (value.length > 1000) {
                                return {
                                    valid: false,
                                    message: '讨论话题的详细内容不能超过1000个字'
                                }
                            }
                            return true;
                        }
                    }
                }
            },
            message: {
                validators: {
                    callback: {
                        callback: function(value, validator) {
                            if (value.length > 1000) {
                                return {
                                    valid: false,
                                    message: '理由不能超过1000个字'
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
        url:'/student-community/discuss/save.a',
        data:$("#discussForm").serialize(),
        success:function(data){
            if(data == 'save is ok'){
                layer.msg('发起话题成功');
            } else if (data == 'update is ok'){
                layer.msg('修改话题成功');
            }
            setTimeout(() => {
                var index = parent.layer.getFrameIndex(window.name); //获取当前窗体索引
            	parent.layer.close(index); 
            }, 1000);
        }
    });
});

$('#close').click(function(e){
    e.preventDefault();
    var index = parent.layer.getFrameIndex(window.name); //获取当前窗体索引
	parent.layer.close(index); 
    
});

</script>
</html>