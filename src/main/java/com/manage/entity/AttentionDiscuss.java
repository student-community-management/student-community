package com.manage.entity;

import java.io.Serializable;

/**
 * 
 * @author ChenYuhao
 * 关注讨论
 * 
 */
public class AttentionDiscuss implements Serializable {

    /**
     * 指定序列化id
     */
    private static final long serialVersionUID = 2486029631801727918L;
    private Student stu;
    private Discuss discuss;

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
