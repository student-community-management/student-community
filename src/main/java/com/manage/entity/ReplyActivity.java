package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.Set;

/**
 * 
 * @author ChenYuhao
 * 评论活动
 */
public class ReplyActivity implements Serializable {

    /**
     * 序列化id
     */
    private static final long serialVersionUID = 6675904212394929252L;
    private Integer replyActivityid;
    private Student stu;
    private Activity activity;
    private String content;
    private Set<ReplyActivity> replyActivities;
    private Date replyDate;
    private Set<AgainstReplyActivity> againstReplyActivities;
    private Set<PraiseReplyActivity> praiseReplyActivities;
    private Set<ReportReplyActivity> ReportReplyActivities;

    public Set<AgainstReplyActivity> getAgainstReplyActivities() {
        return againstReplyActivities;
    }

    public void setAgainstReplyActivities(
            Set<AgainstReplyActivity> againstReplyActivities) {
        this.againstReplyActivities = againstReplyActivities;
    }

    public Set<PraiseReplyActivity> getPraiseReplyActivities() {
        return praiseReplyActivities;
    }

    public void setPraiseReplyActivities(
            Set<PraiseReplyActivity> praiseReplyActivities) {
        this.praiseReplyActivities = praiseReplyActivities;
    }

    public Set<ReportReplyActivity> getReportReplyActivities() {
        return ReportReplyActivities;
    }

    public void setReportReplyActivities(
            Set<ReportReplyActivity> reportReplyActivities) {
        ReportReplyActivities = reportReplyActivities;
    }

    public Set<ReplyActivity> getReplyActivities() {
        return replyActivities;
    }

    public void setReplyActivities(Set<ReplyActivity> replyActivities) {
        this.replyActivities = replyActivities;
    }

    public Integer getReplyActivityid() {
        return replyActivityid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setReplyActivityid(Integer replyActivityid) {
        this.replyActivityid = replyActivityid;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public Activity getActivity() {
        return activity;
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    public Date getReplyDate() {
        return replyDate;
    }

    public void setReplyDate(Date replyDate) {
        this.replyDate = replyDate;
    }
}
