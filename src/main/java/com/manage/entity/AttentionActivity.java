package com.manage.entity;

import java.io.Serializable;

/**
 * 
 * @author ChenYuhao
 * 关注活动
 * 
 */
public class AttentionActivity implements Serializable {
    /**
     * 指定序列化id
     */
    private static final long serialVersionUID = 8367810711871027705L;
    private Integer attentionActivityid;
    private Student stu;
    private Activity activity;

    public Integer getAttentionActivityid() {
        return attentionActivityid;
    }

    public void setAttentionActivityid(Integer attentionActivityid) {
        this.attentionActivityid = attentionActivityid;
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
