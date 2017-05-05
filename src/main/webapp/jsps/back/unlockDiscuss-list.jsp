<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 申请解封 -->
<body>
<!-- 模态窗口 -->
<div id="ulmodel"></div>
<!-- 锁定确认框 -->
<div id="ulconfirm"><span style="font-size:18px;">锁定原因:(如果不锁定处理信息将不会发送给用户)</span><br/> 
<textarea rows="6" cols="50" placeholder="请输入锁定的原因" maxlength="100" id="ulreason"></textarea>
</div>
<!-- 工具栏 -->
<div id="uldiscusstoolbar">
    <input id="ulrdsearch"></input>
    <a href="#" id="ullockDiscuss" class="easyui-linkbutton" style="width: 70px">处理</a>
</div>
<!-- 数据表格 -->
<table id="ulreport-discuss-list"></table> 
<script type="text/javascript">
$(function() {
	
    loadConfirmDialog = function(ids){
        
       $('#ulconfirm').dialog({
           title: '是否确认锁定',  
           closed: true,    
           modal: true,
           buttons:[{
   			text:'确认解锁',
   			handler:function(){
   			 if($('#reason').val() == ''){
   			     $('#reason').val('由于您违反了社区规定,所以将您锁定,您可以修改提问后向我们提交我们重新审核');
   			    }
   			    $.ajax({
   			        type:'post',
   			        url:'/student-community/udr/setStatus.a?unlock=1&msg='+$('#ulreason').val(),
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
   			    
   			    $('#ulreason').val('');
   			    $('#ulconfirm').dialog('close');
   			    $('#ulreport-discuss-list').datagrid('reload');
   			}
   		},{
   			text:'忽略',
   			handler:function(){
   			    
   			    $.ajax({
   			        type:'post',
   			        url:'/student-community/udr/setStatus.a?unlock=0',
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
   			    
   			    $('#ulreason').val('');
   			    $('#ulconfirm').dialog('close');
   			    $('#ulreport-discuss-list').datagrid('reload');
   			}
   		}]
       });
   }
    
    //load model window#model
    $('#ulmodel').window({
        title:'举报详情',
        width:600,
        height:400,
        modal:true,
        closed:true
    });
    
    //---datagrid---
    $('#ulreport-discuss-list').datagrid({
        url: '/student-community/udr/query.a',
        toolbar: '#uldiscusstoolbar',
        pagination: true,
        fit: true,
        fitColumns: true,
        pageNumber: 1,
        pageSize: 20,
        pageList: [20, 30, 40, 50],
        columns: [[{
                field: ' ',
                checkbox: true
            }, {
                field: 'discuss',
                title: '讨论编号',
                formatter: function(value){
    				return value.discussid;
    			}
            }, {
                field: 'message',
                title: '请求信息'
            }, {
                field: 'discussTitle',
                title: '讨论主题',
                formatter: function(value,row){
    				return row.discuss.discussTitle;
    			}
            }, {
                field: 'discussContent',
                title: '讨论详情',
                formatter: function(value,row){
    				return row.discuss.discussContent;
    			}
            }]]
    });
    
  	//load lock dialog
    loadConfirmDialog();
  
    //---datagrid---end
    //---searchbox---
    $('#ulrdsearch').searchbox({
        searcher: function(value) {
            if (value.indexOf('\'') != -1) {
                $.messager.alert('警告', '不能传入单引号！', 'warning');
            } else {
                $('#ulreport-discuss-list').datagrid({
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
$('#ullockDiscuss').click(function() {
    var rowData = $('#ulreport-discuss-list').datagrid('getSelections');
    if (rowData.length == 0) {
        alert('请选中数据');
        return;
    }
    
    console.log('rowData.length===='+rowData.length);
    //将选中数据的id保存到数组中
    var ids = new Array();
    for (var i = 0; i < rowData.length; i++) {
        console.log('rowData[i].discussid'+rowData[i].discuss.discussid);
        ids.push(rowData[i].discuss.discussid);
    }
	
    // 将选中的id封装成一个json
    var dataJson = JSON.stringify(ids);
    loadConfirmDialog(dataJson);
    $('#ulconfirm').dialog('open');
    
});
</script>
</body>
