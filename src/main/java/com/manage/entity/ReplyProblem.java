package com.manage.entity;

import java.sql.Date;

public class ReplyProblem {

	private int replyProblemid;
	private Student stu;
	private Problem problem;
	private String content;
	private ReplyProblem replyProblem;
	private Date replyDate;

	public int getReplyProblemid() {
		return replyProblemid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public ReplyProblem getReplyProblem() {
		return replyProblem;
	}

	public void setReplyProblem(ReplyProblem replyProblem) {
		this.replyProblem = replyProblem;
	}

	public void setReplyProblemid(int replyProblemid) {
		this.replyProblemid = replyProblemid;
	}

	public Student getStu() {
		return stu;
	}

	public void setStu(Student stu) {
		this.stu = stu;
	}

	public Problem getProblem() {
		return problem;
	}

	public void setProblem(Problem problem) {
		this.problem = problem;
	}

	public Date getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}

}
