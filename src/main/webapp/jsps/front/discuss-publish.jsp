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
<!----------------发布讨论------------->

	<%@ include file="nav.jsp" %>
	<div class="container mcontainer">
		<ul class="nav nav-tabs nav-justified">
        <li role="presentation"><a
                href="/student-community/discuss/getAllDiscuss.a">话题发现</a></li>
			<li role="presentation" class="active"><a
				href="/student-community/jsps/front/discuss-publish.jsp">发表话题</a></li>
		</ul>
        <div class="mcontainer">
		<form class="form-horizontal" id="discussForm">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">标题</label>
				<div class="col-sm-9 ">
					<input type="text" class="form-control" id="discussTitle"
						placeholder="请输入标题" name="discussTitle">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">内容</label>
				<div class="col-sm-9">
					<textarea class="form-control" rows="3" placeholder="请输入内容" name="discussContent"></textarea>
				</div>
			</div>
				<button type="submit" class="btn btn-default"style="width:75%;margin-left:17%">提交</button>
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
            if(data == '1'){
                layer.msg('发起话题成功');
                setTimeout(() => {
                    window.location.reload();
                }, 2000);
            }
        }
    });
});
</script>
</html>