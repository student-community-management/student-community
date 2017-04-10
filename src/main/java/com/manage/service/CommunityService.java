package com.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.Community;
import com.manage.mapper.authority.CommunityMapper;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class CommunityService implements BaseService<Community>, CommunityMapper {

    @Autowired
    private CommunityMapper communityMapper;

    @Override
    public List<Community> queryAll(PageParam pageParam, String keyWord) {
        return communityMapper.queryAll(pageParam, keyWord);
    }

    @Override
    public Community queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void delete(List<Integer> ids) {
        // TODO Auto-generated method stub

    }

    @Override
    public void save(Community t) {
        communityMapper.save(t);
        this.saveCommunityRole(this.getNewComunityid(), this.getRoleids());
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

    @Override
    public List<Integer> getRoleids() {
        return communityMapper.getRoleids();
    }

    @Override
    public Integer getNewComunityid() {
        return communityMapper.getNewComunityid();
    }

    @Override
    public void saveCommunityRole(Integer newComunityid, List<Integer> Roleids) {
        //communityMapper.saveCommunityRole(newComunityid, Roleids);
    }

    @Override
    public void setRole(Integer stu_id, Integer communityRoleid) {
        // TODO Auto-generated method stub
        
    }
    
    
    

}
