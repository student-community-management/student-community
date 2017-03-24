package com.manage.entity;

import java.sql.Date;

public class ReplyDynamics {
	private int replyDynamicsid;
	private Student stu;
	private Dynamics dynamics;
	private String content;
	private ReplyDynamics replyDynamics;
	private Date replyDate;

	public int getReplyDynamicsid() {
		return replyDynamicsid;
	}

	public Dynamics getDynamics() {
		return dynamics;
	}

	public void setDynamics(Dynamics dynamics) {
		this.dynamics = dynamics;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public ReplyDynamics getReplyDynamics() {
		return replyDynamics;
	}

	public void setReplyDynamics(ReplyDynamics replyDynamics) {
		this.replyDynamics = replyDynamics;
	}

	public void setReplyDynamicsid(int replyDynamicsid) {
		this.replyDynamicsid = replyDynamicsid;
	}

	public Student getStu() {
		return stu;
	}

	public void setStu(Student stu) {
		this.stu = stu;
	}

	public Date getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}

}
