package com.manage.entity;

import java.sql.Date;

/**
 * 
 * @author ChenYuhao
 *
 *         Activity 活动
 */
public class Activity {
	private int activityid; // 活动id
	private Student stu; // 活动发起人 数据库添加
	private String activityTitle; // 活动标题
	private String activityLoc; // 活动地点
	private String activityContent; // 活动内容
	private Date activityDate; // 活动发表(发起)时间
	private Date closeingDate; // 活动报名截止时间
	private Date startDate; // 活动开始时间
	private Date endDate; // 活动结束时间
	private int status; // 是否被删除,这里只做一个标记

	public Student getStu() {
		return stu;
	}

	public void setStu(Student stu) {
		this.stu = stu;
	}

	public int getActivityid() {
		return activityid;
	}

	public void setActivityid(int activityid) {
		this.activityid = activityid;
	}

	public String getActivityTitle() {
		return activityTitle;
	}

	public void setActivityTitle(String activityTitle) {
		this.activityTitle = activityTitle;
	}

	public String getActivityLoc() {
		return activityLoc;
	}

	public void setActivityLoc(String activityLoc) {
		this.activityLoc = activityLoc;
	}

	public String getActivityContent() {
		return activityContent;
	}

	public void setActivityContent(String activityContent) {
		this.activityContent = activityContent;
	}

	public Date getActivityDate() {
		return activityDate;
	}

	public void setActivityDate(Date activityDate) {
		this.activityDate = activityDate;
	}

	public Date getCloseingDate() {
		return closeingDate;
	}

	public void setCloseingDate(Date closeingDate) {
		this.closeingDate = closeingDate;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

}
