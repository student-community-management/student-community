package com.manage.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.Community;
import com.manage.mapper.CommunityMapper;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class CommunityService implements BaseService<Community>, CommunityMapper {

    @SuppressWarnings("unused")
    @Autowired
    private CommunityMapper communityMapper;

    @Override
    public List<Community> queryAll(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Community queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void delete(Integer id) {
        // TODO Auto-generated method stub

    }

    @Override
    public void save(Community t) {
        // TODO Auto-generated method stub

    }

    @Override
    public void update(Community t) {
        // TODO Auto-generated method stub

    }

    @Override
    public int getCount(String keyWord) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        return new PageData(this.getCount(keyWord), this.queryAll(pageParam, null));
    }

}
