package com.manage.entity;

import java.io.Serializable;

/**
 * 学生和社团的对应关系
 * @author ChenYuhao
 *
 */
public class StuCommunity implements Serializable {

    /**
     * 可序列化id
     */
    private static final long serialVersionUID = -6505715648988682527L;
    private Student student;
    private Community community;
    
    public StuCommunity() {
        // TODO Auto-generated constructor stub
    }
    
    public StuCommunity(Student student, Community community) {
        super();
        this.student = student;
        this.community = community;
    }




    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Community getCommunity() {
        return community;
    }

    public void setCommunity(Community community) {
        this.community = community;
    }

}
