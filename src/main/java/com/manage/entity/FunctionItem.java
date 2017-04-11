package com.manage.entity;

import java.io.Serializable;
import java.util.Set;

/**
 * 
 * @author ChenYuhao
 * 功能
 * 权限所对应的功能
 */
public class FunctionItem implements Serializable {
    /**
     * 序列化id
     */
    private static final long serialVersionUID = -8072585252375229411L;
    private Integer functionItemid;
    private String functionItemName;
    private Set<Authority> setAuthority;

    public Set<Authority> getSetAuthority() {
        return setAuthority;
    }

    public void setSetAuthority(Set<Authority> setAuthority) {
        this.setAuthority = setAuthority;
    }

    public Integer getFunctionItemid() {
        return functionItemid;
    }

    public void setFunctionItemid(Integer functionItemid) {
        this.functionItemid = functionItemid;
    }

    public String getFunctionItemName() {
        return functionItemName;
    }

    public void setFunctionItemName(String functionItemName) {
        this.functionItemName = functionItemName;
    }

}
