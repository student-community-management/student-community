package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;

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
    private Student stu;
    private Dynamics dynamics;
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

    public Dynamics getDynamics() {
        return dynamics;
    }

    public void setDynamics(Dynamics dynamics) {
        this.dynamics = dynamics;
    }

}