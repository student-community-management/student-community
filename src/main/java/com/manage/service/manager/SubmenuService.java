package com.manage.service.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.Submenu;
import com.manage.mapper.manager.SubmenuMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class SubmenuService implements SubmenuMapper,BaseService<Submenu>{
    
    @Autowired
    private SubmenuMapper submenuMapper;

    @Override
    public List<Submenu> queryAll(PageParam pageParam, String keyWord) {
        return submenuMapper.queryAll(pageParam, keyWord);
    }

    @Override
    public Submenu queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void delete(Integer id) {
        submenuMapper.delete(id);
    }

    @Override
    public void save(Submenu t) {
        submenuMapper.save(t);
    }

    @Override
    public void update(Submenu t) {
        submenuMapper.update(t);
    }

    @Override
    public int getCount(String keyWord) {
        return submenuMapper.getCount(keyWord);
    }

    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        return new PageData(this.getCount(keyWord), this.queryAll(pageParam, keyWord));
    }

    @Override
    public List<Integer> getSubmenuByRoleid(Integer id) {
        return submenuMapper.getSubmenuByRoleid(id);
    }

    @Override
    public void delByParentMenuid(Integer id) {
        submenuMapper.delByParentMenuid(id);
    }

}
