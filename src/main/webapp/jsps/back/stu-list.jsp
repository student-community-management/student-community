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
    <table id="stu-list"></table>
</body>
<script type="text/javascript">
$(function(){
    $('#dg').datagrid({    
        url:'getStusByCommid',    
        columns:[[    
            {field:'stuid',title:'学生编号'}, 
            {field:'stuName',title:'学生姓名'}, 
            {field:'stuSex',title:'学生性别',formatter:function(value){
                if(value == 1){
                    return '男';
                } else {
                    return '女';
                }
            }}, 
            {field:'stuBirthday',title:'生日'}, 
            {field:'stuNativePlace',title:'祖籍'},    
            {field:'classes',title:'班级'}    
        ]]    
    });  
});



</script>
</html>