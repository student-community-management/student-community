package com.manage.mapper.activity;

import com.manage.entity.ReportActivity;
public interface ReportActivityMapper {
    /**
     * 判断是否举报这个活动
     * @param ActId
     * @return
     */
    public ReportActivity selectreportActivity(Integer ActId);
    
    /**
     * //举报这个活动
     * @param reportActivity
     */
    public void reportActivity(ReportActivity reportActivity);
}
