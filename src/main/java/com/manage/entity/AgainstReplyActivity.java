package com.manage.entity;

import java.io.Serializable;
/**
 * 
 * @author ChenYuhao
 * 踩活动的回复
 */

public class AgainstReplyActivity implements Serializable {
    /**
     * 指定序列化id
     */
    private static final long serialVersionUID = -2233797753995947868L;
    private int againstActivityid;
    private Student stu;
    private ReplyActivity replyActivity;

    public int getAgainstActivityid() {
        return againstActivityid;
    }

    public void setAgainstActivityid(int againstActivityid) {
        this.againstActivityid = againstActivityid;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public ReplyActivity getReplyActivity() {
        return replyActivity;
    }

    public void setReplyActivity(ReplyActivity replyActivity) {
        this.replyActivity = replyActivity;
    }

}
