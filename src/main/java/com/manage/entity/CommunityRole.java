package com.manage.entity;

import java.io.Serializable;

public class CommunityRole implements Serializable{
    
    
    /**
     * 可序列化id
     */
    private static final long serialVersionUID = 6010600382760068660L;
    private Integer communityRoleid;
    private Community community;
    private StuRole stuRole;
    
    public Integer getCommunityRoleid() {
        return communityRoleid;
    }
    public void setCommunityRoleid(Integer communityRoleid) {
        this.communityRoleid = communityRoleid;
    }

    public Community getCommunity() {
        return community;
    }

    public void setCommunity(Community community) {
        this.community = community;
    }

    public StuRole getStuRole() {
        return stuRole;
    }

    public void setStuRole(StuRole stuRole) {
        this.stuRole = stuRole;
    }
    
    
    
}
