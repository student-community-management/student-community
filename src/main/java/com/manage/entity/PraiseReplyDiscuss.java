package com.manage.entity;

import java.io.Serializable;

/**
 * 
 * @author ChenYuhao
 * 赞讨论的回复
 */
public class PraiseReplyDiscuss implements Serializable {
    /**
     * 序列化id
     */
    private static final long serialVersionUID = -4362368629861596362L;
    private int praiseReplyDiscussid;
    private Student stu;
    private Discuss discuss;

    public int getPraiseReplyDiscussid() {
        return praiseReplyDiscussid;
    }

    public void setPraiseReplyDiscussid(int praiseReplyDiscussid) {
        this.praiseReplyDiscussid = praiseReplyDiscussid;
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

}
