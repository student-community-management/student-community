package com.manage.entity;

import java.io.Serializable;
import java.util.Set;

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
    private Integer activityTypeid;
    private String activityTypeName;
    private Set<Activity> activities;

    public Set<Activity> getActivities() {
        return activities;
    }

    public void setActivities(Set<Activity> activities) {
        this.activities = activities;
    }

    public Integer getActivityTypeid() {
        return activityTypeid;
    }

    public void setActivityTypeid(Integer activityTypeid) {
        this.activityTypeid = activityTypeid;
    }

    public String getActivityTypeName() {
        return activityTypeName;
    }

    public void setActivityTypeName(String activityTypeName) {
        this.activityTypeName = activityTypeName;
    }

}
