<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>

<!-- 右键菜单栏 -->
<div id="roleright" class="easyui-menu" style="width: 120px;">
    <div id="addParentmenu" data-options="name:'addParentmenu'" >添加父级菜单</div>
    <div id="addSubmenu" data-options="name:'addSubmenu'" >添加子级菜单</div>
    <div id="delMenu" data-options="name:'delMenu'" >删除</div>
</div>

<!-- 工具栏 -->
<div id="roletoolbar">
    <a href="#" id="saveUpdate" class="easyui-linkbutton" style="width: 70px">保存修改</a>
</div>

<table id="roletab"></table>  
<script type="text/javascript">

$(function(){
    $('#roletab').treegrid({    
        url:'/student-community/submenu/queryAll.a',
        checkbox:true,
        rownumbers:true,
        fit:true,
        toolbar: '#roletoolbar',
        idField:'id',
        treeField:'submenuName',
        columns:[[   
            {field:'submenuName',title:'菜单名称',align:'left'},
            {field:'url',title:'链接地址'},  
        ]],
        onContextMenu: function(e,data) {
             e.preventDefault(); // 屏蔽浏览器自带的右键菜单
             if (data.url != null) {
                $('#roletab').treegrid('clearSelections');
                $('#roletab').treegrid('select',data.id);
                e.preventDefault(); // 屏蔽浏览器自带的右键菜单
                $('#roleright').menu('show', {
                    left: e.pageX,
                    top: e.pageY
                });
                
            
                e.preventDefault(); // 屏蔽浏览器自带的右键菜单
            }
                
        }
    
    
    });  
    
})

$('#saveUpdate').click(function(){
    //var data = $('#roletab').treegrid('getCheckedNodes');
    
   /*  var ids = [10001, 10002, 10003, 10004, 10005];
    
    var data = $('#roletab').treegrid('getData');
    
    for(var i = 0;i< data.length;i++){

        if(jQuery.inArray(data[i].id,ids)){
            $('#roletab').treegrid('checkNode',data[i].id)
        }
        
        
    } */
    
    
    /* var ids = new Array();
    
    for(var i = 0;i<data.length;i++){
        if(data[i].url != null){
            ids.push(data[i].id);
        }
    } */
    
    //console.log(ids);
});


</script>
</body>
