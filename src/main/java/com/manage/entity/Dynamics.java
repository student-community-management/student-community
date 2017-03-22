package com.manage.entity;

import java.sql.Date;

/**
 * 
 * @author ChenYuhao
 * Dynamics 动态
 */
public class Dynamics {

    private int dynamicsid; // 动态id
    private Student stu; // 发布动态的学生
    private String dynamicsContent; // 动态的内容
    private Date dynamicsDate;  //发布日期
    private int status; //是否删除

    public int getDynamicsid() {
        return dynamicsid;
    }

    public void setDynamicsid(int dynamicsid) {
        this.dynamicsid = dynamicsid;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public Date getDynamicsDate() {
        return dynamicsDate;
    }

    public void setDynamicsDate(Date dynamicsDate) {
        this.dynamicsDate = dynamicsDate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getDynamicsContent() {
        return dynamicsContent;
    }

    public void setDynamicsContent(String dynamicsContent) {
        this.dynamicsContent = dynamicsContent;
    }

}
