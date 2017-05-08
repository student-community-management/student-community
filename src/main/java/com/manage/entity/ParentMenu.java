package com.manage.entity;

import java.io.Serializable;
import java.util.List;

public class ParentMenu implements Serializable {
    /**
     * 可序列化id
     */
    private static final long serialVersionUID = -8120670623739021202L;
    private Integer id;
    private String parentMenuName;
    private String url;
    private Integer _parentId; // 数据库并没有这一列为了方便查询
    private List<Submenu> children;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getParentMenuName() {
        return parentMenuName;
    }

    public void setParentMenuName(String parentMenuName) {
        this.parentMenuName = parentMenuName;
    }

    public List<Submenu> getChildren() {
        return children;
    }

    public void setChildren(List<Submenu> children) {
        this.children = children;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer get_parentId() {
        return _parentId;
    }

    public void set_parentId(Integer _parentId) {
        this._parentId = _parentId;
    }

}
