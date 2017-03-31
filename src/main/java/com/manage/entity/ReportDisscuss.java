package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;

/**
 * 
 * @author ChenYuhao
 * 举报讨论
 */
public class ReportDisscuss implements Serializable {
    /**
     * 序列化id
     */
    private static final long serialVersionUID = 1192653922355780028L;
    private Integer reportDiscussid;
    private Student stu;
    private Discuss discuss;
    private String message;
    private Date reportDate;

    public Integer getReportDiscussid() {
        return reportDiscussid;
    }

    public void setReportDiscussid(Integer reportDiscussid) {
        this.reportDiscussid = reportDiscussid;
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
