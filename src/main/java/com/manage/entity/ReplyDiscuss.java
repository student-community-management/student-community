package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.Set;

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
    private Set<ReplyDiscuss> replyDiscusses;
    private Date replyDate;
    private Set<AgainstReplyDiscuss> againstReplyDiscusses;
    private Set<PraiseReplyDiscuss> praiseReplyDiscusses;
    private Set<ReportReplyDiscuss> ReportReplyDiscusses;
    private Integer praiseCount; //赞的数量,在数据库中并没有,只是为了方便显示
    private Integer againstCount; //踩的数量,在数据库中并没有,只是为了方便显示
    private Integer checkPraise;
    private Integer checkAgainst;

    
    public Integer getCheckPraise() {
        return checkPraise;
    }

    public void setCheckPraise(Integer checkPraise) {
        this.checkPraise = checkPraise;
    }

    public Integer getCheckAgainst() {
        return checkAgainst;
    }

    public void setCheckAgainst(Integer checkAgainst) {
        this.checkAgainst = checkAgainst;
    }

    public Integer getPraiseCount() {
        return praiseCount;
    }

    public void setPraiseCount(Integer praiseCount) {
        this.praiseCount = praiseCount;
    }

    public Integer getAgainstCount() {
        return againstCount;
    }

    public void setAgainstCount(Integer againstCount) {
        this.againstCount = againstCount;
    }

    public Set<AgainstReplyDiscuss> getAgainstReplyDiscusses() {
        return againstReplyDiscusses;
    }

    public void setAgainstReplyDiscusses(
            Set<AgainstReplyDiscuss> againstReplyDiscusses) {
        this.againstReplyDiscusses = againstReplyDiscusses;
    }

    public Set<PraiseReplyDiscuss> getPraiseReplyDiscusses() {
        return praiseReplyDiscusses;
    }

    public void setPraiseReplyDiscusses(
            Set<PraiseReplyDiscuss> praiseReplyDiscusses) {
        this.praiseReplyDiscusses = praiseReplyDiscusses;
    }

    public Set<ReportReplyDiscuss> getReportReplyDiscusses() {
        return ReportReplyDiscusses;
    }

    public void setReportReplyDiscusses(
            Set<ReportReplyDiscuss> reportReplyDiscusses) {
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

    public Set<ReplyDiscuss> getReplyDiscusses() {
        return replyDiscusses;
    }

    public void setReplyDiscusses(Set<ReplyDiscuss> replyDiscusses) {
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
