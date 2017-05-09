package com.manage.service.dynamics;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.manage.BaseInterface;
import com.manage.entity.Dynamics;
import com.manage.mapper.dynamics.DynamicsMapper;
import com.manage.util.PageParam;

@Service
public class DynamicsService implements BaseInterface<Dynamics>, DynamicsMapper {
    @Autowired
    private DynamicsMapper dynamicsMapper;

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
        return dynamicsMapper.getCount(keyWord);
    }

    /**
     * @author 用户自身的动态
     */
    @Override
    public List<Dynamics> getMyselfAllDynamics(PageParam pageParam, Integer id, String keyWord) {
        return dynamicsMapper.getMyselfAllDynamics(pageParam, id, keyWord);
    }

    /**
     * @author 用户自身的动态数量
     */
    @Override
    public Integer getMyselfAllDynamicsCount(Integer id, String keyWord) {
        return dynamicsMapper.getMyselfAllDynamicsCount(id, keyWord);
    }

    /**
     * 所有人动态
     */
    @Override
    public List<Dynamics> queryAll(PageParam pageParam, String keyWord) {
        return dynamicsMapper.queryAll(pageParam, keyWord);
    }

    @Override
    public void delete(Integer id) {
        // TODO Auto-generated method stub

    }

}
