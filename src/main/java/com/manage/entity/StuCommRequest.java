package com.manage.entity;

import java.io.Serializable;

public class StuCommRequest implements Serializable {

    /**
     *  可序列化id
     */
    private static final long serialVersionUID = 8604621729014393368L;
    private Integer stuid; // 学生的id
    private Integer commid; // 社团的id
    private Integer status; // 处理状态 0为未处理,1为已经处理

    public StuCommRequest() {
        // TODO Auto-generated constructor stub
    }

    public Integer getStuid() {
        return stuid;
    }

    public void setStuid(Integer stuid) {
        this.stuid = stuid;
    }

    public Integer getCommid() {
        return commid;
    }

    public void setCommid(Integer commid) {
        this.commid = commid;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}
