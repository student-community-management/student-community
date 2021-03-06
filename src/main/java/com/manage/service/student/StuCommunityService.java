package com.manage.service.student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.manage.entity.StuCommunity;
import com.manage.mapper.student.StuCommRequestMapper;
import com.manage.mapper.student.StuCommunityMapper;
import com.manage.util.PageParam;

@Service
@Transactional
public class StuCommunityService implements StuCommunityMapper{
    
    @Autowired
    private StuCommunityMapper stuCommunityMapper;
    
    @Autowired
    private StuCommRequestMapper stuCommRequestMapper;
    
    @Override
    public List<StuCommunity> queryAll(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public StuCommunity queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void delete(Integer id) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void save(StuCommunity t) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void update(StuCommunity t) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public int getCount(String keyWord) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public void deleteByCommids(List<Integer> communities) {
        stuCommunityMapper.deleteByCommids(communities);
    }

    @Override
    public Integer exist(StuCommunity stuCommunity) {
        return stuCommunityMapper.exist(stuCommunity);
    }

    @Override
    public void delCommStus(List<Integer> ids, Integer commid) {
        stuCommunityMapper.delCommStus(ids, commid);
    }

    @Override
    public void saveCommStus(List<Integer> ids, Integer commid) {
        
        // 执行添加方法
        stuCommunityMapper.saveCommStus(ids, commid);
        
        // 将处理状态改成已修改 
        stuCommRequestMapper.setStatus(ids, commid);
    }

}
