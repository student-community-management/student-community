package com.manage.entity;

import java.io.Serializable;
import java.util.Set;

/**
 * 
 * @author ChenYuhao
 * 后台管理员
 */
public class Admin implements Serializable {
    /**
     * 可序列化id
     */
    private static final long serialVersionUID = -1483171751375243798L;
    private int adminid;
    private String adminUsername;
    private String adminPwd;
    private Set<Role> setRole;

    public int getAdminid() {
        return adminid;
    }

    public void setAdminid(int adminid) {
        this.adminid = adminid;
    }

    public String getAdminUsername() {
        return adminUsername;
    }

    public void setAdminUsername(String adminUsername) {
        this.adminUsername = adminUsername;
    }

    public String getAdminPwd() {
        return adminPwd;
    }

    public void setAdminPwd(String adminPwd) {
        this.adminPwd = adminPwd;
    }

    public Set<Role> getSetRole() {
        return setRole;
    }

    public void setSetRole(Set<Role> setRole) {
        this.setRole = setRole;
    }
    
}
