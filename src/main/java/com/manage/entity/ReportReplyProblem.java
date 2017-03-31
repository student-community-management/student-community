package com.manage.entity;

import java.io.Serializable;

/**
 * 
 * @author ChenYuhao
 * 举报问题的回复
 */
public class ReportReplyProblem implements Serializable {

    /**
     * 可序列化id
     */
    private static final long serialVersionUID = -8470160099955424991L;
    private Integer reportReplyProblemid;
    private ReplyProblem replyProblem;
    private Student stu;

    public Integer getReportReplyProblemid() {
        return reportReplyProblemid;
    }

    public void setReportReplyProblemid(Integer reportReplyProblemid) {
        this.reportReplyProblemid = reportReplyProblemid;
    }

    public ReplyProblem getReplyProblem() {
        return replyProblem;
    }

    public void setReplyProblem(ReplyProblem replyProblem) {
        this.replyProblem = replyProblem;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

}
