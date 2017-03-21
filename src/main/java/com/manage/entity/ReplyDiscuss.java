package com.manage.entity;

import java.sql.Date;

public class ReplyDiscuss {
    private int replyDiscussid;
    private Student stu;
    private Discuss discuss;
    private Date replyDate;

    public int getReplyDiscussid() {
        return replyDiscussid;
    }

    public void setReplyDiscussid(int replyDiscussid) {
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
