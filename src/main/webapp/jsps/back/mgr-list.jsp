<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 被举报切且未被处理的讨论 -->
<body>
<c:if test="${ sessionScope.level >= 4 }">
<!-- 右键菜单栏 -->
<div id="mgrright" class="easyui-menu" style="width: 120px;">
    <div id="checkPwd"  data-options="name:'checkPwd'">查看密码</div>
    <div id="updatePwd"  data-options="name:'updatePwd'">修改密码</div>
</div>
<div id="divUpdate">
    新的密码:<input id="pwd" name="" type="password"  />   <br>
    重复密码:<input id="rpwd" name="" type="password" />  
</div>
</c:if>

<!-- 添加员工窗口  -->
<div id="addMgrWindow">
    <form method="post" id="MgrForm">
         <input id="mgrid" name="managerid" type="hidden">
                    管理员姓名: <input id="mgrName" name="managerName"><br>
        <div id="dis">
                    新的密码:<input id="addpwd" name="managerPwd" type="password"  />   <br>
                    重复密码:<input id="addrpwd" type="password" /> <br>
        </div>
                    职务:<input id="role" name="mgrRole.mgrRoleid">  <a href="#" id="mgrclear">清除职务</a>  <br>
    </form>
    <a href="#" id="mgrsave">保存</a> 
    <a href="#" id="mgrclose">关闭</a>
</div>

<!-- 工具栏 -->
<div id="mgrtoolbar">
    <input id="mgrsearch"></input>
    <c:if test="${ sessionScope.level >= 2 }">
    <a href="#" id="addMgr" class="easyui-linkbutton" style="width: 70px">添加</a> 
    </c:if>
    <c:if test="${ sessionScope.level >= 3 }">
    <a href="#" id="updateMgr" class="easyui-linkbutton" style="width: 70px">修改</a>
    </c:if>
    <c:if test="${ sessionScope.level >= 4 }">
    <a href="#" id="removeMgr" class="easyui-linkbutton" style="width: 70px">移除</a>
    </c:if>
</div>
<!-- 数据表格 -->
<table id="mgr-list"></table>
<script type="text/javascript">
$(function() {
    
    $('#mgrName').textbox({
  		required:true,
  		missingMessage :'必填字段',
        validType:['length[1,6]'],
        invalidMessage:'姓名在1-6位之间'
    });
    
  //student classes infomation
    $('#role').combogrid({
        url : '/student-community/mr/queryForCommbo.a',
        width : 200,
        panelWidth : 'auto',
        panelHeight : 'auto',
        idField:'mgrRoleid',
        textField:'mgrRoleName',
        editable:false,
        columns : [ [ {
            field : 'mgrRoleid',
            title : '职位编号'
        }, {
            field : 'mgrRoleName',
            title : '职位名称'
        }, {
            field : 'level',
            title : '等级'
        } ] ]
    });
    
    $('#pwd').textbox({
        validType:['length[5,6]'],
        required:true,
        missingMessage :'必填字段',
        invalidMessage:'密码在5-6位之间'
    });
    
    $('#rpwd').textbox({
        required:true,
        missingMessage :'必填字段',
        validType:['length[5,6]'],
        invalidMessage:'密码在5-6位之间'
    });
    
    $('#addpwd').textbox({
        validType:['length[5,6]'],
        required:true,
        missingMessage :'必填字段',
        invalidMessage:'密码在5-6位之间'
    });
    
    $('#addrpwd').textbox({
        validType:['length[5,6]'],
        required:true,
        missingMessage :'必填字段',
        invalidMessage:'密码在5-6位之间'
    });
    
    $('#divUpdate').dialog({
        title: '修改新的密码',  
        closed: true,    
        modal: true,
        buttons:[{
			text:'确认修改',
			handler:function(){
			    
			    if($('#pwd').val() == '' ||$('#rpwd').val() == ''){
			        $.messager.alert('消息','如果想修改密码请正确填写.');
			    	return;
			    }
			    
			   if( $('#pwd').val()!=$('#rpwd').val()){
				    $.messager.alert('消息','密码不一致');
			   } else {
			       var managerid = $('#mgr-list').datagrid('getSelected').managerid;
			        $.ajax({
			        	type:'post',
			        	url:'/student-community/mgr/updatePwd.a',
			        	data:{managerid:managerid,managerPwd:$('#pwd').val()},
			        	success:function(data){
			        	    if(data == '1'){
			        	        $('#divUpdate').dialog('close');
			        	        $('#pwd').val('');
			    			    $('#rpwd').val('');
    			        	    $('#mgr-list').datagrid('reload');
			        	    }
			        	}
			           
			       });
			   }
			}
        },{
			text:'取消修改',
			handler:function(){
			    $('#pwd').val('');
			    $('#rpwd').val('');
			    $('#divUpdate').dialog('close');
			}
        }]	
    });
    
    $('#mgrsave').linkbutton({width: 70});
    
    $('#mgrclear').linkbutton({width: 70});
    
    $('#mgrclose').linkbutton({width: 70}); 
    
    
 // add student window
    $('#addMgrWindow').window({
        height : 'auto',
        title : '添加管理人员',
        closed : true //加载时关闭
    });
    
    $('#mgrsearch').searchbox({
        searcher : function(value) {
            if (value.indexOf('\'') != -1) {
                $.messager.alert('警告', '不能传入单引号！', 'warning');
            } else {
                $('#stu-list').datagrid({
                    queryParams : {
                        'kw' : value
                    }
                });
            }
        },
        prompt : '请输入值',
        width : '150'
    });
    
    
    //---datagrid---
    $('#mgr-list').datagrid({
        url: '/student-community/mgr/queryAll.a',
        toolbar: '#mgrtoolbar',
        pagination: true,
        fit: true,
        fitColumns: true,
        pageNumber: 1,
        pageSize: 20,
        pageList: [20, 30, 40, 50],
        columns: [
            [{
                field: ' ',
                checkbox: true
            }, {
                field: 'managerid',
                title: '管理员编号'
            }, {
                field: 'managerPwd',
                title: '管理员密码',
                hidden:true
            }, {
                field: 'managerName',
                title: '管理员姓名'
            }, {
                field: 'mgrRole',
                title: '职位',
                formatter : function(value){
                    if(value == null){
                        return '(暂无指定)';
                    } else {
                        return value.mgrRoleName;
                    }
                }
            }, {
                field: 'level',
                title: '等级',
                formatter : function (value,row){
                    if(row.mgrRole == null){
                        return '(暂无指定)';
                    } else {
                        return row.mgrRole.level;
                    }
                        
                }
            }]
        ],
        onRowContextMenu: function(e, index, data) {
            e.preventDefault();
            if (index != -1) {
                e.preventDefault();
                $('#mgrright').menu('show', {
                    left: e.pageX,
                    top: e.pageY
                });
                
                $('#mgr-list').datagrid('clearSelections');
                $('#mgr-list').datagrid('selectRow',index);                
                
                $('#mgrright').menu({
                    onClick:function(item){
                        
                        if('checkPwd'==item.name){
                            $.messager.alert('消息','密码是:'+data.managerPwd);
                        } else if ('updatePwd' == item.name){
                            $('#divUpdate').dialog('open');
                        }
                        
                    }
                });
            }

        }
    });
    
    //---datagrid---end
    //---searchbox---
    $('#mgrsearch').searchbox({
        searcher: function(value) {
            if (value.indexOf('\'') != -1) {
                $.messager.alert('警告', '不能传入单引号！', 'warning');
            } else {
                $('#mgr-list').datagrid({
                    queryParams: {
                        'kw': value
                    }
                });
            }
        },
        prompt: '请输入值',
        width: '150'
    });
    //---searchbox--end

});

//lockDiscuss button click event
$('#removeMgr').click(function() {
    
    
    $.messager.confirm('确认对话框', '您确定要删除么？',function(r){
        if (r){
    
            var rowData = $('#mgr-list').datagrid('getSelections');
            if (rowData.length == 0) {
                alert('请选中数据');
                return;
            }
            
            //将选中数据的id保存到数组中
            var ids = new Array();
            for (var i = 0; i < rowData.length; i++) {
                ids.push(rowData[i].managerid);
            }
        	
            // 将选中的id封装成一个json
            var dataJson = JSON.stringify(ids);
           	
            console.log('dataJson'+dataJson);
            
            $.ajax({
            	type:'post',
            	url:'/student-community/mgr/del.a',
            	data:dataJson,
            	datatype : 'json',
            	contentType : 'application/json;charset=utf-8',
            	success:function(data){
            	    if(data == '1'){
            	        $.messager.show({
            	        	title:'消息',
            	        	msg:'删除成功',
            	        	timeout:3000,
            	        	showType:'slide'
            	        });
            	        $('#mgr-list').datagrid('reload');
            	    }
            	}
               
           });
    
        }
    
    });
});

// loadAddMgrWindow begin
loadAddMgrWindow = function(mgrid,mgrName,role){
    
    if(mgrid != null){
	    $('#mgrid').val(mgrid);
	    $('#dis').css('display','none');
	    $('#addpwd').textbox('disableValidation');
	    $('#addrpwd').textbox('disableValidation');
    } else {
        $('#mgrid').val('');
        $('#mgrName').textbox('setValue','');
	    $('#dis').css('display','block');
	    $('#addpwd').textbox('enableValidation');
	    $('#addrpwd').textbox('enableValidation');
    }
    
    if(mgrName != null){
        $('#mgrName').textbox('setValue',mgrName);
    }
    
  	//student classes infomation
    $('#role').combogrid({
        url : '/student-community/mr/queryForCommbo.a',
        width : 200,
        panelWidth : 200,
        panelHeight : 'auto',
        idField:'mgrRoleid',
        textField:'mgrRoleName',
        editable:false,
        columns : [ [ {
            field : 'mgrRoleid',
            title : '职位编号',
            width : 60
        }, {
            field : 'mgrRoleName',
            title : '职位名称',
            width : 'auto'
        }, {
            field : 'level',
            title : '等级',
            width : 60
        } ] ],
        onLoadSuccess:function(){
            if(role != null){
                var g = $('#role').combogrid('grid');
                var row = g.datagrid('getRows');
                
                for (var i = 0; i < row.length; i++) {
                    
                    if(row[i].mgrRoleName == role){
                        $('#role').combogrid('setValue',row[i].mgrRoleid);
                        $('#role').combogrid('setText',role);
                    }
                }
            }
            
        }
        
    });
    
  
}
// --- loadAddMgrWindow end ---


$('#addMgr').click(function(){
    
    loadAddMgrWindow();
    
    $('#addMgrWindow').window('open');
    
});

// loadAddMgrWindow(mgrid,mgrName,role)
$('#updateMgr').click(function(){
    var rowData = $('#mgr-list').datagrid('getSelections');
    if(rowData.length == 0 || rowData.length > 1){
        $.messager.alert('消息','更新时只能选择一行数据','warning');
        $('#mgr-list').datagrid('clearSelections');
        return;
    }
    
    var mgrid = rowData[0].managerid;
    var mgrName = rowData[0].managerName;
    
    var role;
    
    if(rowData[0].mgrRole != null ){
        role = rowData[0].mgrRole.mgrRoleName;
    }
    
    loadAddMgrWindow(mgrid,mgrName,role);
    
    $('#addMgrWindow').window('open');
    
});

$('#mgrsave').click(function(){
    
    $('#MgrForm').form('submit', {
    	url: '/student-community/mgr/save.a',
    	onSubmit: function(){
    	    if($('#addpwd').val() != $('#addrpwd').val()){
    	        $.messager.alert('消息','密码不一致');
    	        return false;
    	    }
    		var isValid = $(this).form('validate');
    		
    		// 返回false终止表单提交
    		return isValid;	
    	},
    	success: function(data){
    	    if(data == 'save'){
    	        $.messager.show({
    	        	title:'消息',
    	        	msg:'添加管理员成功',
    	        	timeout:3000,
    	        	showType:'slide'
    	        });
    	    }
    	    if(data == 'update'){
    	        $.messager.show({
    	        	title:'消息',
    	        	msg:'更新信息成功',
    	        	timeout:3000,
    	        	showType:'slide'
    	        });
    	    }
    	    
    	    $('#MgrForm').form('clear');
    	    $('#addMgrWindow').window('close');
    	    $('#mgr-list').datagrid('reload');
    	}
    });
    
});

$('#mgrclear').click(function(){
    
    $('#role').combogrid('setValue',null);
    $('#role').combogrid('setText','');
    
});

$('#mgrclose').click(function(){
    $('#addMgrWindow').window('close');
});

</script>
</body>
