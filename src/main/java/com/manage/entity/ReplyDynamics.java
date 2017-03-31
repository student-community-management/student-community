package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

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
    private List<ReplyDynamics> replyDynamicses;
    private Date replyDate;
    private List<PraiseReplyDynamics> praiseReplyDynamicses;
    private List<ReportReplyDynamics> ReportReplyDynamicses;

    public List<PraiseReplyDynamics> getPraiseReplyDynamicses() {
        return praiseReplyDynamicses;
    }

    public void setPraiseReplyDynamicses(
            List<PraiseReplyDynamics> praiseReplyDynamicses) {
        this.praiseReplyDynamicses = praiseReplyDynamicses;
    }

    public List<ReportReplyDynamics> getReportReplyDynamicses() {
        return ReportReplyDynamicses;
    }

    public void setReportReplyDynamicses(
            List<ReportReplyDynamics> reportReplyDynamicses) {
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

    public List<ReplyDynamics> getReplyDynamicses() {
        return replyDynamicses;
    }

    public void setReplyDynamicses(List<ReplyDynamics> replyDynamicses) {
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
