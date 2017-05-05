package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;

/**
 * 
 * @author ChenYuhao
 * 举报讨论
 */
public class ReportDiscuss implements Serializable {
    /**
     * 序列化id
     */
    private static final long serialVersionUID = 1192653922355780028L;
    private Integer reportDiscussid;
    private Student stu;
    private Discuss discuss;
    private String message;
    private Date reportDate;
    private int status; //处理状态 0.未处理 1.已经处理

    public Integer getReportDiscussid() {
        return reportDiscussid;
    }

    public void setReportDiscussid(Integer reportDiscussid) {
        this.reportDiscussid = reportDiscussid;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
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

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getReportDate() {
        return reportDate;
    }

    public void setReportDate(Date reportDate) {
        this.reportDate = reportDate;
    }

}
