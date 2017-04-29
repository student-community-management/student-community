package com.manage.service.authority;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.Community;
import com.manage.mapper.authority.CommunityMapper;
import com.manage.mapper.authority.CommunityRoleMapper;
import com.manage.mapper.authority.RoleMapper;
import com.manage.service.BaseService;
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
    public void deleteMany(List<Integer> ids) {
        communityMapper.deleteMany(ids);
    }

    @Override
    public void save(Community t) {
        //添加社团
        communityMapper.save(t);
        //获得社团都有什么角色
        List<Integer> ids = roleMapper.getCommunityRoles();
        //自动生成社团对应的角色
        communityRoleMapper.autoSaveCommRoles(communityMapper.getNewComunityid(), ids);
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

    @Override
    public void delete(Integer id) {
        // TODO Auto-generated method stub
        
    }

}
