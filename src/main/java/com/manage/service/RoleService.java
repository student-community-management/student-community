package com.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.manage.entity.Role;
import com.manage.mapper.authority.RoleMapper;
import com.manage.util.PageData;
import com.manage.util.PageParam;

public class RoleService implements BaseService<Role>,RoleMapper {
    
    @Autowired
    private RoleMapper roleMapper;
    
    @Override
    public List<Role> queryAll(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Role queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void delete(List<Integer> ids) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void save(Role t) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void update(Role t) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public int getCount(String keyWord) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public List<Role> getCommunityRoles() {
        return roleMapper.getCommunityRoles();
    }

    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

}
