<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/student-community/easyui/themes/material/easyui.css" />
<link rel="stylesheet" type="text/css" href="/student-community/css/mycssback.css" />
<link rel="stylesheet" type="text/css" href="/student-community/easyui/themes/icon.css" />
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/easyui/jquery.easyui.min.js"></script>
</head>
<body>
<div id="toolbar" class="hidden">
    <input id="search"></input>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'" style="width:80px">添加</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'" style="width:80px">移除</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'" style="width:80px">修改信息</a>
    
</div>
<div class="data-div">
    <table id="stu-list"></table>
</div>
</body>
<script type="text/javascript">
    $(function() {
        //---datagrid---
        $('#stu-list').datagrid({
            url : '/student-community/all.a',
            toolbar:'#toolbar',
            pagination : true,
            fit : true,
            pageNumber : 1,
            pageSize : 10,
            pageList : [ 10, 20, 30, 40, 50 ],
            columns : [ [ {
                field : ' ',
                title : '学生编号',
                checkbox : true
            }, {
                field : 'stuid',
                title : '学生编号'
            }, {
                field : 'stuName',
                title : '学生姓名'
            }, {
                field : 'stuSex',
                title : '学生性别',
                formatter : function(value) {
                    if (value == 1) {
                        return '男';
                    } else {
                        return '女';
                    }
                }
            }, {
                field : 'stuBirthday',
                title : '生日'
            }, {
                field : 'stuNativePlace',
                title : '祖籍'
            }, {
                field : 'classes',
                title : '班级',
                formatter : function(value) {
                    if (value.grade == 0) {
                        return '一年级'+value.classes;
                    } else if (value.grade == 1) {
                        return '二年级'+value.classes;
                    } else if (value.grade == 2) {
                        return '三年级'+value.classes;
                    } else if (value.grade == 3) {
                        return '四年级'+value.classes;
                    } else if (value.grade > 3) {
                        return '已毕业';
                    }
                }
            } ] ]
        });
        //---datagrid---end
        //---searchbox---
         $('#search').searchbox({ 
            searcher:function(value){
                if(value == '\''){
                    $.messager.alert('警告','传入参数无效！','warning');
                } else {
                     $('#stu-list').datagrid({
                    	queryParams: {
                    		'kw':value
                    	}
                	});
                }
            }, 
            prompt:'请输入值',
            width:'150'
            });
        //---searchbox--end
    });
</script>
</html>