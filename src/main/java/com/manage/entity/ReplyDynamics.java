package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.Set;

/**
 * 
 * @author ChenYuhao
 *  回复动态
 */
public class ReplyDynamics implements Serializable {
    /**
     * 序列化id
     */
    private static final long serialVersionUID = -1666208194787216434L;
    private Integer replyDynamicsid;
    private Student stu;
    private Dynamics dynamics;
    private String content;
    private Set<ReplyDynamics> replyDynamicses;
    private Date replyDate;
    private Set<PraiseReplyDynamics> praiseReplyDynamicses;
    private Set<ReportReplyDynamics> ReportReplyDynamicses;

    public Set<PraiseReplyDynamics> getPraiseReplyDynamicses() {
        return praiseReplyDynamicses;
    }

    public void setPraiseReplyDynamicses(
            Set<PraiseReplyDynamics> praiseReplyDynamicses) {
        this.praiseReplyDynamicses = praiseReplyDynamicses;
    }

    public Set<ReportReplyDynamics> getReportReplyDynamicses() {
        return ReportReplyDynamicses;
    }

    public void setReportReplyDynamicses(
            Set<ReportReplyDynamics> reportReplyDynamicses) {
        ReportReplyDynamicses = reportReplyDynamicses;
    }

    public Integer getReplyDynamicsid() {
        return replyDynamicsid;
    }

    public Dynamics getDynamics() {
        return dynamics;
    }

    public void setDynamics(Dynamics dynamics) {
        this.dynamics = dynamics;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Set<ReplyDynamics> getReplyDynamicses() {
        return replyDynamicses;
    }

    public void setReplyDynamicses(Set<ReplyDynamics> replyDynamicses) {
        this.replyDynamicses = replyDynamicses;
    }

    public void setReplyDynamicsid(Integer replyDynamicsid) {
        this.replyDynamicsid = replyDynamicsid;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public Date getReplyDate() {
        return replyDate;
    }

    public void setReplyDate(Date replyDate) {
        this.replyDate = replyDate;
    }

}
