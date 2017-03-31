package com.manage.entity;

import java.io.Serializable;
/**
 * 
 * @author ChenYuhao
 *  踩讨论的回复
 */
public class AgainstReplyDiscuss implements Serializable {
    /**
     * 指定序列化id
     */
    private static final long serialVersionUID = 5327047271797095730L;
    private Integer againstDiscussid;
    private Student stu;
    private ReplyDiscuss replyDiscuss;

    public Integer getAgainstDiscussid() {
        return againstDiscussid;
    }

    public void setAgainstDiscussid(Integer againstDiscussid) {
        this.againstDiscussid = againstDiscussid;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public ReplyDiscuss getReplyDiscuss() {
        return replyDiscuss;
    }

    public void setReplyDiscuss(ReplyDiscuss replyDiscuss) {
        this.replyDiscuss = replyDiscuss;
    }

}
