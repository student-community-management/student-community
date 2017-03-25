package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;

/**
 * 
 * @author ChenYuhao
 * 举报活动
 */
public class ReportActivity implements Serializable {
    /**
     * 序列化id
     */
    private static final long serialVersionUID = -1037115830900123888L;
    private int reportActivityid;
    private Student stu;
    private Activity activity;
    private String message;
    private Date reportDate;

    public int getReportActivityid() {
        return reportActivityid;
    }

    public void setReportActivityid(int reportActivityid) {
        this.reportActivityid = reportActivityid;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public Activity getActivity() {
        return activity;
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
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
