package com.manage.entity;

import java.io.Serializable;

/**
 * @author ChenYuhao
 * 踩问题的回复
 *
 */
public class AgainstReplyProblem implements Serializable {
    /**
     * 指定序列化id
     */
    private static final long serialVersionUID = -6308319618388263052L;
    private Integer againstProblemid;
    private Student stu;
    private ReplyProblem replyProblem;

    public Integer getAgainstProblemid() {
        return againstProblemid;
    }

    public void setAgainstProblemid(Integer againstProblemid) {
        this.againstProblemid = againstProblemid;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public ReplyProblem getReplyProblem() {
        return replyProblem;
    }

    public void setReplyProblem(ReplyProblem replyProblem) {
        this.replyProblem = replyProblem;
    }

}
