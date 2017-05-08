package com.manage.mapper.reportActivity;

import com.manage.entity.ReportActivity;
public interface ReportActivityMapper {
    public ReportActivity selectreportActivity(Integer ActId);//判断是否举报这个活动
    public void reportActivity(ReportActivity reportActivity);//举报这个活动
}
