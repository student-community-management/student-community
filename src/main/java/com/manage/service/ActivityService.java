package com.manage.service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;
import com.manage.entity.Activity;
import com.manage.mapper.ActivityMapper;
import com.manage.util.PageData;
import com.manage.util.PageParam;
@Service
@Transactional//事务
public class ActivityService {
    @Autowired
    private ActivityMapper activitymapper;
    //查询所有活动
    //需要返回给前台的,所有数据,总条数
    public PageData getActivity(Activity activity,PageParam page){
       Map<String, Object> map = new HashMap<String, Object>();
       if(activity!=null){
           map.put("communityid",activity.getCommunityid());
           map.put("activityTitle", activity.getActivityTitle());
       }
       map.put("startIndex", page.getStartIndex());
       map.put("rows", page.getRows());
       List<Activity> list =  activitymapper.getAllActivity(map);
       //活动总数(无条件筛选)
       int count = activitymapper.getAllCount(map);
       return new PageData(count,list);
    }
    //根据某人最新发布的活动id查询
    //预插入
   /* public ModelAndView addActivityPre(){
        ModelAndView model = new ModelAndView();
        List<ActivityType> list = activitymapper.addActivity(activity);
    }*/
    //添加活动
    public void insertActivity(Activity activity){
    }
    //修改活动信息
    public Integer UpdateActivity(Activity activity){
         return  activitymapper.UpdateActivity(activity);
    }
    public Integer deleteActivity(Activity activity){
        return activitymapper.deleteActivity(activity);
    }
}
