package com.manage.entity;

import java.io.Serializable;

/**
 * 
 * @author ChenYuhao
 * 赞问题的回复
 */
public class PraiseReplyProblem implements Serializable {

    /**
     * 序列化id
     */
    private static final long serialVersionUID = -6706705415278067677L;
    private Integer praiseReplyDynamicsid;
    private Student stu;
    private Dynamics dynamics;

    public Integer getPraiseReplyDynamicsid() {
        return praiseReplyDynamicsid;
    }

    public void setPraiseReplyDynamicsid(Integer praiseReplyDynamicsid) {
        this.praiseReplyDynamicsid = praiseReplyDynamicsid;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public Dynamics getDynamics() {
        return dynamics;
    }

    public void setDynamics(Dynamics dynamics) {
        this.dynamics = dynamics;
    }

}