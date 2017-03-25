package com.manage.entity;

import java.io.Serializable;
import java.util.Set;

/**
 * 
 * @author ChenYuhao
 * 角色(职务)
 */
public class Role implements Serializable {
    /**
     * 序列化id
     */
    private static final long serialVersionUID = -1798901243945178909L;
    private int roleid;
    private String roleName;
    private Set<Student> setStu;
    private Set<Authority> setAuthority;

    public Set<Authority> getSetAuthority() {
        return setAuthority;
    }

    public void setSetAuthority(Set<Authority> setAuthority) {
        this.setAuthority = setAuthority;
    }

    public Set<Student> getSetStu() {
        return setStu;
    }

    public void setSetStu(Set<Student> setStu) {
        this.setStu = setStu;
    }

    public int getRoleid() {
        return roleid;
    }

    public void setRoleid(int roleid) {
        this.roleid = roleid;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

}
