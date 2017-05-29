<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="nav.jsp"%>
<%@ include file="my-nav.jsp"%>
<div class="tab-content">
<div class="tab-pane active" id="home">

<!-- 循环 -->
<div>
<a class="btn btn-danger" href="#" id="joinComm" style="margin: 20px">申请加入新的社团</a>     
</div>
<c:if test="${fn:length(commList) != 0 }">
<c:forEach items="${commList }" var="comm">
     <div class="col-md-4 col-sm-4 mb ss">
        <div class="white-panel pn">
            <div class="white-header">
                <h4 class="ma-white-ya">
                    <a href="#" class="ma-href-a">${ comm.communityName }</a>
                    <a hrefs="/student-community/stu/getStusByCommid.a?commid=${ comm.communityid }&manage=0" class="ma-href-a commInfo">查看社团</a>
                    <c:forEach items="${ commMasterList }" var="mcomm">
                        <c:if test="${comm.communityid == mcomm.communityid }">
                           <a hrefs="/student-community/stu/getStusByCommid.a?commid=${ comm.communityid }&manage=1" class="ma-href-a commInfo">管理社团</a>
                        </c:if>
                    </c:forEach>
                 </h4>
            </div>

            <a hrefs="/student-community/stu/getStusByCommid.a?commid=${ comm.communityid }&manage=0" class="thumbnail commInfo">
                <img src="/image/community/${ comm.img }">
            </a>
        </div>
    </div>
</c:forEach>
</c:if>
<!-- 循环end -->
<c:if test="${fn:length(commList) == 0 }">
    <h1>您还没有加入社团,请赶快加入社团吧!</h1>
</c:if>
            <!-- end tab 切换 -->
        </div>

    </div>

    </div>
    </div>
    </div>

<script type="text/javascript">

layui.use(['form'], function(){
    var form = layui.form();
    var layer = layui.layer;
});


$('.commInfo').click(function(){
    
    layer.open({
        type: 2,
        top: '50px',
         area : ['1050px' , '600px'],
        content: $(this).attr('hrefs')
      });
});

$('#joinComm').click(function(){
    layer.open({
        type: 2,
        top: '50px',
         area : ['1050px' , '600px'],
        content: '/student-community/comm/getNewCommunity.a'
      });
});
</script>

</body>
</html>