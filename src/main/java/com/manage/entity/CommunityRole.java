package com.manage.entity;

import java.io.Serializable;
import java.util.Set;

public class CommunityRole implements Serializable{
    
    
    /**
     * 可序列化id
     */
    private static final long serialVersionUID = 6010600382760068660L;
    private Integer communityRoleid;
    private Set<Community> communities;
    private Set<Role> roles;
    
    public Integer getCommunityRoleid() {
        return communityRoleid;
    }
    public void setCommunityRoleid(Integer communityRoleid) {
        this.communityRoleid = communityRoleid;
    }
    public Set<Community> getCommunities() {
        return communities;
    }
    public void setCommunities(Set<Community> communities) {
        this.communities = communities;
    }
    public Set<Role> getRoles() {
        return roles;
    }
    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }
    
    
}
