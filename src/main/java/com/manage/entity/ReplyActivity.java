package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;

/**
 * 
 * @author ChenYuhao
 * 评论活动
 */
public class ReplyActivity implements Serializable {

    /**
     * 序列化id
     */
    private static final long serialVersionUID = 6675904212394929252L;
    private int replyActivityid;
    private Student stu;
    private Activity activity;
    private String content;
    private ReplyActivity replyActivity;
    private Date replyDate;

    public int getReplyActivityid() {
        return replyActivityid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public ReplyActivity getReplyActivity() {
        return replyActivity;
    }

    public void setReplyActivity(ReplyActivity replyActivity) {
        this.replyActivity = replyActivity;
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
