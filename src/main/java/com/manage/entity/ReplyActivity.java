package com.manage.entity;

import java.sql.Date;

public class ReplyActivity {

    private int replyActivityid;
    private Student stu;
    private Activity activity;
    private Date replyDate;

    public int getReplyActivityid() {
        return replyActivityid;
    }

    public void setReplyActivityid(int replyActivityid) {
        this.replyActivityid = replyActivityid;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public Activity getActivity() {
        return activity;
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    public Date getReplyDate() {
        return replyDate;
    }

    public void setReplyDate(Date replyDate) {
        this.replyDate = replyDate;
    }

}
