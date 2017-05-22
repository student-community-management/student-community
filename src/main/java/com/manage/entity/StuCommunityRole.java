package com.manage.entity;

import java.io.Serializable;

public class StuCommunityRole implements Serializable {

    /**
     * 可序列化id
     */
    private static final long serialVersionUID = 4326958966186509897L;
    private Integer stuid;
    private Integer communityRoleid;
    
    public StuCommunityRole(Integer stuid) {
        super();
        this.stuid = stuid;
    }

    public StuCommunityRole() {
        // TODO Auto-generated constructor stub
    }

    public Integer getStuid() {
        return stuid;
    }

    public void setStuid(Integer stuid) {
        this.stuid = stuid;
    }

    public Integer getCommunityRoleid() {
        return communityRoleid;
    }

    public void setCommunityRoleid(Integer communityRoleid) {
        this.communityRoleid = communityRoleid;
    }

}
