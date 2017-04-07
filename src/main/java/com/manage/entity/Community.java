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
    private Integer communityid;//社团编号
    private String communityName;//社团名称
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
    
}
