package com.manage.entity;

import java.io.Serializable;
import java.util.List;

public class MgrRole implements Serializable {
    /**
     * 可序列化id
     */
    private static final long serialVersionUID = -3468964306073047978L;
    private Integer mgrRoleid;
    private String mgrRoleName;
    private List<Submenu> submenus;
    private Integer level;

    public Integer getMgrRoleid() {
        return mgrRoleid;
    }

    public void setMgrRoleid(Integer mgrRoleid) {
        this.mgrRoleid = mgrRoleid;
    }

    public String getMgrRoleName() {
        return mgrRoleName;
    }

    public void setMgrRoleName(String mgrRoleName) {
        this.mgrRoleName = mgrRoleName;
    }

    public List<Submenu> getSubmenus() {
        return submenus;
    }

    public void setSubmenus(List<Submenu> submenus) {
        this.submenus = submenus;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

}
