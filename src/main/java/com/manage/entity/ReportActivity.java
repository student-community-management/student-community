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
    private Integer reportActivityid;
    private Student stu;//学生外键一对多
    private Activity activity;
    private Date reportDate;
    public Integer getReportActivityid() {
        return reportActivityid;
    }
    public void setReportActivityid(Integer reportActivityid) {
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
    public Date getReportDate() {
        return reportDate;
    }

    public void setReportDate(Date reportDate) {
        this.reportDate = reportDate;
    }

}
