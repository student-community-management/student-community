<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<!-- 单个讨论被举报的详情 -->
<body>
<table id="report-list"></table>
<script type="text/javascript">
$(function(){
  //---datagrid---
$('#report-list').datagrid({
    url: '/student-community/rd/getReportContent.a?discussid='+${ param.discussid },
    pagination: true,
    fit: true,
    fitColumns: true,
    pageNumber: 1,
    pageSize: 20,
    pageList: [20, 30, 40, 50],
    columns: 
        [[{
            field: 'stu',
            title: '举报人',
            formatter: function (value){
                return value.stuName;
            }
        }, {
            field: 'message',
            title: '举报内容'
        }, {
            field: 'reportDate',
            title: '举报日期'
        }]]
});
    
});
</script>
</body>
