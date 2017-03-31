package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;

/**
 * 
 * @author ChenYuhao
 *
 * Classes 班级
 *
 */
public class Classes implements Serializable {
    /**
     * 序列化id
     */
    private static final long serialVersionUID = -1376146395418687156L;
    private Integer classesid; // 班级id
    private Integer grade; // 年级 查询时使用 case语句判断年级
    private String classes; // 班级
    private Date year; // 第几届的学生

    public Integer getClassesid() {
        return classesid;
    }

    public void setClassesid(Integer classesid) {
        this.classesid = classesid;
    }

    public String getClasses() {
        return classes;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public void setClasses(String classes) {
        this.classes = classes;
    }

    public Date getYear() {
        return year;
    }

    public void setYear(Date year) {
        this.year = year;
    }

}
