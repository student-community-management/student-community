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
<link href="/student-community/css/mymayachao.css" rel="stylesheet">
<script src="/student-community/js/jquery.min.js"></script>
<script src="/student-community/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
	<%@ include file="nav.jsp"%>
	<div class="middle">
		<div class="QuestionHeader">
			<div class="QuestionHeader-content">
				<div class="QuestionHeader-main">
					<div class="QuestionHeader-topics">
						<div class="mod-head">
							<h2>标题栏</h2>
						</div>
					</div>
					<div class="mod-body">
						<div class="content markitup-box">我（某HR）曾经鼓励一个很聪明的姑娘（此人已经申请到了北美的PHD ）, 攒学费期间来做点人参的生意。姑娘却觉得，只有半年时间，自己什么都不懂，也没有既成的销售渠道，也不懂人参这个行业，所以不敢来卖，这是很典型的「学生思维」——要做够了习题，看够了书，才敢参加考试，可是商场上的练习题就是考试，考试就是练习题去跑去闯，才可能长见识。

注意:上面并非题主所说的话，双引号里面的内容表示「引用」，关于此例中「典型的学生思维」，也只是这句话中该HR的个人定义，并非题主所设的定义。 

当初看到这段话，虽不完全认同该HR的说法，可还是有些感慨，就此，我想问，还有哪些「典型的学生」呢？

当然，我们不讨论姑娘想法本身的对错，因为非要较真，什么都能够颠倒。上面的只是一个引例，引例，引例…… 

注:19日对表意不清部分有改动。

这个例子可能并不好，谁有更好的例子就请帮帮忙修改一下吧；对大家造成的困扰感到十分抱歉。</div>
					</div>

				</div>
				<div class="QuestionHeader-side">
					<div class="QuestionFollowStatus-counts">
					<div class="btn-group" role="group" aria-label="...">
						<button class="btn " type="button">
							关注者 114
						</button>
						<button class="btn btn-primary" type="button">
							踩一下
						</button>
					</div>
</div>
				</div>
			</div>
			<div class="QuestionHeader-footer">
				<div class="QuestionHeader-footer-inner">
					<div class="QuestionHeader-footer-inner-main">
						<div class="QuestionHeader-actions">
							<button class="btn" type="button">
								<span class="glyphicon glyphicon-send" aria-hidden="true"></span>&nbsp;&nbsp;分享
							</button>
							
							<button class="btn" type="button">
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>&nbsp;&nbsp;收藏
							</button>
							<button class="btn" type="button">
							<span class="glyphicon glyphicon-flag" aria-hidden="true"></span>&nbsp;&nbsp;举报
							</button>
						</div>
					</div>
					<div class="QuestionHeader-footer-inner-side">
						<div class="QuestionButtonGroup">
							<button class="btn" type="button">
								关注问题</button>
							<button type="button" class="btn"
								data-toggle="modal" data-target="#myModal">写回答</button>
						</div>

						<!-- Modal -->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">Modal title</h4>
									</div>
									<div class="modal-body">...</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save
											changes</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="base">
		<div class="baseone">
		<div class="baseone-one">
		<div class="Card" data-za-module="MessageItem" data-za-module-info="{"card":{"content":{"item_num":7622}}}">
			<a class="QuestionMainAction" data-za-detail-view-element_name="ViewAll" href="/student-community/jsps/front/answer.jsp">查看所有</a>
			
		</div>
		</div>
	</div>
	</div>
</div>
</body>
</html>
