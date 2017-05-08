package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;

/**
 * 后台锁定讨论
 * 并向前台发出锁定原因
 * @author ChenYuhao
 *
 */
public class LockDiscuss implements Serializable {

    /**
     * 可序列化id
     */
    private static final long serialVersionUID = -640049086815405096L;
    private Integer lockDiscussid;
    private String message; // 锁定的原因
    private Discuss discuss;
    private Date datetime;
    private int status;

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Integer getLockDiscussid() {
        return lockDiscussid;
    }

    public void setLockDiscussid(Integer lockDiscussid) {
        this.lockDiscussid = lockDiscussid;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Discuss getDiscuss() {
        return discuss;
    }

    public void setDiscuss(Discuss discuss) {
        this.discuss = discuss;
    }

    public Date getDatetime() {
        return datetime;
    }

    public void setDatetime(Date datetime) {
        this.datetime = datetime;
    }

}
