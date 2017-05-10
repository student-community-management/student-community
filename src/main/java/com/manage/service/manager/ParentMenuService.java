package com.manage.service.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.ParentMenu;
import com.manage.mapper.manager.ParentMenuMapper;
import com.manage.mapper.manager.SubmenuMapper;
import com.manage.util.PageParam;

@Service
public class ParentMenuService implements ParentMenuMapper{
    
    @Autowired
    private ParentMenuMapper parentMenuMapper;
    
    @Autowired
    private SubmenuMapper submenuMapper;
    
    @Override
    public List<ParentMenu> queryAll(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public ParentMenu queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void delete(Integer id) {
        //删除父菜单
        parentMenuMapper.delete(id);
        
        //删除父菜单后再删除对应的子菜单
        submenuMapper.delByParentMenuid(id);
        
    }

    @Override
    public void save(ParentMenu t) {
        parentMenuMapper.save(t);
        
    }

    @Override
    public void update(ParentMenu t) {
        parentMenuMapper.update(t);
        
    }

    @Override
    public int getCount(String keyWord) {
        // TODO Auto-generated method stub
        return 0;
    }

}
