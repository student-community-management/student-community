package com.manage.service.student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.StuCommunity;
import com.manage.mapper.student.StuCommunityMapper;
import com.manage.util.PageParam;

@Service
public class StuCommunityService implements StuCommunityMapper{
    
    @Autowired
    private StuCommunityMapper stuCommunityMapper;
    
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

}
