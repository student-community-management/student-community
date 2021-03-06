package com.manage.entity;

import java.io.Serializable;
import java.util.Set;

/**
 * 
 * @author ChenYuhao
 * 社团
 */
public class Community implements Serializable {
    /**
     * 可序列化id
     */
    private static final long serialVersionUID = -2087183388719817727L;
    private Integer communityid;
    private String communityName;
    private Integer stuNum; // 数据库中并没有这一列,这是为了保证Mybatis中字段的完整
    private Set<Student> stus;
    private String img;
    private Integer status; // 这列在数据库中并不存在,是学生申请添加社团时的处理状态

    public Set<Student> getStus() {
        return stus;
    }

    public Community() {
        // TODO Auto-generated constructor stub
    }

    public Community(Integer communityid) {
        super();
        this.communityid = communityid;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public void setStus(Set<Student> stus) {
        this.stus = stus;
    }

    public Integer getCommunityid() {
        return communityid;
    }

    public void setCommunityid(Integer communityid) {
        this.communityid = communityid;
    }

    public String getCommunityName() {
        return communityName;
    }

    public void setCommunityName(String communityName) {
        this.communityName = communityName;
    }

    public Integer getStuNum() {
        return stuNum;
    }

    public void setStuNum(Integer stuNum) {
        this.stuNum = stuNum;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

}
