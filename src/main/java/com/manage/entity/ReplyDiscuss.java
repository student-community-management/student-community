package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

/**
 * 
 * @author ChenYuhao
 *  回复讨论
 */
public class ReplyDiscuss implements Serializable {
    /**
     * 序列化id
     */
    private static final long serialVersionUID = 4531970232876454653L;
    private Integer replyDiscussid;
    private Student stu;
    private Discuss discuss;
    private String content;
    private List<ReplyDiscuss> replyDiscusses;
    private Date replyDate;
    private List<AgainstReplyDiscuss> againstReplyDiscusses;
    private List<PraiseReplyDiscuss> praiseReplyDiscusses;
    private List<ReportReplyDiscuss> ReportReplyDiscusses;

    public List<AgainstReplyDiscuss> getAgainstReplyDiscusses() {
        return againstReplyDiscusses;
    }

    public void setAgainstReplyDiscusses(
            List<AgainstReplyDiscuss> againstReplyDiscusses) {
        this.againstReplyDiscusses = againstReplyDiscusses;
    }

    public List<PraiseReplyDiscuss> getPraiseReplyDiscusses() {
        return praiseReplyDiscusses;
    }

    public void setPraiseReplyDiscusses(
            List<PraiseReplyDiscuss> praiseReplyDiscusses) {
        this.praiseReplyDiscusses = praiseReplyDiscusses;
    }

    public List<ReportReplyDiscuss> getReportReplyDiscusses() {
        return ReportReplyDiscusses;
    }

    public void setReportReplyDiscusses(
            List<ReportReplyDiscuss> reportReplyDiscusses) {
        ReportReplyDiscusses = reportReplyDiscusses;
    }

    public Integer getReplyDiscussid() {
        return replyDiscussid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public List<ReplyDiscuss> getReplyDiscusses() {
        return replyDiscusses;
    }

    public void setReplyDiscusses(List<ReplyDiscuss> replyDiscusses) {
        this.replyDiscusses = replyDiscusses;
    }

    public void setReplyDiscussid(Integer replyDiscussid) {
        this.replyDiscussid = replyDiscussid;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public Discuss getDiscuss() {
        return discuss;
    }

    public void setDiscuss(Discuss discuss) {
        this.discuss = discuss;
    }

    public Date getReplyDate() {
        return replyDate;
    }

    public void setReplyDate(Date replyDate) {
        this.replyDate = replyDate;
    }

}
