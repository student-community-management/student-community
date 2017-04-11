package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;

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
    private Student stu;
    private Discuss discuss;
    private Date praiseDate;

    public Date getPraiseDate() {
        return praiseDate;
    }

    public void setPraiseDate(Date praiseDate) {
        this.praiseDate = praiseDate;
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
