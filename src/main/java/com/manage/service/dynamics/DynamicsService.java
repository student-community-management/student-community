package com.manage.service.dynamics;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.manage.BaseInterface;
import com.manage.entity.Dynamics;
import com.manage.mapper.dynamics.DynamicsMapper;
import com.manage.util.PageParam;
@Service
public class DynamicsService implements BaseInterface<Dynamics>,DynamicsMapper{
    @Autowired
    private DynamicsMapper dynamicsMapper;
    @Override
    public List<Dynamics> queryAll(PageParam pageParam, String keyWord) {
        return null;
    }
    @Override
    public Dynamics queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }
    @Override
    public void delete(List<Integer> ids) {
        // TODO Auto-generated method stub
    }
    @Override
    public void save(Dynamics t) {
        // TODO Auto-generated method stub
    }
    @Override
    public void update(Dynamics t) {
        // TODO Auto-generated method stub
    }
    @Override
    public int getCount(String keyWord) {
        return 0;
    }
    //分页查询所有动态
    //
    @Override
    public List<Dynamics> queryAllForDyns(PageParam pageParam, String keyWord, Dynamics dynamics) {
        return dynamicsMapper.queryAllForDyns(pageParam, keyWord, dynamics);
    }
}
