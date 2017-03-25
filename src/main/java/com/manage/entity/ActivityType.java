package com.manage.entity;

import java.io.Serializable;

/**
 * 
 * @author ChenYuhao
 * ActivityType 活动类型
 * 
 */
public class ActivityType implements Serializable {
    /**
     * 指定序列化id
     */
    private static final long serialVersionUID = -5345625803428393006L;
    private int activityTypeid;
    private String activityTypeName;

    public int getActivityTypeid() {
        return activityTypeid;
    }

    public void setActivityTypeid(int activityTypeid) {
        this.activityTypeid = activityTypeid;
    }

    public String getActivityTypeName() {
        return activityTypeName;
    }

    public void setActivityTypeName(String activityTypeName) {
        this.activityTypeName = activityTypeName;
    }

}
