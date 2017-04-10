<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<body>
<div id="addStuWindow">
    <form method="post" id="stuForm">
         <input id="stuid" name="stuid" type="hidden">
                    学生姓名: <input id="stuName" name="stuName"><br>
                    学生性别: <input id="stuSex" name="stuSex"><br>
                    班&nbsp;&nbsp;级:<input id="cls"  name="classes.classesid"><br> 
                    祖&nbsp;&nbsp;籍:<input id="stuAddr" name="stuNativePlace"><br> 
                    出生日期:<input id="stuBirthday" name="stuBirthday"><br>
    </form>
    <a href="#" id="save">保存</a> 
    <a href="#" id="close">关闭</a>
</div>
<div id="toolbar">
    <input id="search"></input> 
    <a href="#" id="addStu" class="easyui-linkbutton" data-options="iconCls:'icon-add'" style="width: 70px">添加</a> 
    <a href="#" id="removeStu" class="easyui-linkbutton" data-options="iconCls:'icon-remove'" style="width: 70px">移除</a>
    <a href="#" id="updateStu" class="easyui-linkbutton" data-options="iconCls:'icon-reload'" style="width: 70px">修改</a>
</div>
<table id="stu-list"></table>
<script type="text/javascript">
    $(function() {
        
        $('#save').linkbutton({    
            iconCls: 'icon-save',
            width: 70
        });
        
        $('#close').linkbutton({    
            iconCls: 'icon-cancel', 
            width: 70
        });  
        
        
        //---datagrid---
        $('#stu-list').datagrid({
            url : '/student-community/stu/getAllStu.a',
            toolbar : '#toolbar',
            pagination : true,
            fit : true,
            fitColumns : true,
            queryParams: {
        		'isClassesid': 'true',
        	},
            pageNumber : 1,
            pageSize : 20,
            pageList : [20, 30, 40, 50 ],
            columns : [ [ {
                field : ' ',
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
                        return '一年级' + value.classes;
                    } else if (value.grade == 1) {
                        return '二年级' + value.classes;
                    } else if (value.grade == 2) {
                        return '三年级' + value.classes;
                    } else if (value.grade == 3) {
                        return '四年级' + value.classes;
                    } else if (value.grade > 3) {
                        return '已毕业';
                    }
                }
            } ] ]
        });
        //---datagrid---end
        //---searchbox---
        $('#search').searchbox({
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
        //---searchbox--end

        // add student window
        $('#addStuWindow').window({
            width : 500,
            height : 'auto',
            title : '添加学生',
            collapsible : true, //显示折叠按钮
            minimizable : true, //显示最小化按钮
            maximizable : true, //显示最大化按钮
            closable : true, //显示关闭按钮
            closed : true //加载时关闭按钮
        });
        
        laodAddWindow = function(stuid,stuName,stuSex,cls,stuNativePlace,stuBirthday){
            
            if(stuid != null){
                $('#stuid').val(stuid);
            }
            
          //student stuName textbox
            $('#stuName').textbox({
                width:200,
                required:true,
                value:stuName,
                missingMessage:'姓名必填',
                validType:['length[1,15]'],
                invalidMessage:'姓名的长度在1-15位之间'
            });
            
            $('#stuSex').combobox({
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
                        var data = $('#stuSex').combobox('getData');
                        if(data != ''){
                            $('#stuSex').combobox('select',data[0].id);
                        }
                    } else {
                            $('#stuSex').combobox('select',stuSex);
                    }
                    
                }
            });
            /*
            //student grade data
            var gradeData=[{    
                "id":0,    
                "text":'一年级',
            },{    
                "id":1,    
                "text":'二年级',   
            },{    
                "id":2,    
                "text":'三年级',   
            },{    
                "id":3,    
                "text":'四年级',   
            }];
            
            $('#grade').combobox({
                data:gradeData,
                width:200,
                valueField:'id',
                textField:'text',
                panelHeight:'auto',
                onSelect:function(record){
                    $('#cls').combobox({
                        url:'/student-community/cls/getcls.a?grade='+record.id,
                        width:200,
                        valueField:'classes',
                        textField:'classes',
                        panelHeight:'auto'
                    });
                }
            });
             */
            
            //student classes infomation
            $('#cls').combogrid({
                url : '/student-community/cls/allCls.a',
                queryParams : {kw : 'no'},
                width : 200,
                panelWidth : 300,
                panelHeight : 'auto',
                editable:false,
                columns : [ [ {
                    field : 'grade',
                    title : '年级',
                    width : 60,
                    formatter : function(value) {
                        if (value == 0) {
                            return '一年级';
                        } else if (value == 1) {
                            return '二年级';
                        } else if (value == 2) {
                            return '三年级';
                        } else if (value == 3) {
                            return '四年级';
                        }
                    }
                }, {
                    field : 'classes',
                    title : '班级',
                    width : 100
                }, {
                    field : 'years',
                    title : '入学时间',
                    width : 120
                } ] ],
                onLoadSuccess:function(){
                    var g = $('#cls').combogrid('grid');
                    var row = g.datagrid('getRows');
                    var gradeTxt = row[0].grade;
                    
                    if (gradeTxt == 0) {
                        gradeTxt = '一年级';
                    } else if (gradeTxt == 1) {
                        gradeTxt = '二年级';
                    } else if (gradeTxt == 2) {
                        gradeTxt = '三年级';
                    } else if (gradeTxt == 3) {
                        gradeTxt = '四年级';
                    }
                    if(g != ''){
                        if(cls != null){
                            for(var i = 0;i<row.length;i++){
                                if(row[i].classesid == cls){
                                    $('#cls').combogrid('setValue',row[i].classesid);
                                    $('#cls').combogrid('setText',gradeTxt+row[i].classes);
                                    break;
                                }
                                
                            }
                        } else {
                            $('#cls').combogrid('setValue',row[0].classesid);
                            $('#cls').combogrid('setText',gradeTxt+row[0].classes);
                        }
                    }
                },
                onSelect : function(rowIndex, rowData) {
                    var gradeTxt = rowData.grade;
                    if (gradeTxt == 0) {
                        gradeTxt = '一年级';
                    } else if (gradeTxt == 1) {
                        gradeTxt = '二年级';
                    } else if (gradeTxt == 2) {
                        gradeTxt = '三年级';
                    } else if (gradeTxt == 3) {
                        gradeTxt = '四年级';
                    }
                    $('#cls').combogrid({
                      onLoadSuccess:function(){
                        $('#cls').combogrid('setValue',rowData.classesid);
                        $('#cls').combogrid('setText',gradeTxt+rowData.classes);
                      }
                        
                    });
                } 
            });

            //student address combobox
            $('#stuAddr').combobox({
                url:'/student-community/json/address.json',
                width : 200,
                valueField : 'id',
                textField : 'text',
                editable:false,
                onLoadSuccess:function(){
                    var data = $('#stuAddr').combobox('getData');
                    if(data != ''){
                        if(stuNativePlace != null){
                            for(var i = 0;i<data.length;i++){
                                if(data[i].id == stuNativePlace){
                                    $('#stuAddr').combobox('select',data[i].id);
                                    break;
                                }
                            }
                        } else {
                            $('#stuAddr').combobox('select',data[0].id);
                        }
                    }
                }
            });
            
            
            //initDatebox #stuBirthday
            initDatebox = function(){
             // student birthday datebox
                $('#stuBirthday').datebox({
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
                    $('#stuBirthday').datebox('setValue',stuBirthday);
                }
            }
            
            //初始化日期框
            initDatebox();
        }

        //add student form 
        $('#stuForm').form({
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
                $('#addStuWindow').window('close');
                $('#stu-list').datagrid('reload');
            }
        });
    });
    
    //addStu button click event
    $('#addStu').click(function() {
        //init #addStuWindow 
        laodAddWindow();
        
        //open #addStuWindow 
        $('#addStuWindow').window('open');
    });
    
    //updateStu button click event
     $('#updateStu').click(function() {
         var rowData = $('#stu-list').datagrid('getSelections');
         if(rowData.length == 0 || rowData.length > 1){
             $.messager.alert('消息','更新时只能选择一行数据','warning');
             $('#stu-list').datagrid('clearSelections');
             return;
         }
         
         var stuid = rowData[0].stuid;
         var stuName = rowData[0].stuName;
         var stuSex = rowData[0].stuSex;
         var cls = rowData[0].classesid;
         var stuNativePlace = rowData[0].stuNativePlace;
         var stuBirthday = rowData[0].stuBirthday;
         
        //init #addStuWindow
        laodAddWindow(stuid,stuName,stuSex,cls,stuNativePlace,stuBirthday);
        
        //open #addStuWindow 
        $('#addStuWindow').window('open');
    });
        
    
    //remove student
    //the #removeStu click event
     $('#removeStu').click(function(){
         var rowData = $('#stu-list').datagrid('getSelections');
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
                
                //转换成JSON字符串
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
                         $('#stu-list').datagrid('reload');
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
    $("#close").click(function() {
        $('#addStuWindow').window('close');
    });

    //submit the form stuForm
    $('#save').click(function() {
        $('#stuForm').submit();
    });
    
    
</script>
</body>