<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
<div id="addCommWindow">
    <form method="post" id="commForm">
         <input id="commid" name="communityid" type="hidden">
                   社团名称:<input id="commName" name="communityName"><br>
    </form>
    <a href="#" id="commsave">保存</a> 
    <a href="#" id="commclose">关闭</a>
</div>
<div id="commtoolbar">
    <input id="csearch"></input> 
    <a href="#" id="addComm" class="easyui-linkbutton" data-options="iconCls:'icon-add'" style="width: 70px">添加</a> 
    <a href="#" id="removeComm" class="easyui-linkbutton" data-options="iconCls:'icon-remove'" style="width: 70px">移除</a>
    <a href="#" id="updateComm" class="easyui-linkbutton" data-options="iconCls:'icon-reload'" style="width: 70px">修改</a>
</div>
<table id="comm-list"></table>
<script type="text/javascript">
    $(function() {
        
        $('#commsave').linkbutton({    
            iconCls: 'icon-save',
            width: 70
        });
        
        $('#commclose').linkbutton({    
            iconCls: 'icon-cancel', 
            width: 70
        });
        
        //---datagrid---
        $('#comm-list').datagrid({
            url : '/student-community/comm/getAllComm.a',
            toolbar : '#commtoolbar',
            pagination : true,
            fit : true,
            fitColumns : true,
            pageNumber : 1,
            pageSize : 20,
            pageList : [20, 30, 40, 50 ],
            columns : [ [ {
                field : ' ',
                checkbox : true
            }, {
                field : 'communityid',
                title : '社团编号'
            }, {
                field : 'communityName',
                title : '社团'
            }, {
                field : 'stus',
                title : '团长',
                formatter:function(value,row){
                    if(value.length == 1){
	                  return value[0].stuName;
                    } else {
                        return '(暂无指定)';
                    }
                    
                },
                styler: function(value,row){
                    if(value.length == 0){
        				return 'background-color:#C0C7C3;';
                    }
                    
            	}
            }, {
                field : 'stuNum',
                title : '人数'
            }] ]
        });
        
        //---datagrid---end
        //---searchbox---
        $('#csearch').searchbox({
            searcher : function(value) {
                if (value.indexOf('\'') != -1) {
                    $.messager.alert('警告', '不能传入单引号！', 'warning');
                } else {
                    $('#comm-list').datagrid({
                        queryParams : {
                            'kw' : value
                        }
                    });
                }
            },
            prompt : '请输入值',
            width : '150'
        });
        //---searchbox--end

        // add community window
        $('#addCommWindow').window({
            height : 'auto',
            title : '添加社团',
            collapsible : true, //显示折叠按钮
            minimizable : true, //显示最小化按钮
            maximizable : true, //显示最大化按钮
            closable : true, //显示关闭按钮
            closed : true //加载时关闭按钮
        });
        
        loadAddWindow = function(commid,commName){
            
            
            if(commid == undefined){
                commid='';
                commName='';
            }
            
            if(commid != null){
                $('#commid').val(commid);
            }
            
          //community commName textbox
            $('#commName').textbox({
                width:200,
                required:true,
                value:commName,
                missingMessage:'社团名称必填',
                validType:['length[1,10]'],
                invalidMessage:'社团名称的长度在1-10位之间'
            });
        }

        //add community form 
        $('#commForm').form({
            url : '/student-community/comm/saveComm.a',
            onSubmit : function() {
              var isValid = $(this).form('validate');
              if(!isValid){
                  $.messager.alert('消息','请填写完整信息','error');
              }
              return isValid;
            },
            success : function(data) {
                if(data == 'save is ok'){
                    $.messager.show({
                        title:'消息',
                        msg:'添加成功',
                        timeout:3000,
                        showType:'slide'
                    });
                } else if (data == 'update is ok'){
                    $.messager.show({
                        title:'消息',
                        msg:'更新成功',
                        timeout:3000,
                        showType:'slide'
                    });
                }
                $('#addCommWindow').window('close');
                $('#comm-list').datagrid('reload');
            }
        });
    });
    
    //addComm button click event
    $('#addComm').click(function() {
        //init #addCommWindow 
        loadAddWindow();
        
        //open #addCommWindow 
        $('#addCommWindow').window('open');
    });
    
    //updateComm button click event
     $('#updateComm').click(function() {
         var rowData = $('#comm-list').datagrid('getSelections');
         if(rowData.length == 0 || rowData.length > 1){
             $.messager.alert('消息','更新时只能选择一行数据','warning');
             $('#comm-list').datagrid('clearSelections');
             return;
         }
         
         var commid = rowData[0].communityid;
         var commName = rowData[0].communityName;
         
        //init #addCommWindow
        loadAddWindow(commid,commName);
        
        //open #addCommWindow 
        $('#addCommWindow').window('open');
    });
        
    
    //remove community
    //the #removeComm click event
     $('#removeComm').click(function(){
         var rowData = $('#comm-list').datagrid('getSelections');
         if(rowData.length == 0){
             alert('请选中数据');
             return;
         }
         
         $.messager.confirm('确认对话框', '您确定要删除么？', function(r){
            if (r){
                var ids = new Array(); 
                for(var i = 0;i<rowData.length;i++){
                    ids.push(rowData[i].communityid);
                }
                
                var dataJson = JSON.stringify(ids);
                $.ajax({
                    type:'post',
                    url:'/student-community/comm/delComm.a',
                    data:dataJson,
                    datatype : 'json',
                    contentType : 'application/json;charset=utf-8',
                    success: function(msg){
                        if(msg == 'ok'){
                            $.messager.show({
                                title:'消息',
                                msg:'删除成功',
                                timeout:3000,
                                showType:'slide'
                            });
                         $('#comm-list').datagrid('reload');
                        } else {
                            $.messager.show({
                                title:'消息',
                                msg:'删除失败',
                                timeout:3000,
                                showType:'slide'
                            });
                        }
                     }
                });
            }
         });
         
     });
    
    //close add community window
    $("#commclose").click(function() {
        $('#addCommWindow').window('close');
    });

    //submit the form commForm
    $('#commsave').click(function() {
        $('#commForm').submit();
    });
    
    
</script>
</body>