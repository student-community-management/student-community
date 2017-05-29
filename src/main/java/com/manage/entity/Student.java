package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.Set;

/**
 * 
 * @author ChenYuhao
 *
 * Student 学生
 *
 */
public class Student implements Serializable {

    /**
     * 序列化id
     */
    private static final long serialVersionUID = 4607420913323259994L;
    private Integer stuid; // 学生id
    private String stuPwd; // 学生密码
    private String stuName; // 学生姓名
    private Integer stuSex; // 性别
    private Date stuBirthday; // 生日
    private Classes classes; // 班级
    private String img; // 头像
    private String introduce; // 个性签名
    private Set<Community> communitys; // 参加的社团
    private Set<StuCommunityRole> stuCommunityRoles;// 担任的职务
    private String roleName; // 数据库中没有,为了方便的mapper映射

    public Student() {
    }

    public Student(Integer stuid) {
        super();
        this.stuid = stuid;
    }

    public Set<Community> getCommunitys() {
        return communitys;
    }

    public void setCommunitys(Set<Community> communitys) {
        this.communitys = communitys;
    }

    public Integer getStuid() {
        return stuid;
    }

    public void setStuid(Integer stuid) {
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

    public Integer getStuSex() {
        return stuSex;
    }

    public void setStuSex(Integer stuSex) {
        this.stuSex = stuSex;
    }

    public Date getStuBirthday() {
        return stuBirthday;
    }

    public void setStuBirthday(Date stuBirthday) {
        this.stuBirthday = stuBirthday;
    }

    public Classes getClasses() {
        return classes;
    }

    public void setClasses(Classes classes) {
        this.classes = classes;
    }

    public Set<StuCommunityRole> getStuCommunityRoles() {
        return stuCommunityRoles;
    }

    public void setStuCommunityRoles(Set<StuCommunityRole> stuCommunityRoles) {
        this.stuCommunityRoles = stuCommunityRoles;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

}
