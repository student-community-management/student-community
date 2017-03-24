package com.manage.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.manage.entity.Activity;
import com.manage.mapper.ActivityMapper;
import com.manage.util.PageParam;
@Service
@Transactional//事务
public class ActivityService {
    @Autowired
    private ActivityMapper activitymapper;
    //查询所有活动
    public List<Activity> getActivity(Integer lineSize,Integer currentPage,Integer startIndex){
        if(lineSize == null){
            lineSize = 10;
        }
        //查询
        Integer startRow = (currentPage - 1)*lineSize;//从数据库查询数据
        PageParam p = new PageParam(startRow,lineSize);
        p.setStartIndex(startIndex);
        List<Activity> list = activitymapper.getAllActivity(p);
        return list;
    }
    //活动总数(无条件筛选)
    public Integer getAllCount(){
        return activitymapper.getAllCount();
    }
}
