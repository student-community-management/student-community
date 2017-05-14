<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body>

<div id="cmtoolbar">
    <input id="cmsearch"></input> 
    <a href="#" id="setMaster" class="easyui-linkbutton" style="width: 90px">确认设为团长</a>
</div>

<table id="cmstu-list"></table>

<script type="text/javascript">
$(function() {
  //---searchbox---
    $('#cmsearch').searchbox({
        searcher : function(value) {
            if (value.indexOf('\'') != -1) {
                $.messager.alert('警告', '不能传入单引号！', 'warning');
            } else {
                $('#cmstu-list').datagrid({
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
    
    // 学生datagrid
$('#cmstu-list').datagrid({
    url : '/student-community/stu/getCandidate.a',
    toolbar : '#cmtoolbar', //工具栏
    queryParams : {
        'id' : '${param.commid}'
    },
    pagination : true, //是否显示分页
    fit : true, //是否自动扩充
    fitColumns : true, //自动扩充列
    singleSelect : true,
    pageNumber : 1, //初始化指定当前页
    pageSize : 20,  //初始化指定每页显示行数
    pageList : [20, 30, 40, 50 ], //分页行数选择
    columns : [ [ {
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
    } ] ]
});
        //---datagrid---end
});
    
    $('#setMaster').click(function(){
        var data = $('#cmstu-list').datagrid('getSelected');
        
        $.messager.confirm('确认对话框', '您确定将'+data.stuName+'设置为团长么?', function(r){
            
            console.log('stuid==='+'${param.stuid}');
            console.log('data.stuid'+data.stuid);
            // 如何当前的社团团长和想要指定的团长是同一人则直接提示操作成功
            if('${param.stuid}' == data.stuid){
                $.messager.show({
                    title:'消息',
                    msg:'设置团长成功',
                    timeout:3000,
                    showType:'slide'
                });
                return;
            }
            
            if (r){
                $.ajax({
                    type:'post',
                    url:'/student-community/comm/setMaster.a',
                    data:{'commid': ${param.commid},'stuid':data.stuid },
                    success: function(msg){
                        if(msg == 'ok'){
                            $.messager.show({
                                title:'消息',
                                msg:'设置管理员成功',
                                timeout:3000,
                                showType:'slide'
                            });
                         $('#commModel').window('close');
                         $('#comm-list').datagrid('reload');
                        } else {
                            $.messager.show({
                                title:'消息',
                                msg:'操作失败',
                                timeout:3000,
                                showType:'slide'
                            });
                        }
                     }
                });
            }
         });
    });
    
    
</script>
</body>