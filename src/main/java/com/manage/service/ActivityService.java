package com.manage.service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;
import com.manage.entity.Activity;
import com.manage.entity.ActivityType;
import com.manage.entity.Community;
import com.manage.mapper.activity.ActivityMapper;
import com.manage.mapper.activity.ActivityTypeMapper;
import com.manage.mapper.authority.CommunityMapper;
import com.manage.util.PageData;
import com.manage.util.PageParam;
@Service
@Transactional//事务
public class ActivityService {
    @Autowired
    private ActivityMapper activityMapper;
    @Autowired
    private ActivityTypeMapper activityTypeMapper;
    @Autowired
    private CommunityMapper communityMapper;
    //查询所有活动
    //需要返回给前台的,所有数据,总条数
    public PageData getAllActivity(Activity activity,PageParam page){
       Map<String, Object> map = new HashMap<String, Object>();
       map.put("startIndex", page.getStartIndex());
       map.put("rows", page.getRows());
       List<Activity> list =  activityMapper.getAllActivity(map);
       //活动总数(无条件筛选)
       int count = activityMapper.getAllCount(map);
       return new PageData(count,list);
    }
    //所有活动不带分页
    public List<Activity> getActivity(){
        List<Activity> list = activityMapper.getActivity();
        return list;
    }
    //根据活动id查询活动所有信息
    //根据id查询某个活动
    public Activity getActivityOne(Integer actId){
        return activityMapper.getActivityOne(actId);
    }
    //添加活动预插入
    public ModelAndView addActivityPre(){
        ModelAndView model = new ModelAndView();
        List<ActivityType> typelist = activityTypeMapper.getAllActivitytype();
        List<Community> community = communityMapper.getAllCommunity();
        model.addObject("community", community);
        model.addObject("typelist", typelist);
        model.setViewName("back/addactivity");
        return model;
    }
    //添加活动
    public Integer insertActivity(Activity activity){
        return  activityMapper.addActivity(activity);
    }
    //修改活动信息
    public Integer UpdateActivity(Activity activity){
        return  activityMapper.UpdateActivity(activity);
    }
    //取消活动
    public Integer deleteActivity(Integer actId){
        return activityMapper.deleteActivity(actId);
    }
}
