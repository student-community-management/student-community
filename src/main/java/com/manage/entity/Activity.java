package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

/**
 * 
 * @author ChenYuhao
 *
 * Activity 活动
 */
public class Activity implements Serializable {
    /**
     * 执行序列化id
     */
    private static final long serialVersionUID = 2761423697905688288L;
    private Integer activityid; // 活动id
    private Student stu; // 活动发起人 数据库添加
    private String activityTitle; // 活动标题
    private String activityLoc; // 活动地点
    private String activityContent; // 活动内容
    private Date activityDate; // 活动发表(发起)时间
    private Date closeingDate; // 活动报名截止时间
    private Date startDate; // 活动开始时间
    private Date endDate; // 活动结束时间
    private Integer status; // 是否被删除,这里只做一个标记
    private Community community;
    private List<ReplyActivity> replyActivities;
    private List<ReportActivity> reportActivities;
    private List<Student> students;

    public List<Student> getStudents() {
        return students;
    }

    public void setStudents(List<Student> students) {
        this.students = students;
    }

    public Community getCommunity() {
        return community;
    }

    public void setCommunity(Community community) {
        this.community = community;
    }

    public List<ReportActivity> getReportActivities() {
        return reportActivities;
    }

    public void setReportActivities(List<ReportActivity> reportActivities) {
        this.reportActivities = reportActivities;
    }

    public List<ReplyActivity> getReplyActivities() {
        return replyActivities;
    }

    public void setReplyActivities(List<ReplyActivity> replyActivities) {
        this.replyActivities = replyActivities;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public Integer getActivityid() {
        return activityid;
    }

    public void setActivityid(Integer activityid) {
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

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}
