package com.manage.entity;

import java.io.Serializable;

/**
 * 
 * @author ChenYuhao
 * 举报动态的回复
 */
public class ReportReplyDynamics implements Serializable {

    /**
     * 可序列化id
     */
    private static final long serialVersionUID = 4933875659751746869L;
    private int reportReplyDynamicsid;
    private ReplyDynamics replyDynamics;
    private Student stu;

    public int getReportReplyDynamicsid() {
        return reportReplyDynamicsid;
    }

    public void setReportReplyDynamicsid(int reportReplyDynamicsid) {
        this.reportReplyDynamicsid = reportReplyDynamicsid;
    }

    public ReplyDynamics getReplyDynamics() {
        return replyDynamics;
    }

    public void setReplyDynamics(ReplyDynamics replyDynamics) {
        this.replyDynamics = replyDynamics;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

}
