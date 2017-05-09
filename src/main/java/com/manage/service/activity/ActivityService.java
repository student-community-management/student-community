package com.manage.service.activity;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import com.manage.entity.Activity;
import com.manage.entity.Community;
import com.manage.entity.StuActivity;
import com.manage.mapper.activity.ActivityMapper;
import com.manage.mapper.student.CommunityMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class ActivityService implements BaseService<Activity>, ActivityMapper {

    @Autowired
    private ActivityMapper activityMapper;
    @Autowired
    private CommunityMapper communityMapper;

    /**
     * 查询所有活动 需要返回给前台的,所有数据,总条数 所有活动不带分页
     */
    public List<Activity> getActivity() {
        List<Activity> list = activityMapper.getActivity();
        return list;
    }

    /**
     * 添加活动预插入
     * 
     * @return
     */
    public ModelAndView addActivityPre() {
        ModelAndView model = new ModelAndView();
        List<Community> community = communityMapper.queryAll(null, null);
        model.addObject("community", community);
        model.setViewName("front/addactivity");
        return model;
    }

    /**
     * 带分页所有活动
     */
    @Override
    public List<Activity> queryAll(PageParam pageParam, String keyWord) {
        return activityMapper.queryAll(pageParam, keyWord);
    }

    @Override
    public int getCount(String keyWord) {
        return activityMapper.getCount(keyWord);
    }

    /**
     * 根据活动编号查询单个活动信息,为修改做准备 分页式查询 模糊查询like，关键字
     * 
     * @param activityId
     * @return
     */
    @Override
    public Activity queryOne(Integer id) {
        return activityMapper.queryOne(id);
    }

    /**
     * 批量删除
     */
    @Override
    public void deleteMany(List<Integer> ids) {
        if (ids == null || ids.size() == 0) {
            throw new RuntimeException("传入对象不能为空");
        } else {
            activityMapper.deleteMany(ids);// 删除活动
        }

    }

    /**
     * 增加活动
     * 
     * @param activity
     * @return
     */
    @Override
    public void save(Activity t) {
        activityMapper.save(t);

    }

    /**
     * 修改活动信息
     * 
     * @param activity
     * @return
     */
    @Override
    public void update(Activity t) {
        activityMapper.update(t);

    }

    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        return null;
    }

    @Override
    public Integer getActivityByperId(String perId) {
        return activityMapper.getActivityByperId(perId);
    }

    @Override
    public List<Activity> getAllStudentByActId(Integer ActId) {
        return activityMapper.getAllStudentByActId(ActId);
    }

    /**
     * 申请加入活动
     */
    @Override
    public void addActivityPerson(StuActivity stuActivity) {
        activityMapper.addActivityPerson(stuActivity);
    }

    /**
     * 
     * 判断是否申请参加活动
     */
    @Override
    public Activity validateFlag(Integer ActId) {
        return activityMapper.validateFlag(ActId);
    }

    /**
     * 
     * 判断是否举报活动
     */
    @Override
    public void delete(Integer id) {
        // TODO Auto-generated method stub

    }

}
