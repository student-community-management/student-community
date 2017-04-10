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
    private Integer stuNum; //数据库中并没有这一列,这是为了保证Mybatis中字段的完整
    private Set<Student> stus;

    public Set<Student> getStus() {
        return stus;
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

    

}
