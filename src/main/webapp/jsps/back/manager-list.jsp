<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<body>
<div id="maddStuWindow">
    <form method="post" id="mstuForm">
         <input id="mstuid" name="stuid" type="hidden">
                   管理员姓名: <input id="mstuName" name="stuName"><br>
                    性别: <input id="mstuSex" name="stuSex"><br>
                    祖&nbsp;&nbsp;籍:<input id="mstuAddr" name="stuNativePlace"><br> 
                    出生日期:<input id="mstuBirthday" name="stuBirthday"><br>
    </form>
    <a href="#" id="msave">保存</a> 
    <a href="#" id="mclose">关闭</a>
</div>
<div id="mtoolbar">
    <input id="msearch"></input> 
    <a href="#" id="maddStu" class="easyui-linkbutton" data-options="iconCls:'icon-add'" style="width: 70px">添加</a> 
    <a href="#" id="mremoveStu" class="easyui-linkbutton" data-options="iconCls:'icon-remove'" style="width: 70px">移除</a>
    <a href="#" id="mupdateStu" class="easyui-linkbutton" data-options="iconCls:'icon-reload'" style="width: 70px">修改</a>
</div>
<table id="mstu-list"></table>
<script type="text/javascript">
    $(function() {
        
        $('#msave').linkbutton({    
            iconCls: 'icon-save',
            width: 70
        });
        
        $('#mclose').linkbutton({    
            iconCls: 'icon-cancel', 
            width: 70
        });  
        
        //---datagrid---
        $('#mstu-list').datagrid({
            url : '/student-community/stu/getAllStu.a',
            toolbar : '#mtoolbar',
            pagination : true,
            fit : true,
            fitColumns : true,
            queryParams: {
                'isClassesid': 'false',
            },
            pageNumber : 1,
            pageSize : 20,
            pageList : [20, 30, 40, 50 ],
            columns : [ [ {
                field : ' ',
                checkbox : true
            }, {
                field : 'stuid',
                title : '管理员编号'
            }, {
                field : 'stuName',
                title : '管理员姓名'
            }, {
                field : 'stuSex',
                title : '性别',
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
            } ] ]
        });
        //---datagrid---end
        //---searchbox---
        $('#msearch').searchbox({
            searcher : function(value) {
                if (value.indexOf('\'') != -1) {
                    $.messager.alert('警告', '不能传入单引号！', 'warning');
                } else {
                    $('#mstu-list').datagrid({
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

        // add student window
        $('#maddStuWindow').window({
            width : 500,
            height : 'auto',
            title : '添加学生',
            collapsible : true, //显示折叠按钮
            minimizable : true, //显示最小化按钮
            maximizable : true, //显示最大化按钮
            closable : true, //显示关闭按钮
            closed : true //加载时关闭按钮
        });
        
        mlaodAddWindow = function(stuid,stuName,stuSex,cls,stuNativePlace,stuBirthday){
            
            if(stuid != null){
                $('#mstuid').val(stuid);
            }
            
          //student stuName textbox
            $('#mstuName').textbox({
                width:200,
                required:true,
                value:stuName,
                missingMessage:'姓名必填',
                validType:['length[1,15]'],
                invalidMessage:'姓名的长度在1-15位之间'
            });
            
            $('#mstuSex').combobox({
                data : [ {
                    "id" : 0,
                    "text" : "女"
                }, {
                    "id" : 1,
                    "text" : "男"
                } ],
                width : 200,
                valueField : 'id',
                textField : 'text',
                panelHeight : 'auto',
                editable:false,
                onLoadSuccess:function(){
                    if(stuSex==null){
                        var data = $('#mstuSex').combobox('getData');
                        if(data != ''){
                            $('#mstuSex').combobox('select',data[0].id);
                        }
                    } else {
                            $('#mstuSex').combobox('select',stuSex);
                    }
                    
                }
            });
            
            
            //student address combobox
            $('#mstuAddr').combobox({
                url:'/student-community/json/address.json',
                width : 200,
                valueField : 'id',
                textField : 'text',
                editable:false,
                onLoadSuccess:function(){
                    var data = $('#mstuAddr').combobox('getData');
                    if(data != ''){
                        if(stuNativePlace != null){
                            for(var i = 0;i<data.length;i++){
                                if(data[i].id == stuNativePlace){
                                    $('#mstuAddr').combobox('select',data[i].id);
                                    break;
                                }
                            }
                        } else {
                            $('#mstuAddr').combobox('select',data[0].id);
                        }
                    }
                }
            });
            
            
            //minitDatebox #stuBirthday
            minitDatebox = function(){
             // student birthday datebox
                $('#mstuBirthday').datebox({
                    width : 200,
                    editable:false,
                    formatter : function(date) {
                        var y = date.getFullYear();
                        var m = date.getMonth() + 1;
                        var d = date.getDate();
                        return y + '-' + m + '-' + d;
                    },
                    parser : function(s) {
                        if (!s)
                            return new Date();
                        var ss = (s.split('-'));
                        var y = parseInt(ss[0], 10);
                        var m = parseInt(ss[1], 10);
                        var d = parseInt(ss[2], 10);
                        if (!isNaN(y) && !isNaN(m) && !isNaN(d)) {
                            return new Date(y, m - 1, d);
                        } else {
                            return new Date();
                        }
                    },
                    onSelect:function(date){
                        var now = new Date(); 
                        if(date > now){
                            alert('日期选择错误,不能大于当前日期');
                            var strDate = now.getFullYear()+"-";
                                strDate += now.getMonth()+1+"-";
                                strDate += now.getDate();
                            $(this).datebox('setValue',strDate);
                        }
                    }
                });
                
                //if update sutdent info set the datebox value
                //is student's birthday
                if(stuBirthday != null){
                    $('#mstuBirthday').datebox('setValue',stuBirthday);
                }
            }
            
            //初始化日期框
            minitDatebox();
        }

        //add student form 
        $('#mstuForm').form({
            url : '/student-community/stu/saveStu.a',
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
                $('#maddStuWindow').window('close');
                $('#mstu-list').datagrid('reload');
            }
        });
    });
    
    //addStu button click event
    $('#maddStu').click(function() {
        //init #addStuWindow 
        mlaodAddWindow();
        
        //open #addStuWindow 
        $('#maddStuWindow').window('open');
    });
    
    //updateStu button click event
     $('#mupdateStu').click(function() {
         var rowData = $('#mstu-list').datagrid('getSelections');
         if(rowData.length == 0 || rowData.length > 1){
             $.messager.alert('消息','更新时只能选择一行数据','warning');
             $('#mstu-list').datagrid('clearSelections');
             return;
         }
         
         var stuid = rowData[0].stuid;
         var stuName = rowData[0].stuName;
         var stuSex = rowData[0].stuSex;
         var cls = rowData[0].classesid;
         var stuNativePlace = rowData[0].stuNativePlace;
         var stuBirthday = rowData[0].stuBirthday;
         
        //init #addStuWindow
        mlaodAddWindow(stuid,stuName,stuSex,cls,stuNativePlace,stuBirthday);
        
        //open #addStuWindow 
        $('#maddStuWindow').window('open');
    });
        
    
    //remove student
    //the #removeStu click event
     $('#mremoveStu').click(function(){
         var rowData = $('#mstu-list').datagrid('getSelections');
         if(rowData.length == 0){
             alert('请选中数据');
             return;
         }
         
         $.messager.confirm('确认对话框', '您确定要删除么？', function(r){
            if (r){
                var ids = new Array(); 
                for(var i = 0;i<rowData.length;i++){
                    ids.push(rowData[i].stuid);
                }
                
                var dataJson = JSON.stringify(ids);
                $.ajax({
                    type:'post',
                    url:'/student-community/stu/deleteStu.a',
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
                         $('#mstu-list').datagrid('reload');
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
    
    //close add student window
    $('#mclose').click(function() {
        $('#maddStuWindow').window('close');
    });

    //submit the form stuForm
    $('#msave').click(function() {
        $('#mstuForm').submit();
    });
    
    
</script>
</body>