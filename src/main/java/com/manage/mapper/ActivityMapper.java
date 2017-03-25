package com.manage.mapper;
import java.util.List;
import com.manage.entity.Activity;
public interface ActivityMapper {
    public List<Activity> getAllActivity();//查询所有活动
    public Integer getAllcount();//活动总数
    public void addActivity(Activity activity);//增加活动
    public Integer UpdateActivity(Activity activity);//修改活动信息
}
