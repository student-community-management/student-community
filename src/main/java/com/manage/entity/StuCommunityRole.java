package com.manage.entity;

import java.io.Serializable;
import java.util.Set;

public class StuCommunityRole implements Serializable {

    /**
     * 可序列化id
     */
    private static final long serialVersionUID = 4326958966186509897L;
    private Set<Student> stus;
    private Set<CommunityRole> communityRoles;

    public Set<Student> getStus() {
        return stus;
    }

    public void setStus(Set<Student> stus) {
        this.stus = stus;
    }

    public Set<CommunityRole> getCommunityRoles() {
        return communityRoles;
    }

    public void setCommunityRoles(Set<CommunityRole> communityRoles) {
        this.communityRoles = communityRoles;
    }

}
