package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;

/**
 * 
 * @author ChenYuhao
 * 举报动态
 */
public class ReportDynamics implements Serializable {
    /**
     * 序列化id
     */
    private static final long serialVersionUID = -7271625060585214870L;
    private Integer reportDyanmicsid;
    private Student stu;
    private Dynamics dynamics;
    private String message;
    private Date reportDate;

    public Integer getReportDyanmicsid() {
        return reportDyanmicsid;
    }

    public void setReportDyanmicsid(Integer reportDyanmicsid) {
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
