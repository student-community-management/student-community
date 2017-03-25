package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;

/**
 * 
 * @author ChenYuhao
 * Problem 问题
 */
public class Problem implements Serializable {

    /**
     * 序列化id
     */
    private static final long serialVersionUID = 8109171527970213161L;
    private int problemid; // 问题id
    private String problemTitle; // 问题标题
    private int problemType; // 1感情问题 2学习问题
    private String problemContent;// 内容
    private Date problemDate; // 问题发布时间
    private int status; // 是否被删除

    public Date getProblemDate() {
        return problemDate;
    }

    public void setProblemDate(Date problemDate) {
        this.problemDate = problemDate;
    }

    public int getProblemid() {
        return problemid;
    }

    public void setProblemid(int problemid) {
        this.problemid = problemid;
    }

    public String getProblemTitle() {
        return problemTitle;
    }

    public void setProblemTitle(String problemTitle) {
        this.problemTitle = problemTitle;
    }

    public int getProblemType() {
        return problemType;
    }

    public void setProblemType(int problemType) {
        this.problemType = problemType;
    }

    public String getProblemContent() {
        return problemContent;
    }

    public void setProblemContent(String problemContent) {
        this.problemContent = problemContent;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

}
