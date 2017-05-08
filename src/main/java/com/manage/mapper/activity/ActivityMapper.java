package com.manage.mapper.activity;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.Activity;
import com.manage.entity.StuActivity;
import com.manage.mapper.BaseMapper;

public interface ActivityMapper extends BaseMapper<Activity> {
    // 分页式查询
    // 模糊查询like，关键字
    public Activity getActivityOne(Integer activityId);// 根据活动编号查询单个活动信息,为修改做准备

    public List<Activity> getActivity();// 查询所有活动不带分页

    public Integer addActivity(Activity activity);// 增加活动

    public Integer UpdateActivity(Activity activity);// 修改活动信息

    public Integer getActivityByperId(String perId);// 查询出某人最新发布的活动id

    public List<Activity> getAllStudentByActId(Integer ActId);// 通过活动编号查询成员

    public Integer addActivityPerson(StuActivity stuActivity);// 申请加入活动

    public Activity validateFlag(Integer ActId);// 查询是否已经参加这个活动

    void deleteMany(@Param("ids") List<Integer> ids);

}
