package com.manage.mapper.activity;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.manage.entity.Activity;
import com.manage.entity.StuActivity;
import com.manage.mapper.BaseMapper;

public interface ActivityMapper extends BaseMapper<Activity> {
   
    /**
     * 查询所有活动不带分页
     * 
     * @return
     */
    public List<Activity> getActivity();


    /**
     * 查询出某人最新发布的活动id
     * 
     * @param perId
     * @return
     */
    public Integer getActivityByperId(String perId);

    /**
     * 通过查询成员
     * 
     * @param 活动编号
     * @return
     */
    public List<Activity> getAllStudentByActId(Integer ActId);

    /**
     * 申请加入活动
     * 
     * @param 学生活动
     * @return
     */
    public void addActivityPerson(StuActivity stuActivity);

    /**
     * 查询是否已经参加这个活动
     * 
     * @param 活动编号
     * @return
     */
    public Activity validateFlag(Integer ActId);

    /**
     * 
     * 批量取消活动
     * 
     * @param
     */
    void deleteMany(@Param("ids") List<Integer> ids);

}
