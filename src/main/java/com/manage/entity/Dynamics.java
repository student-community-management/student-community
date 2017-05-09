package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.Set;

/**
 * 
 * @author ChenYuhao
 * Dynamics 动态
 */
public class Dynamics implements Serializable {

    /**
     * 序列化id
     */
    private static final long serialVersionUID = -7012014024232950309L;
    private Integer dynamicsid; // 动态id
    private Student stu; // 发布动态的学生
    private String dynamicsContent; // 动态的内容
    private Date dynamicsDate; // 发布日期
    private Integer dynamicsSearch;//0代表仅自己可见,1代表所有人可见
    private Integer status; // 是否删除
    private Set<ReplyDynamics> replyDynamics;
    public Integer getDynamicsSearch() {
        return dynamicsSearch;
    }

    public void setDynamicsSearch(Integer dynamicsSearch) {
        this.dynamicsSearch = dynamicsSearch;
    }

    public Set<ReplyDynamics> getReplyDynamics() {
        return replyDynamics;
    }

    public void setReplyDynamics(Set<ReplyDynamics> replyDynamics) {
        this.replyDynamics = replyDynamics;
    }

    public Integer getDynamicsid() {
        return dynamicsid;
    }

    public void setDynamicsid(Integer dynamicsid) {
        this.dynamicsid = dynamicsid;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public Date getDynamicsDate() {
        return dynamicsDate;
    }

    public void setDynamicsDate(Date dynamicsDate) {
        this.dynamicsDate = dynamicsDate;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getDynamicsContent() {
        return dynamicsContent;
    }

    public void setDynamicsContent(String dynamicsContent) {
        this.dynamicsContent = dynamicsContent;
    }

}
