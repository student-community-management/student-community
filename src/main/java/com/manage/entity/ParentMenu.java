package com.manage.entity;

import java.io.Serializable;
import java.util.List;

public class ParentMenu implements Serializable {
    /**
     * 可序列化id
     */
    private static final long serialVersionUID = -8120670623739021202L;
    private Integer parentMenuid;
    private String parentMenuName;
    private List<Submenu> Submenus;

    public Integer getParentMenuid() {
        return parentMenuid;
    }

    public void setParentMenuid(Integer parentMenuid) {
        this.parentMenuid = parentMenuid;
    }

    public String getParentMenuName() {
        return parentMenuName;
    }

    public void setParentMenuName(String parentMenuName) {
        this.parentMenuName = parentMenuName;
    }

    public List<Submenu> getSubmenus() {
        return Submenus;
    }

    public void setSubmenus(List<Submenu> submenus) {
        Submenus = submenus;
    }

}
