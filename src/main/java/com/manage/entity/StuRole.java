package com.manage.entity;

import java.io.Serializable;

/**
 * 
 * @author ChenYuhao
 * 角色(职务)
 */
public class StuRole implements Serializable {
    /**
     * 序列化id
     */
    private static final long serialVersionUID = -1798901243945178909L;
    private Integer roleid;
    private String roleName;

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

}
