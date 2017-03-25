package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;

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
    private int replyDiscussid;
    private Student stu;
    private Discuss discuss;
    private String content;
    private ReplyDiscuss replyDiscuss;
    private Date replyDate;

    public int getReplyDiscussid() {
        return replyDiscussid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public ReplyDiscuss getReplyDiscuss() {
        return replyDiscuss;
    }

    public void setReplyDiscuss(ReplyDiscuss replyDiscuss) {
        this.replyDiscuss = replyDiscuss;
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
