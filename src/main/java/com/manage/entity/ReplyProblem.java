package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.Set;

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
    private Set<ReplyProblem> replyProblems;
    private Date replyDate;
    private Set<AgainstReplyDiscuss> againstReplyProblems;
    private Set<PraiseReplyDiscuss> praiseReplyProblems;
    private Set<ReportReplyDiscuss> ReportReplyProblems;

    public Set<AgainstReplyDiscuss> getAgainstReplyProblems() {
        return againstReplyProblems;
    }

    public void setAgainstReplyProblems(
            Set<AgainstReplyDiscuss> againstReplyProblems) {
        this.againstReplyProblems = againstReplyProblems;
    }

    public Set<PraiseReplyDiscuss> getPraiseReplyProblems() {
        return praiseReplyProblems;
    }

    public void setPraiseReplyProblems(
            Set<PraiseReplyDiscuss> praiseReplyProblems) {
        this.praiseReplyProblems = praiseReplyProblems;
    }

    public Set<ReportReplyDiscuss> getReportReplyProblems() {
        return ReportReplyProblems;
    }

    public void setReportReplyProblems(
            Set<ReportReplyDiscuss> reportReplyProblems) {
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

    public Set<ReplyProblem> getReplyProblems() {
        return replyProblems;
    }

    public void setReplyProblems(Set<ReplyProblem> replyProblems) {
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
