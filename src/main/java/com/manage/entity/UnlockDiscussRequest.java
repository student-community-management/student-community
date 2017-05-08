package com.manage.entity;

import java.io.Serializable;

public class UnlockDiscussRequest implements Serializable {

    /**
     * 可序列化id
     */
    private static final long serialVersionUID = -7798032227626342828L;
    private Integer unlockDiscussid;
    private Discuss discuss;
    private String message;
    private int status;

    public Integer getUnlockDiscussid() {
        return unlockDiscussid;
    }

    public void setUnlockDiscussid(Integer unlockDiscussid) {
        this.unlockDiscussid = unlockDiscussid;
    }

    public Discuss getDiscuss() {
        return discuss;
    }

    public void setDiscuss(Discuss discuss) {
        this.discuss = discuss;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

}
