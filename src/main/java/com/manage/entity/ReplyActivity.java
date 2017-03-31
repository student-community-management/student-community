package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

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
    private List<ReplyActivity> replyActivities;
    private Date replyDate;
    private List<AgainstReplyActivity> againstReplyActivities;
    private List<PraiseReplyActivity> praiseReplyActivities;
    private List<ReportReplyActivity> ReportReplyActivities;

    public List<AgainstReplyActivity> getAgainstReplyActivities() {
        return againstReplyActivities;
    }

    public void setAgainstReplyActivities(
            List<AgainstReplyActivity> againstReplyActivities) {
        this.againstReplyActivities = againstReplyActivities;
    }

    public List<PraiseReplyActivity> getPraiseReplyActivities() {
        return praiseReplyActivities;
    }

    public void setPraiseReplyActivities(
            List<PraiseReplyActivity> praiseReplyActivities) {
        this.praiseReplyActivities = praiseReplyActivities;
    }

    public List<ReportReplyActivity> getReportReplyActivities() {
        return ReportReplyActivities;
    }

    public void setReportReplyActivities(
            List<ReportReplyActivity> reportReplyActivities) {
        ReportReplyActivities = reportReplyActivities;
    }

    public List<ReplyActivity> getReplyActivities() {
        return replyActivities;
    }

    public void setReplyActivities(List<ReplyActivity> replyActivities) {
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
