package com.manage.entity;

import java.io.Serializable;

public class Submenu implements Serializable {
    /**
     * 可序列化id
     */
    private static final long serialVersionUID = 3527983354344864869L;
    private Integer submenuid;
    private String submenuName;
    private String url;
    private ParentMenu parentMenu;

    public Integer getSubmenuid() {
        return submenuid;
    }

    public void setSubmenuid(Integer submenuid) {
        this.submenuid = submenuid;
    }

    public String getSubmenuName() {
        return submenuName;
    }

    public void setSubmenuName(String submenuName) {
        this.submenuName = submenuName;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public ParentMenu getParentMenu() {
        return parentMenu;
    }

    public void setParentMenu(ParentMenu parentMenu) {
        this.parentMenu = parentMenu;
    }

}
