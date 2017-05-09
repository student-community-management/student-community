package com.manage.entity;

import java.io.Serializable;
import java.util.List;

public class Manager implements Serializable {

    /**
     * 可序列化id
     */
    private static final long serialVersionUID = -7178538481939199622L;
    private Integer managerid;
    private String managerPwd;
    private String managerName;
    private MgrRole mgrRole;

    public Integer getManagerid() {
        return managerid;
    }

    public void setManagerid(Integer managerid) {
        this.managerid = managerid;
    }

    public String getManagerPwd() {
        return managerPwd;
    }

    public void setManagerPwd(String managerPwd) {
        this.managerPwd = managerPwd;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }

    public MgrRole getMgrRole() {
        return mgrRole;
    }

    public void setMgrRole(MgrRole mgrRole) {
        this.mgrRole = mgrRole;
    }

}
