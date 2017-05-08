package com.manage.entity;

import java.io.Serializable;

public class Submenu implements Serializable {
    /**
     * 可序列化id
     */
    private static final long serialVersionUID = 3527983354344864869L;
    private Integer id;
    private String submenuName;
    private String url;
    private Integer _parentId;  //数据库并没有这一列为了方便查询
    private ParentMenu parentMenu;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public Integer get_parentId() {
        return _parentId;
    }

    public void set_parentId(Integer _parentId) {
        this._parentId = _parentId;
    }

}
