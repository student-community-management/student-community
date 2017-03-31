package com.manage.entity;

/**
 * 
 * @author ChenYuhao Discuss 讨论
 */
public class Discuss {

	private Integer discussid; // 讨论id
	private Student stu; // 讨论发起人 数据库添加
	private String discussTitle; // 讨论标题 修改数据库
	private String discussContent; // 讨论详细说明
	private String discussDate;// 发布时间 修改数据库
	private Integer status; // 是否被删除或者问题是否已经关闭回答

	public Student getStu() {
		return stu;
	}

	public void setStu(Student stu) {
		this.stu = stu;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getDiscussid() {
		return discussid;
	}

	public void setDiscussid(Integer discussid) {
		this.discussid = discussid;
	}

	public String getDiscussContent() {
		return discussContent;
	}

	public void setDiscussContent(String discussContent) {
		this.discussContent = discussContent;
	}

	public String getDiscussDate() {
		return discussDate;
	}

	public void setDiscussDate(String discussDate) {
		this.discussDate = discussDate;
	}

	public String getDiscussTitle() {
		return discussTitle;
	}

	public void setDiscussTitle(String discussTitle) {
		this.discussTitle = discussTitle;
	}

}
