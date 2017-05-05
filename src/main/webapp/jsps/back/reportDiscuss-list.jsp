<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 被举报切且未被处理的讨论 -->
<body>
<!-- 右键菜单栏 -->
<div id="right" class="easyui-menu" style="width: 120px;">
    <div id="details">查看举报详情</div>
</div>
<!-- 模态窗口 -->
<div id="model"></div>
<!-- 锁定确认框 -->
<div id="confirm"><span style="font-size:18px;">锁定原因:(如果不锁定处理信息将不会发送给用户)</span><br/> 
<textarea rows="6" cols="50" placeholder="请输入锁定的原因" maxlength="100" id="reason"></textarea>
</div>
<!-- 工具栏 -->
<div id="discusstoolbar">
    <input id="rdsearch"></input>
    <a href="#" id="lockDiscuss" class="easyui-linkbutton" style="width: 70px">处理</a>
</div>
<!-- 数据表格 -->
<table id="report-discuss-list"></table>
<script type="text/javascript">
$(function() {
	
    loadConfirmDialog = function(ids){
        
           $('#confirm').dialog({
               title: '是否确认锁定',  
               closed: true,    
               modal: true,
               buttons:[{
       			text:'确认锁定',
       			handler:function(){
       			    if($('#reason').val() == ''){
       			     $('#reason').val('由于您违反了社区规定,所以将您锁定,您可以修改提问后向我们提交我们重新审核');
       			    }
       			    $.ajax({
       			        type:'post',
       			        url:'/student-community/rd/setStatus.a?lock=1&msg='+$('#reason').val(),
       			        data: ids,
                        datatype: 'json',
                        contentType: 'application/json;charset=utf-8',
       			        success:function(msg){
       			            if(msg == 'ok'){
       			                $.messager.show({
       		                        title:'消息',
       		                        msg:'锁定成功',
       		                        timeout:3000,
       		                        showType:'slide'
       		                    });
       			            }
       			        }
       			    });
       			    
       			    $('#reason').val('');
       			    $('#confirm').dialog('close');
       			    $('#report-discuss-list').datagrid('reload');
       			}
       		},{
       			text:'不锁定',
       			handler:function(){
       			    
       			    $.ajax({
       			        type:'post',
       			        url:'/student-community/rd/setStatus.a?lock=0',
       			        data: ids,
                           datatype: 'json',
                           contentType: 'application/json;charset=utf-8',
       			        success:function(msg){
       			            if(msg == 'ok'){
       			                $.messager.show({
       		                        title:'消息',
       		                        msg:'处理完成',
       		                        timeout:3000,
       		                        showType:'slide'
       		                    });
       			            }
       			        }
       			        
       			    });
       			    
       			    $('#reason').val('');
       			    $('#confirm').dialog('close');
       			    $('#report-discuss-list').datagrid('reload');
       			}
       		}]
           });
       }
    
    
    
    //load model window#model
    $('#model').window({
        title:'举报详情',
        width:600,
        height:400,
        modal:true,
        closed:true
    });
    
    //---datagrid---
    $('#report-discuss-list').datagrid({
        url: '/student-community/discuss/getReportDiscusses.a',
        toolbar: '#discusstoolbar',
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
                field: 'discussid',
                title: '讨论编号'
            }, {
                field: 'discussTitle',
                title: '讨论主题'
            }, {
                field: 'discussContent',
                title: '讨论详情'
            }, {
                field: 'reportNum',
                title: '被举报数量'
            }]
        ],
        onRowContextMenu: function(e, index, data) {
            e.preventDefault();

            if (index != -1) {
                $('#right').menu('show', {
                    left: e.pageX,
                    top: e.pageY
                });
                $('#details').click(function() {
                    $('#model').window({
                        href:'report-content.jsp?discussid='+data.discussid
                    });
                    
                    $('#model').window('open');

                });
            }

        }
    });
    
  	//load lock dialog
    loadConfirmDialog();
  
    //---datagrid---end
    //---searchbox---
    $('#rdsearch').searchbox({
        searcher: function(value) {
            if (value.indexOf('\'') != -1) {
                $.messager.alert('警告', '不能传入单引号！', 'warning');
            } else {
                $('#report-discuss-list').datagrid({
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
$('#lockDiscuss').click(function() {
    var rowData = $('#report-discuss-list').datagrid('getSelections');
    if (rowData.length == 0) {
        alert('请选中数据');
        return;
    }
    
    
    //将选中数据的id保存到数组中
    var ids = new Array();
    for (var i = 0; i < rowData.length; i++) {
        ids.push(rowData[i].discussid);
    }
	
    // 将选中的id封装成一个json
    var dataJson = JSON.stringify(ids);
    loadConfirmDialog(dataJson);
    $('#confirm').dialog('open');
});
</script>
</body>
