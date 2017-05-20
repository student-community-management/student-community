<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<body>

<!-- 修改角色   -->
<div id="roleDiv">
<form id="roleForm">
    <input id="mgrRoleid" name="mgrRoleid" type="hidden">
        名称:<input id="roleInput" name="mgrRoleName"><br/>
        权限等级:<input id="levleInput" name="level"><br/>
   <a href="#" id="saveRole">保存</a>
   <a href="#" id="closeRole">关闭</a><br/>
</form>
</div>
<!-- 添加父级菜单 -->
<div id="parentMenuDiv">
<form id="parentMenuForm">
    <input id="parentMenuid" name="id" type="hidden">
        父级菜单名称:<input id="parentMenuInput" name="parentMenuName"><br/>
   <a href="#" id="saveparentMenu" class="easyui-linkbutton">保存</a>
   <a href="#" id="closeparentMenu" class="easyui-linkbutton">关闭</a><br/>
</form>
</div>
<!-- 添加子级菜单 -->
<div id="submenuDiv">
<form id="submenuForm">
    <input id="submenuid" name="id" type="hidden">
    <div id="parentDiv">
    <input id="parentid" name="parentid" type="hidden">
         父级菜单名称:<input id="parentName"><br/>
    </div>
        名称:<input id="submenuInput" name="submenuName"><br/>
    URL:<input id="urlInput" name="url"><br/>
   <a href="#" id="saveSubmenu">保存</a>
   <a href="#" id="closeSubmenu">关闭</a>
</form>
</div>
<c:if test="${ sessionScope.level >= 2 }">
<!-- 右键菜单栏 -->
<div id="roleright" class="easyui-menu" style="width: 120px;">
    <div id="addParentmenu" data-options="name:'addParentmenu'" >添加父级菜单</div>
    <div id="addSubmenu" data-options="name:'addSubmenu'" >添加子级菜单</div>
</div>
</c:if>
<!-- 菜单工具栏 -->
<div id="roletoolbar">
    <c:if test="${ sessionScope.level >= 3 }">
    <a href="#" id="saveUpdate" class="easyui-linkbutton" style="width: 70px">保存修改</a>
    <a href="#" id="updateMenu" class="easyui-linkbutton" style="width: 70px">修改菜单</a>
    </c:if>
    <c:if test="${ sessionScope.level >= 4 }">
    <a href="#" id="delMenu" class="easyui-linkbutton" style="width: 70px">删除菜单</a>
    </c:if>
    <a href="#" id="reloadTreegrid" class="easyui-linkbutton" style="width: 70px">刷新表格</a>
</div>

<!-- 角色工具栏 -->
<div class="roleLeft">
    <div id="role-tool">
       <c:if test="${ sessionScope.level >= 2 }">
        <a href="#" id="addRole" class="easyui-linkbutton" style="width: 70px">添加角色</a>
       </c:if>
       <c:if test="${ sessionScope.level >= 3 }">
        <a href="#" id="updateRole" class="easyui-linkbutton" style="width: 70px">修改角色</a>
       </c:if>
       <c:if test="${ sessionScope.level >= 4 }">
        <a href="#" id="delRole" class="easyui-linkbutton" style="width: 70px">删除角色</a>
       </c:if>
    </div>
    <div id="datalist"></div>
</div>
<div class="roleRight">
<table id="roletab"></table>  
</div>

<script type="text/javascript">

$(function(){
    
    //角色表单
    $('#roleForm').form({    
        url:'/student-community/mr/save.a',    
        onSubmit: function(){ 
            var isValid = $(this).form('validate');
    		return isValid;	// 返回false终止表单提交
        },
        success:function(data){    
           if(data == 'save'){
               $.messager.show({
                   title:'消息',
                   msg:'添加成功',
                   timeout:3000,
                   showType:'slide'
               });
               
           } else if (data == 'update') {
               $.messager.show({
                   title:'消息',
                   msg:'更新成功',
                   timeout:3000,
                   showType:'slide'
               });
           } else {
               $.messager.show({
                   title:'消息',
                   msg:'操作失败',
                   timeout:3000,
                   showType:'slide'
               });
           }
           $('#datalist').datalist('reload');//重新加载
           $('#roleForm').form('clear');
           $('#roleDiv').window('close');
        }    
    });
    
    //父级菜单表单
    $('#parentMenuForm').form({    
        url:'/student-community/pm/save.a',    
        onSubmit: function(){ 
            var isValid = $(this).form('validate');
    		return isValid;	// 返回false终止表单提交
        },
        success:function(data){
           if(data == 'save'){
               $.messager.show({
                   title:'消息',
                   msg:'添加成功',
                   timeout:3000,
                   showType:'slide'
               });
               
           } else if (data == 'update') {
               $.messager.show({
                   title:'消息',
                   msg:'更新成功',
                   timeout:3000,
                   showType:'slide'
               });
           } else {
               $.messager.show({
                   title:'消息',
                   msg:'操作失败',
                   timeout:3000,
                   showType:'slide'
               });
           }
           $('#parentMenuForm').form('clear');
           $('#parentMenuDiv').window('close');
           $('#roletab').treegrid('reload');
        }    
    }); 
    
    //子级菜单表单
    $('#submenuForm').form({    
        url:'/student-community/submenu/save.a',    
        onSubmit: function(){ 
            var isValid = $(this).form('validate');
    		return isValid;	// 返回false终止表单提交
        },
        success:function(data){    
           if(data == 'save'){
               $.messager.show({
                   title:'消息',
                   msg:'添加成功',
                   timeout:3000,
                   showType:'slide'
               });
               
           } else if (data == 'update') {
               $.messager.show({
                   title:'消息',
                   msg:'更新成功',
                   timeout:3000,
                   showType:'slide'
               });
           } else {
               $.messager.show({
                   title:'消息',
                   msg:'操作失败',
                   timeout:3000,
                   showType:'slide'
               });
           }
           $('#submenuForm').form('clear');
           $('#submenuDiv').window('close');
           $('#roletab').treegrid('reload');
        }    
    }); 
    
  	//角色按钮
    $('#saveRole').linkbutton({    
        iconCls: 'icon-save',
        width: 70
    });
    
  	//角色按钮
    $('#closeRole').linkbutton({    
        width: 70
    });
  	
  	//父菜单按钮
    $('#saveparentMenu').linkbutton({    
        width: 70
    });
    
  	//父菜单按钮
    $('#closeparentMenu').linkbutton({    
        width: 70
    });
  	
  	//子菜单按钮
    $('#saveSubmenu').linkbutton({    
        width: 70
    });
    
  	//子菜单按钮
    $('#closeSubmenu').linkbutton({    
        width: 70
    });
  	
  	// 当你在穿山越岭
    loadParentInfo = function(id,name){
  	    
        $('#parentid').val(id);
  	    
        $('#parentName').textbox({
            width:200,
            value:name,
            readonly:true
        });
    }
    
  	// 加载添加/修改角色窗口
	loadRoleWindow = function(roleid,roleName,level){
	    
	    if(roleid != null){
	        $('#mgrRoleid').val(roleid);
	    }
	    
	    $('#roleInput').textbox({
	        width:200,
	        required:true,
	        value:roleName,
	        missingMessage:'角色名称必填',
	        validType:['length[1,15]'],
	        invalidMessage:'名称的长度在1-15位之间'
	    });
	    
	    $('#levleInput').combobox({    
	        url:'/student-community/json/level.json',
	        width:200,
	        valueField:'id',    
	        textField:'text',
	        editable:false,
	        onLoadSuccess:function(){
                var data = $('#levleInput').combobox('getData');
                if(data != ''){
                    if(level != null){
                        for(var i = 0;i<data.length;i++){
                            if(data[i].id == level){
                                $('#levleInput').combobox('select',data[i].id);
                                break;
                            }
                        }
                    } else {
                        $('#levleInput').combobox('select',data[0].id);
                    }
                }
            }
	    }); 
	    
    }
  	// 加载添加/修改父级菜单窗口
	loadParentMenuWindow = function(id,menuName){
	    
  	    if(id != null ){
	  	    $('#parentMenuid').val(id);
  	    }
  	    
	    $('#parentMenuInput').textbox({
	        width:200,
	        value:menuName,
	        required:true,
	        missingMessage:'菜单名称必填',
	        validType:['length[1,10]'],
	        invalidMessage:'名称的长度在1-10位之间'
	    });
	    
    }
  	
  	// 加载添加/修改子级菜单窗口
	loadSubmenuWindow = function(id,menuName,url){
  	    
  	    if(id != null){
	  	    $('#submenuid').val(id);
  	        
  	    }
  	    
	    $('#submenuInput').textbox({
	        width:200,
	        value:menuName,
	        required:true,
	        missingMessage:'菜单名称必填',
	        validType:['length[1,10]'],
	        invalidMessage:'名称的长度在1-10位之间'
	    });
	    
	    $('#urlInput').textbox({
	        width:200,
	        value:url,
	        required:true,
	        missingMessage:'链接必填',
	        validType:['length[1,100]'],
	        invalidMessage:'名称的长度在1-100位之间'
	    });
	    
    }
  	
	$('#roleDiv').window({    
        modal:true ,
        closed:true,
        onClose:function(){
            $('#roleForm').form('clear');
        }
    });
    
    $('#parentMenuDiv').window({
        title:'父菜单',
        modal:true ,
        closed:true,
        width:300,
        onClose:function(){
            $('#parentMenuForm').form('clear');
        }
    });
    
    $('#submenuDiv').window({  
        title:'子菜单',
        modal:true ,
        closed:true,
        width:300,
        onClose:function(){
            $('#submenuForm').form('clear');
        }
    });
    
    
	$('#role-accordion').accordion({
        border : false,
        fit : true
    });
    
    // 开始加载treegrid
    loadTreegrid = function(submenuids){
        
        if(submenuids != null){
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
                    {field:'url',title:'链接地址'}
                ]],
                onContextMenu: function(e,data) {
                     e.preventDefault(); // 屏蔽浏览器自带的右键菜单
                     if (data != null) {
                        $('#roletab').treegrid('clearSelections');
                        $('#roletab').treegrid('select',data.id);
                        
                        e.preventDefault(); // 屏蔽浏览器自带的右键菜单
                        $('#roleright').menu('show', {
                            left: e.pageX,
                            top: e.pageY
                        });
                        
                        
                        $('#roleright').menu({
                            onClick:function(item){
                                
                                if('addParentmenu' == item.name){
                                    
                                    loadParentMenuWindow();
                                    $('#parentMenuDiv').window('open');
                                } else if ('addSubmenu' == item.name) {
                                    var id,name;
                                    
                                    if($('#roletab').treegrid('getLevel',data.id) == 1){
                                        loadParentInfo(data.id,data.submenuName);
                                    } else {
                                         var parent = $('#roletab').treegrid('getParent',data.id);
                                         id =  parent.id;
                                         name = parent.submenuName;
	                                     loadParentInfo(id,name)
                                    }
                                    
                                    loadSubmenuWindow();
                                    $('#parentDiv').css({'display':'block'});
                                    $('#submenuDiv').window('open');
                                }
                            }
                        });
                        
                        
                        e.preventDefault(); // 屏蔽浏览器自带的右键菜单
                    }
                        
                },
                onLoadSuccess:function(){
                    var data = $('#roletab').treegrid('getChildren');
                    for(var i = 0;i< data.length;i++){
                        if(jQuery.inArray(data[i].id,submenuids) != -1){
                           	$('#roletab').treegrid('checkNode',data[i].id)
                        } else {
                           	$('#roletab').treegrid('uncheckNode',data[i].id)
                        }
                    }
                }
            });  
        }
    }
    
    //加载datalist
    loadDatalist = function(){
        $('#datalist').datalist({
            url: '/student-community/mr/queryForCommbo.a',
            fit:true,
            valueField: 'mgrRoleid',
            textField: 'mgrRoleName',
            onLoadSuccess:function(data){
                //如果有数据就选择第一行
                if(data != null){
                    $('#datalist').datalist('selectRow',0);
                    var role =  $('#datalist').datalist('getSelected');
                    var roleid = role.mgrRoleid;
                    $.ajax({
                        type:'post',
                        url:'/student-community/submenu/subids.a',
                        data:{'id':roleid},
                        success:function(data){
                            var submenuids = new Array();
                            submenuids = data;
                        	loadTreegrid(submenuids);
                        }
                    });
                }
                
            },
            onSelect:function(index,row){
                var roleid = row.mgrRoleid;
                $.ajax({
                    type:'post',
                    url:'/student-community/submenu/subids.a',
                    data:{'id':roleid},
                    success:function(data){
                        var submenuids = new Array();
                        submenuids = data;
                    	loadTreegrid(submenuids);
                    }
                });
                
                
            }
        });
    }
    
    
    
    //加载Datalist
    loadDatalist();
    
   
   
   /*
   var roleData = $('#datalist').datalist('getSelected');
       console.log('asdfasdfroleData'+roleData);
    var roleid = roleData.mgrRoleid;
    
    if(roleid != null){
        var mgrRoleids = new Array();
        $.ajax({
            type:'post',
            url:'/student-community/submenu/subids.a',
            data:{id:roleid},
            success:function(data){
                console.log('data'+data);
                mgrRoleids = data;
            }
            
        });
    } */
    
    
    
    
    
    
})

// 添加角色
$('#addRole').click(function(){
    loadRoleWindow()
    $('#roleDiv').window('open');
});

//更新角色
$('#updateRole').click(function(){
    
    
    var role =  $('#datalist').datalist('getSelected');
    if(role == null){
        $.messager.alert('警告','请选中数据');
        return;
    }
    
    var roleid = role.mgrRoleid;
    var roleName = role.mgrRoleName;
    var level = role.level;
    
    console.log('roleid'+roleid);
    
    loadRoleWindow(roleid,roleName,level)
    $('#roleDiv').window('open');
    
	    
});

//删除角色
$('#delRole').click(function(){
    
    var role =  $('#datalist').datalist('getSelected');
    if(role == null){
        $.messager.alert('警告','请选中数据');
        return;
    }
    
    $.messager.confirm('确认对话框', '您想要该角色吗？', function(r){
    	if (r){
    	    $.ajax({
    	        type:'post',
    	        url:'/student-community/mr/del.a',
    	        data:{'id':role.mgrRoleid},
    	        success:function(data){
    	            if(data == '1'){
    	                $.messager.show({
    	                    title:'消息',
    	                    msg:'删除成功',
    	                    timeout:3000,
    	                    showType:'slide'
    	                });
    	                $('#roletab').treegrid('reload');//重新加载
    	               $('#datalist').datalist('reload');//重新加载
    	            }
    	        }
    	        
    	    });
    	}
    });

});

//提交添加角色表单
$('#saveRole').click(function(){
    $('#roleForm').form('submit');
});

//提交添加父级菜单表单
$('#saveparentMenu').click(function(){
    $('#parentMenuForm').form('submit');
});

//提交添加子级菜单表单
$('#saveSubmenu').click(function(){
    $('#submenuForm').form('submit');
});

//关闭添加父菜单窗口
$('#closeparentMenu').click(function(){
    $('#parentMenuForm').form('clear');
    $('#parentMenuDiv').window('close');
});

//关闭添加子菜单窗口
$('#closeSubmenu').click(function(){
    $('#submenuForm').form('clear');
    $('#submenuDiv').window('close');
});


//关闭添加角色窗口
$('#closeRole').click(function(){
     $('#roleForm').form('clear');
     $('#roleDiv').window('close');
 });

$('#reloadTreegrid').click(function(){
    
    var role =  $('#datalist').datalist('getSelected');
    var roleid = role.mgrRoleid;
    $.ajax({
        type:'post',
        url:'/student-community/submenu/subids.a',
        data:{'id':roleid},
        success:function(data){
            var submenuids = new Array();
            submenuids = data;
        	loadTreegrid(submenuids);
        }
    });
    
});



// 修改菜单内容和连接
$('#updateMenu').click(function(){
    
    var row = $('#roletab').treegrid('getSelected');
    
    if(row == null){
        $.messager.alert('警告','请选中数据');
        return;
    }
    
    
    var id = row.id;
    var url = row.url;
    var submenuName = row.submenuName;
    if(url == null){
        loadParentMenuWindow(id,submenuName);
        $('#parentMenuDiv').window('open');
    } else {
        $('#parentDiv').css({'display':'none'});
        loadSubmenuWindow(id,submenuName,url);
        $('#submenuDiv').window('open');
    }
    
});

// 删除菜单
$('#delMenu').click(function(){
    var row = $('#roletab').treegrid('getSelected');
    
    if(row == null){
        $.messager.alert('警告','请选中数据');
        return;
    }
    
    var id = row.id;
    var url = row.url;
    var submenuName = row.submenuName;
    if(url == null){
        $.messager.confirm('确认对话框', '您想要该父菜单吗？父菜单被删,子菜单也会被删除', function(r){
        	if (r){
        	    $.ajax({
        	        type:'post',
        	        url:'/student-community/pm/del.a',
        	        data:{'id':id},
        	        success:function(data){
        	            if(data == '1'){
        	                $.messager.show({
        	                    title:'消息',
        	                    msg:'删除成功',
        	                    timeout:3000,
        	                    showType:'slide'
        	                });
        	                $('#roletab').treegrid('reload');//重新加载
        	                $('#roletab').treegrid('clearSelections');
        	            }
        	        }
        	        
        	    });
        	}
        });
    } else {
        $.messager.confirm('确认对话框', '您想要该子菜单吗？', function(r){
        	if (r){
        	    $.ajax({
        	        type:'post',
        	        url:'/student-community/submenu/del.a',
        	        data:{'id':id},
        	        success:function(data){
        	            if(data == '1'){
        	                $.messager.show({
        	                    title:'消息',
        	                    msg:'删除成功',
        	                    timeout:3000,
        	                    showType:'slide'
        	                });
        	                $('#roletab').treegrid('reload');//重新加载
        	                $('#roletab').treegrid('clearSelections');
        	            }
        	        }
        	        
        	    });
        	}
        });
    }
    
});

// 修改菜单
$('#saveUpdate').click(function(){
    var roleid = $('#datalist').datalist('getSelected').mgrRoleid;
    
    if(roleid == null){
        $.messager.alert('警告','请选中一个角色');
        return;
    }
    
    var data = $('#roletab').treegrid('getCheckedNodes');
    var ids = new Array();
    
    for(var i = 0;i<data.length;i++){
        if(data[i].url != null){
            ids.push(data[i].id);
        }
    }
    
    console.log('ids'+ids);
    
     $.ajax({
        type:'post',
        datatype : 'json',
        contentType : 'application/json;charset=utf-8',
        url:'/student-community/mrs/save.a?roleid='+roleid,
        data:JSON.stringify(ids),
        success:function(data){
            if(data == '1'){
                $.messager.show({
                    title:'消息',
                    msg:'操作成功',
                    timeout:3000,
                    showType:'slide'
                });
            }
        }
    });
    
});
</script>
</body>