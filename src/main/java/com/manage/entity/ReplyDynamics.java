package com.manage.entity;

import java.sql.Date;

public class ReplyDynamics {
    private int replyDynamicsid;
    private Student stu;
    private Date replyDate;

    public int getReplyDynamicsid() {
        return replyDynamicsid;
    }

    public void setReplyDynamicsid(int replyDynamicsid) {
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
