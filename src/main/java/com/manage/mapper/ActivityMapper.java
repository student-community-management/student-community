package com.manage.mapper;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.Activity;
public interface ActivityMapper {
    //分页式查询
    //模糊查询like，关键字
    public List<Activity> getAllActivity(Map<String,Object> map);//查询所有活动
    public Activity getActivityOne(Integer activityId);//根据活动编号查询单个活动信息,为修改做准备
    public List<Activity> getActivity();//查询所有活动不带分页 
    public int getAllCount(Map<String,Object> map);//活动总数
    public void addActivity(Activity activity);//增加活动
    public Integer UpdateActivity(Activity activity);//修改活动信息
    public Integer deleteActivity(Activity activity);//取消此活动
    public Integer getActivityByperId(String perId);//查询出某人最新发布的活动id
}
