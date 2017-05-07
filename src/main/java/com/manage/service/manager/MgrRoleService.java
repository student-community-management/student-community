package com.manage.service.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.MgrRole;
import com.manage.mapper.manager.MgrRoleMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class MgrRoleService implements MgrRoleMapper, BaseService<MgrRole> {

    @Autowired
    private MgrRoleMapper mgrRoleMapper;

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
        // TODO Auto-generated method stub

    }

    @Override
    public void save(MgrRole t) {
        // TODO Auto-generated method stub

    }

    @Override
    public void update(MgrRole t) {
        // TODO Auto-generated method stub

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
