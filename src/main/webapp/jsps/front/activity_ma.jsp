<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="cn">
<head>
<meta charset="utf-8">
<title>学生社区</title>
<link rel="icon" href="/student-community/ico/ico.png">
<link href="/student-community/layui/css/modules/laydate/laydate.css" rel="stylesheet">
<link href="/student-community/layui/css/layui.css" rel="stylesheet">
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/mycssfront.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/layui/layui.js"></script>
<script src="/student-community/layui/lay/modules/layedit.js"></script>
<script src="/student-community/layui/lay/modules/layer.js"></script>
<script src="/student-community/layui/area.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<%@ include file="nav.jsp"%>
	<div class="middle">
		<div class="QuestionHeader">
			<div class="QuestionHeader-content">
				<div class="ma-QuestionHeader-main">
					<div class="QuestionHeader-topics">
						<div class="mod-head">
							<img alt="" width="300px" height="200px" src="/student-community/img/580075.jpg">
						</div>
					</div>
					<div class="mod-body">
						<div class="content markitup-box"></div>
					</div>

				</div>
				<div class="ma-QuestionHeader-side">
					<div class="ma-QuestionFollowStatus-counts">
						<h3>[生活部]生活部准备纳新了</h3>
	</div>
	<div class="ma-substance">
	<div class="ma-address">
				地址:郑州市二七管理局对面
			</div>
		<div class="ma-apply">
			报名时间:&nbsp;&nbsp;2017-4-6&nbsp;&nbsp;截止时间:&nbsp;&nbsp;2017-4-7
		</div>
				</div>
				</div>
			</div>
			<div class="QuestionHeader-footer">
				<div class="QuestionHeader-footer-inner">
					<div class="QuestionHeader-footer-inner-main">
						<div class="QuestionHeader-actions">
							<button id="share" class="btn" type="button">
								<span class="glyphicon glyphicon-send" aria-hidden="true"></span>&nbsp;&nbsp;分享
							</button>
							<button id="collect" class="btn" type="button">
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>&nbsp;&nbsp;收藏
							</button>
							<button id="inform" class="btn" type="button">
							<span class="glyphicon glyphicon-flag" aria-hidden="true"></span>&nbsp;&nbsp;举报
							</button>
						</div>
					</div>
						<div class="ma-btn">
			<button id="apply" class="btn btn-primary" type="button">
							申请报名
						</button>
						</div>
				</div>
			</div>
		</div>
	</div>
	<div class="base">
		<div class="baseone">
		<div class="ma-baseone-one">
		<ul class="nav nav-tabs" role="tablist">
			<li class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">活动详情</a></li>
			<li><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">活动成员</a></li>
			<li><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">用户讨论</a></li>
			</ul>			
		</div>
		<div class="tab-content">
		<div class="tab-pane active" id="home">
【活动说明】
1、身份证、现金随身携带！
2、身体不适拒绝报名！
3、勿迟到、禁擅自离队 。
4、 组织者有取消活动、更改出发时间和线路的权利 。
5、户外有风险，因出行造成受伤责任自负。报名既视为接受本须知！
6、此旅程为户外AA形式，不可过于依赖领队！
7、切勿饮酒过度，造成身体不必要的伤害！ 免责声明。
8、本活动属于个人设计的出行日期及路线，仅限同好自愿报名，共同参与。
9、服从领队安排。无论走快走慢，请勿擅自脱离队伍，有情况请及时告知领队。领队有权根据当时状况对路线和行程作出调整。
10、参与者必须是具有完全民事行为能力的人。一律谢绝未成年人、代替报名及有身体健康问题或有突发病史者。
11、参与者应该知道户外运动必然有一定的危险性和不可预知性，所以必须自行承担除他人故意造成的人身损害外之全部的安全责任。
12、对于隐瞒自身身体及其它真实情况者，责任一律自负。
13、您明确知道参与户外运动只能相对增强心肺功能锻炼，并随个体差异不同会必然造成身体之物理及其他损伤。
14、请您认真阅读上述条款，慎重选择和参与，如果报名即表示已经阅读和完全同意上述声明条款。
	</div>
	<div class="tab-pane" id="profile">
			<div class="baseone mbox-shadow">
				姓名：111
			</div><br/>
			<div class="baseone mbox-shadow">
				姓名：111
			</div><br/>
			<div class="baseone mbox-shadow">
				姓名：111
			</div>
		</div>
		<div class="tab-pane" id="messages">
			 <div class="col-lg-6">
    <div class="input-group">
      <input type="text" class="form-control" placeholder="Search for...">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button">发送</button>
      </span>
    </div><!-- /input-group -->
  </div>
		</div>
		</div>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">

//申请报名
$('#apply').click(function(){
	 layer.confirm('确定要报名吗？', {
	  btn: ['确定','取消'] //按钮
	}, function(){
		layer.msg('已报名');
		$('#apply').text('已报名');
	}, function(){
	}); 
	
});
//举报
$('#inform').click(function(){
	layer.msg('已举报');
	$(this).html('<span class="glyphicon glyphicon-flag" aria-hidden="true"></span>&nbsp;&nbsp;已举报');
});

//这是收藏按钮
$('#collect').click(function(){
	layer.msg('已收藏');
	$(this).html('<span class="glyphicon glyphicon-flag" aria-hidden="true"></span>&nbsp;&nbsp;已收藏');
});

//分享
$('#share').click(function(){
	//$(this).attr('data-copytarget','#twitter');
	var url = window.location.href;
layer.msg('<input type="text" id="twitter" value="'+url+'" /> <button data-copytarget="#twitter" id="copyUrl">复制</button>', {icon: 1,time:30000});

$('#copyUrl').click(function(){
	layer.msg('已复制,快去告诉你的小伙伴吧');
});
});

//复制
(function() {

	'use strict';
  
  // click events
  document.body.addEventListener('click', copy, true);

	// event handler
	function copy(e) {

    // find target element
    var 
      t = e.target,
      c = t.dataset.copytarget,
      inp = (c ? document.querySelector(c) : null);
      
    // is element selectable?
    if (inp && inp.select) {
      
      // select text
      inp.select();

      try {
        // copy text
        document.execCommand('copy');
        inp.blur();
        
        // copied animation
        t.classList.add('copied');
        setTimeout(function() { t.classList.remove('copied'); }, 1500);
      }
      catch (err) {
        alert('please press Ctrl/Cmd+C to copy');
      }
      
    }
    
	}

})();



</script>
</html>
