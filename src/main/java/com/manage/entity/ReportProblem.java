package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;

/**
 * 
 * @author ChenYuhao
 * 举报问题
 */
public class ReportProblem implements Serializable {
    /**
     * 序列化id
     */
    private static final long serialVersionUID = 2112528905777619055L;
    private int reportProblemid;
    private Student stu;
    private Problem problem;
    private String message;
    private Date reportDate;

    public int getReportProblemid() {
        return reportProblemid;
    }

    public void setReportProblemid(int reportProblemid) {
        this.reportProblemid = reportProblemid;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public Problem getProblem() {
        return problem;
    }

    public void setProblem(Problem problem) {
        this.problem = problem;
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
