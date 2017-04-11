package com.manage.entity;

import java.io.Serializable;

/**
 * 
 * @author ChenYuhao
 * 权限
 *
 */
public class Authority implements Serializable {
    /**
     * 指定序列化id
     */
    private static final long serialVersionUID = -8601196675735812209L;
    private Integer authid;
    private String authLevel;// 权限的等级

    public Integer getAuthid() {
        return authid;
    }

    public void setAuthid(Integer authid) {
        this.authid = authid;
    }

    public String getAuthLevel() {
        return authLevel;
    }

    public void setAuthLevel(String authLevel) {
        this.authLevel = authLevel;
    }

}
