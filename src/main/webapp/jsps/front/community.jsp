<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="cn">
<head>
<meta charset="utf-8">
<title>学生社区</title>
<link rel="icon" href="/student-community/ico/ico.png">
<link href="/student-community/css/bootstrap.min.css" rel="stylesheet">
<link href="/student-community/css/non-responsive.css" rel="stylesheet">
<link href="/student-community/css/mycssfront.css" rel="stylesheet">
<link href="/student-community/css/docs.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
</head>
<body>
	<%@ include file="nav.jsp"%>
	<div class="container">
		<ul class="nav nav-tabs nav-justified">
			<li role="presentation"><a
				href="/student-community/jsps/front/discuss.jsp">发表话题</a></li>
			<li role="presentation" class="active"><a
				href="/student-community/jsps/front/community.jsp">全新论坛</a></li>

		</ul>
		<div class="page-header">
			<h4>
				<img class="mlist" src="/student-community/ico/list.png" width="20">
				最新动态
			</h4>
		</div>

		<div class="container">
			<div class="row">
				<div class="aw-content-wrap clearfix">
					<div class="col-sm-12 col-md-9 aw-main-content">
						<div class="aw-mod aw-topic-list-mod">
							<div class="mod-head">
								<div class="tabbable">
									<!-- tab 切换 -->
									<ul class="nav nav-tabs" role="tablist">
										<li class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">全部内容</a></li>
										<li><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">精华</a></li>
										<li><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">关于我的话题</a></li>
										<div class="aw-search-bar pull-right hidden-xs">
											<i class="icon icon-search"></i> <input type="text"
												id="question-input" class="search-query form-control"
												placeholder="搜索...">
											<div class="aw-dropdown" style="display: none;">
												<p class="title">没有找到相关结果</p>
												<ul class="aw-dropdown-list" style="display: none;"></ul>
											</div>
										</div>
									</ul>
								</div>
							</div>
							
							
							
							<div class="tab-content">
								<div class="tab-pane active" id="home">
									<div class="aw-item active" data-topic-id="1176,814,">

										<a href="#" class="aw-user-name">韦森</a> <span
											class="text-color-999">发起了问题 &nbsp;&nbsp;最佳回复者:&nbsp;
											<a class="aw-user-name" href="" data-id="29">FiveSay<i
												class="icon-v" title="个人认证"></i>
										</a> <span>获得 <b>12</b> 次赞同
										</span>

										</span> <a class="aw-user-name hidden-xs" data-id="4444"
											href="http://wenda.golaravel.com/people/%E9%9F%A6%E6%A3%AE"
											rel="nofollow"><img src="" alt="" /></a>
											
										<div class="aw-question-content">
											<h4>
												<a href="/student-community/jsps/front/answer.jsp">laravel项目本地运行良好，上传apache服务器后访问首页显示空白无报错
													PHP版本5.6</a>
											</h4>
											<a href="/student-community/jsps/front/answer.jsp"
												class="pull-right text-color-999">回复</a>

											<p>

												<span class="text-color-999 related-topic hide"> •
													来自相关话题</span>
											</p>

										</div>
									</div>
									<!-- end tab 切换 -->
								</div>
								<div class="tab-pane" id="profile">
							<div class="mod-body">
								<div class="aw-common-list">
									<div class="aw-item active" data-topic-id="1176,814,">

										<a href="#" class="aw-user-name">ccccc</a> <span
											class="text-color-999">发起了问题 &nbsp;&nbsp;最佳回复者:&nbsp;
											<a class="aw-user-name" href="" data-id="29">FiveSay<i
												class="icon-v" title="个人认证"></i>
										</a> <span>获得 <b>12</b> 次赞同
										</span>

										</span> <a class="aw-user-name hidden-xs" data-id="4444"
											href="http://wenda.golaravel.com/people/%E9%9F%A6%E6%A3%AE"
											rel="nofollow"><img src="" alt="" /></a>
										<div class="aw-question-content">
											<h4>
												<a href="/student-community/jsps/front/answer.jsp">laravel项目本地运行良好，上传apache服务器后访问首页显示空白无报错
													PHP版本5.6</a>
											</h4>
											<a href="/student-community/jsps/front/answer.jsp"
												class="pull-right text-color-999">回复</a>

											<p>

												<span class="text-color-999 related-topic hide"> •
													来自相关话题</span>
											</p>

										</div>
									</div>
									<!-- end tab 切换 -->
								</div>
							</div>
						</div>
						<div  class="tab-pane" id="messages">
							<div class="mod-body">
								<div class="aw-common-list">
									<div class="aw-item active" data-topic-id="1176,814,">

										<a href="#" class="aw-user-name">ddddddd</a> <span
											class="text-color-999">发起了问题 &nbsp;&nbsp;最佳回复者:&nbsp;
											<a class="aw-user-name" href="" data-id="29">FiveSay<i
												class="icon-v" title="个人认证"></i>
										</a> <span>获得 <b>12</b> 次赞同
										</span>

										</span> <a class="aw-user-name hidden-xs" data-id="4444"
											href="http://wenda.golaravel.com/people/%E9%9F%A6%E6%A3%AE"
											rel="nofollow"><img src="" alt="" /></a>
										<div class="aw-question-content">
											<h4>
												<a href="/student-community/jsps/front/answer.jsp">laravel项目本地运行良好，上传apache服务器后访问首页显示空白无报错
													PHP版本5.6</a>
											</h4>
											<a href="/student-community/jsps/front/answer.jsp"
												class="pull-right text-color-999">回复</a>

											<p>

												<span class="text-color-999 related-topic hide"> •
													来自相关话题</span>
											</p>

										</div>
									</div>
									<!-- end tab 切换 -->
								</div>
							</div>
						</div>
							</div>
						</div>
						</div>
					</div>
				</div>
			</div>
		</div>

</body>
</html>
