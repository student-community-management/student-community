<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>


<table id="roletab"></table>  
<script type="text/javascript">
$('#roletab').treegrid({    
    url:'/student-community/submenu/queryAll.a',
    checkbox:true,
    rownumbers:true,
    fit:true,
    idField:'id',
    treeField:'submenuName',
    columns:[[   
        {field:'submenuName',title:'菜单名称',align:'left'},    
        {field:'url',title:'链接地址'},  
    ]]    
});  


</script>
</body>
