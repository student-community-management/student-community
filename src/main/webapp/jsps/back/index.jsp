<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>学生社区管理</title>
<link rel="stylesheet" type="text/css" href="/student-community/easyui/themes/material/easyui.css" />
<link rel="stylesheet" type="text/css" href="/student-community/css/mycssback.css" />
<link rel="stylesheet" type="text/css" href="/student-community/easyui/themes/icon.css" />
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/easyui/jquery.easyui.min.js"></script>
<script src="/student-community/easyui/local/easyui-lang-zh_CN.js"></script>
</head>
<body>
    <div data-options="region:'north',border:false"
        style="height: 60px; background: #B3DFDA; padding: 10px">
            欢迎管理员:${ mgr.managerName } <a href="/student-community/mgr/invalidate.a" >注销</a> 权限等级${ sessionScope.level }
    </div>
    
    <div data-options="region:'west',split:true,title:'管理菜单'" style="width: 200px;">
        <div id="mnav-accordion" class="mnav-accordion">
         <c:forEach var="menu" items="${menus}">
            <div title="${menu.parentMenuName }" class="mnav-item">
                    <ul>
                        <c:forEach var="submenu" items="${menu.submenus}">
                            <li><a hrefs="${ submenu.url }" class="mnav-items">${ submenu.submenuName }</a></li>
                        </c:forEach>
                    </ul>
                </div>
        </c:forEach>
        </div>
    </div>

    <div data-options="region:'center'">
        <div id="tabs">
            <div title="Help" data-options="iconCls:'icon-help',closable:true" style="padding: 10px">
                This is the help content.</div>
        </div>

    </div>
    <div data-options="region:'south',border:false"
        style="height: 50px; background: #A9FACD; padding: 10px;">south region</div>
</body>
<script type="text/javascript">
    $(function() {
        /*
        	初始化 布局框架
         */
        $('body').layout();
        /*
        	初始化 选项卡页面 
        	fit boolean 如果设置为true，分类容器大小将自适应父容器。 false 
         */
        $('#tabs').tabs({
            border : false,
            fit : true
        });
        /*
        	初始手风琴(在文档中翻译为 分类)
         */
        $('#mnav-accordion').accordion({
            border : false,
            fit : true
        });
    });

    $('.mnav-items').click(function() {
        
        if($('#tabs').tabs('exists',$(this).text())){
            $('#tabs').tabs('select',$(this).text());
            return;
        }
        
        $('#tabs').tabs('add', {
            title : $(this).text(), //把a标签的内容赋值给标签标题
            href : $(this).attr('hrefs'),//得到连接
            closable : true ,//可关闭
        });
    });
</script>
</html>
