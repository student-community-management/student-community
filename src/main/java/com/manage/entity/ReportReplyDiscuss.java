package com.manage.entity;

import java.io.Serializable;

/**
 * 
 * @author ChenYuhao
 * 举报讨论的回复
 */
public class ReportReplyDiscuss implements Serializable {
    /**
     * 可序列化id
     */
    private static final long serialVersionUID = -6846189590809113475L;
    private int reportReplyDiscussid;
    private ReplyDiscuss replyDiscuss;
    private Student stu;

    public int getReportReplyDiscussid() {
        return reportReplyDiscussid;
    }

    public void setReportReplyDiscussid(int reportReplyDiscussid) {
        this.reportReplyDiscussid = reportReplyDiscussid;
    }

    public ReplyDiscuss getReplyDiscuss() {
        return replyDiscuss;
    }

    public void setReplyDiscuss(ReplyDiscuss replyDiscuss) {
        this.replyDiscuss = replyDiscuss;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

}
