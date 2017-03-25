package com.manage.entity;

import java.io.Serializable;

/**
 * 
 * @author ChenYuhao
 * 举报活动的回复
 */
public class ReportPeplyActivity implements Serializable {

    /**
     * 可序列化id 
     */
    private static final long serialVersionUID = 1588065195696478330L;
    private int reportReplyActivityid;
    private ReplyActivity replyActivity;
    private Student stu;

    public int getReportReplyActivityid() {
        return reportReplyActivityid;
    }

    public void setReportReplyActivityid(int reportReplyActivityid) {
        this.reportReplyActivityid = reportReplyActivityid;
    }

    public ReplyActivity getReplyActivity() {
        return replyActivity;
    }

    public void setReplyActivity(ReplyActivity replyActivity) {
        this.replyActivity = replyActivity;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

}
