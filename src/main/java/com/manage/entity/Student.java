package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.Set;

/**
 * 
 * @author ChenYuhao
 *
 *Student 学生
 *
 */
public class Student implements Serializable {

    /**
     * 序列化id
     */
    private static final long serialVersionUID = 4607420913323259994L;
    private int stuid; // 学生id
    private String stuPwd; // 学生密码
    private String stuName; // 学生姓名
    private byte stuSex; // 性别
    private Date stuBirthday; // 生日
    private String stuNativePlace; // 祖籍
    private Classes classes; // 班级
    private Set<Role> setRole;

    public Set<Role> getSetRole() {
        return setRole;
    }

    public void setSetRole(Set<Role> setRole) {
        this.setRole = setRole;
    }

    public int getStuid() {
        return stuid;
    }

    public void setStuid(int stuid) {
        this.stuid = stuid;
    }

    public String getStuPwd() {
        return stuPwd;
    }

    public void setStuPwd(String stuPwd) {
        this.stuPwd = stuPwd;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public byte getStuSex() {
        return stuSex;
    }

    public void setStuSex(byte stuSex) {
        this.stuSex = stuSex;
    }

    public Date getStuBirthday() {
        return stuBirthday;
    }

    public void setStuBirthday(Date stuBirthday) {
        this.stuBirthday = stuBirthday;
    }

    public String getStuNativePlace() {
        return stuNativePlace;
    }

    public void setStuNativePlace(String stuNativePlace) {
        this.stuNativePlace = stuNativePlace;
    }

    public Classes getClasses() {
        return classes;
    }

    public void setClasses(Classes classes) {
        this.classes = classes;
    }

}
