package com.manage.entity;

import java.io.Serializable;
import java.sql.Date;

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
    private Student stu;
    private Activity activity;
    private Date praiseDate;

    public Date getPraiseDate() {
        return praiseDate;
    }

    public void setPraiseDate(Date praiseDate) {
        this.praiseDate = praiseDate;
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
