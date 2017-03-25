package com.manage.entity;

import java.io.Serializable;
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
    private int communityid;
    private String communityName;
    public int getCommunityid() {
        return communityid;
    }
    public void setCommunityid(int communityid) {
        this.communityid = communityid;
    }
    public String getCommunityName() {
        return communityName;
    }
    public void setCommunityName(String communityName) {
        this.communityName = communityName;
    }
    
}
