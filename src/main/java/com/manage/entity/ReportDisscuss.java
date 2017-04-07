package com.manage.entity;

import java.sql.Date;

public class ReportDisscuss {
    private int reportDiscussid;
    private Student stu;
    private Discuss discuss;
    private String message;
    private Date reportDate;

    public int getReportDiscussid() {
        return reportDiscussid;
    }

    public void setReportDiscussid(int reportDiscussid) {
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
