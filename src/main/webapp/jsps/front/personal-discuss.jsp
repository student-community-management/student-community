<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<link href="/student-community/ma/css/bootstrap.css" rel="stylesheet">
<link href="/student-community/layui/css/layui.css" rel="stylesheet">
<link href="/student-community/ma/macss/style.css" rel="stylesheet">
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/layui/layui.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
</head>
<%@ include file="personal-nav.jsp" %>
    <!--  循环部分  -->
    
    
    
    
  </section>
</section>
<script>

$(".ma-drop").click(function() {
  layer.confirm('确定要删除吗？', {
      btn: ['确定', '取消'] //按钮
  }, function() {
      layer.msg('已删除');
  }, function() {});
});
</script>
</body>

</html>
