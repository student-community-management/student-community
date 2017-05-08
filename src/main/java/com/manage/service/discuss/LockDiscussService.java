package com.manage.service.discuss;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.LockDiscuss;
import com.manage.mapper.discuss.LockDiscussMapper;

@Service
public class LockDiscussService implements LockDiscussMapper {
    
    @Autowired
    private LockDiscussMapper lockDiscussMapper;
    
    @Override
    public void save(List<LockDiscuss> lockDiscusses) {
        System.out.println("进入到lockService中");
        lockDiscussMapper.save(lockDiscusses);
    }

    @Override
    public void setLockDiscussStatus(List<Integer> ids) {
        lockDiscussMapper.setLockDiscussStatus(ids);
    }

    @Override
    public LockDiscuss getByid(Integer id) {
        return lockDiscussMapper.getByid(id);
    }

}
