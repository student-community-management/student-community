package com.manage.service.student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.StuRole;
import com.manage.mapper.student.StuRoleMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class StuRoleService implements BaseService<StuRole>, StuRoleMapper {

    @Autowired
    private StuRoleMapper stuRoleMapper;

    @Override
    public List<StuRole> queryAll(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public StuRole queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void save(StuRole t) {
        // TODO Auto-generated method stub

    }

    @Override
    public void update(StuRole t) {
        // TODO Auto-generated method stub

    }

    @Override
    public int getCount(String keyWord) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void delete(Integer id) {
        // TODO Auto-generated method stub

    }

}
