package com.manage.entity;

import java.io.Serializable;

/**
 * 
 * @author ChenYuhao
 * 赞活动的回复
 */
public class PraiseReplyActivity implements Serializable{

    /**
     * 序列化id
     */
    private static final long serialVersionUID = -4984296101314682960L;
    private int praiseReplyActivityid;
    private Student stu;
    private Activity activity;

    public int getPraiseReplyActivityid() {
        return praiseReplyActivityid;
    }

    public void setPraiseReplyActivityid(int praiseReplyActivityid) {
        this.praiseReplyActivityid = praiseReplyActivityid;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public Activity getActivity() {
        return activity;
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }

}
