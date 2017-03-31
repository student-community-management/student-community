package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

/**
 * 
 * @author ChenYuhao
 * 回复问题
 */
public class ReplyProblem implements Serializable {

    /**
     * 序列化id
     */
    private static final long serialVersionUID = 4032185445898797512L;
    private Integer replyProblemid;
    private Student stu;
    private Problem problem;
    private String content;
    private List<ReplyProblem> replyProblems;
    private Date replyDate;
    private List<AgainstReplyDiscuss> againstReplyProblems;
    private List<PraiseReplyDiscuss> praiseReplyProblems;
    private List<ReportReplyDiscuss> ReportReplyProblems;

    public List<AgainstReplyDiscuss> getAgainstReplyProblems() {
        return againstReplyProblems;
    }

    public void setAgainstReplyProblems(
            List<AgainstReplyDiscuss> againstReplyProblems) {
        this.againstReplyProblems = againstReplyProblems;
    }

    public List<PraiseReplyDiscuss> getPraiseReplyProblems() {
        return praiseReplyProblems;
    }

    public void setPraiseReplyProblems(
            List<PraiseReplyDiscuss> praiseReplyProblems) {
        this.praiseReplyProblems = praiseReplyProblems;
    }

    public List<ReportReplyDiscuss> getReportReplyProblems() {
        return ReportReplyProblems;
    }

    public void setReportReplyProblems(
            List<ReportReplyDiscuss> reportReplyProblems) {
        ReportReplyProblems = reportReplyProblems;
    }

    public Integer getReplyProblemid() {
        return replyProblemid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public List<ReplyProblem> getReplyProblems() {
        return replyProblems;
    }

    public void setReplyProblems(List<ReplyProblem> replyProblems) {
        this.replyProblems = replyProblems;
    }

    public void setReplyProblemid(Integer replyProblemid) {
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
