package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.Set;

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
    private Integer problemid; // 问题id
    private String problemTitle; // 问题标题
    private Integer problemType; // 1感情问题 2学习问题
    private String problemContent;// 内容
    private Date problemDate; // 问题发布时间
    private Integer status; // 是否被删除
    private Set<ReplyProblem> replyProblems;

    public Set<ReplyProblem> getReplyProblems() {
        return replyProblems;
    }

    public void setReplyProblems(Set<ReplyProblem> replyProblems) {
        this.replyProblems = replyProblems;
    }

    public Date getProblemDate() {
        return problemDate;
    }

    public void setProblemDate(Date problemDate) {
        this.problemDate = problemDate;
    }

    public Integer getProblemid() {
        return problemid;
    }

    public void setProblemid(Integer problemid) {
        this.problemid = problemid;
    }

    public String getProblemTitle() {
        return problemTitle;
    }

    public void setProblemTitle(String problemTitle) {
        this.problemTitle = problemTitle;
    }

    public Integer getProblemType() {
        return problemType;
    }

    public void setProblemType(Integer problemType) {
        this.problemType = problemType;
    }

    public String getProblemContent() {
        return problemContent;
    }

    public void setProblemContent(String problemContent) {
        this.problemContent = problemContent;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}
