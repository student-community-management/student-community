package com.manage.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.Community;
import com.manage.entity.CommunityRole;
import com.manage.entity.Role;
import com.manage.mapper.authority.CommunityMapper;
import com.manage.mapper.authority.CommunityRoleMapper;
import com.manage.mapper.authority.RoleMapper;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class CommunityService implements BaseService<Community>, CommunityMapper {

    @Autowired
    private CommunityMapper communityMapper;
    @Autowired
    private CommunityRoleMapper communityRoleMapper;

    @Autowired
    private RoleMapper roleMapper;

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
        communityMapper.delete(ids);
    }

    @Override
    public void save(Community t) {
        communityMapper.save(t);
        List<Role> roles = roleMapper.getCommunityRoles();
        List<Integer> ids = new ArrayList<Integer>();

        for (Role role : roles) {
            ids.add(role.getRoleid());
        }
        communityRoleMapper.autoSave(communityMapper.getNewComunityid(), ids);

    }

    @Override
    public void update(Community t) {
        communityMapper.update(t);
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
    public Integer getNewComunityid() {
        return communityMapper.getNewComunityid();
    }

}
