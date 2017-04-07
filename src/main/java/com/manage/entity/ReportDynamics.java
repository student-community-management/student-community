package com.manage.entity;

import java.sql.Date;

public class ReportDynamics {
    private int reportDyanmicsid;
    private Student stu;
    private Dynamics dynamics;
    private String message;
    private Date reportDate;

    public int getReportDyanmicsid() {
        return reportDyanmicsid;
    }

    public void setReportDyanmicsid(int reportDyanmicsid) {
        this.reportDyanmicsid = reportDyanmicsid;
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
