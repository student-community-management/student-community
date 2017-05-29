package com.manage.service.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.manage.entity.MgrRole;
import com.manage.mapper.manager.ManagerMapper;
import com.manage.mapper.manager.MgrRoleMapper;
import com.manage.mapper.manager.MgrRoleSubmenuMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
@Transactional
public class MgrRoleService implements MgrRoleMapper, BaseService<MgrRole> {

    @Autowired 
    private MgrRoleMapper mgrRoleMapper;
    
    @Autowired 
    private MgrRoleSubmenuMapper  mgrRoleSubmenuMapper;
    
    @Autowired
    private ManagerMapper managerMapper;
    
    @Override
    public List<MgrRole> queryAll(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return mgrRoleMapper.queryAll(pageParam, keyWord);
    }

    @Override
    public MgrRole queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void delete(Integer id) {
        //删除角色
        mgrRoleMapper.delete(id);
        //删除角色对应的菜单
        mgrRoleSubmenuMapper.delete(id);
        //删除管理人员和角色的对应关系
        managerMapper.setRole(id);
    }

    @Override
    public void save(MgrRole t) {
        mgrRoleMapper.save(t);

    }

    @Override
    public void update(MgrRole t) {
        mgrRoleMapper.update(t);
    }

    @Override
    public int getCount(String keyWord) {
        return mgrRoleMapper.getCount(keyWord);
    }

    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        return new PageData(this.getCount(keyWord),this.queryAll(pageParam, keyWord));
    }

    @Override
    public List<MgrRole> queryForCommbo() {
        return mgrRoleMapper.queryForCommbo();
    }

}
