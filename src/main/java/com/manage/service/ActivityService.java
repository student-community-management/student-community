package com.manage.service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import com.manage.entity.Activity;
import com.manage.entity.Community;
import com.manage.mapper.authority.CommunityMapper;
import com.manage.mapper.authority.StudentMapper;
import com.manage.mapper.item.ActivityMapper;
import com.manage.util.PageData;
import com.manage.util.PageParam;
@Service
public class ActivityService implements BaseService<Activity>,ActivityMapper{
    @Autowired
    private ActivityMapper activityMapper;
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
        List<Community> community = communityMapper.getAllCommunity();
        model.addObject("community", community);
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
    @Override
    public List<Activity> queryAll(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }
    @Override
    public Activity queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }
    //批量删除
    @Override
    public void delete(List<Integer> ids) {
        if(ids==null || ids.size() == 0){
            throw new RuntimeException("传入对象不能为空");
        }else{
            activityMapper.delete(ids);//删除活动
        }
        
    }
    @Override
    public void save(Activity t) {
        // TODO Auto-generated method stub
        
    }
    @Override
    public void update(Activity t) {
        // TODO Auto-generated method stub
        
    }
    @Override
    public int getCount(String keyWord) {
        // TODO Auto-generated method stub
        return 0;
    }
    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }
    @Override
    public List<Activity> getAllActivity(Map<String, Object> map) {
        // TODO Auto-generated method stub
        return null;
    }
    @Override
    public int getAllCount(Map<String, Object> map) {
        // TODO Auto-generated method stub
        return 0;
    }
    @Override
    public Integer addActivity(Activity activity) {
        // TODO Auto-generated method stub
        return null;
    }
    @Override
    public Integer getActivityByperId(String perId) {
        // TODO Auto-generated method stub
        return null;
    }
}
