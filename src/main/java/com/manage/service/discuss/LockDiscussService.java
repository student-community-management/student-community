package com.manage.service.discuss;

import java.util.List;
import java.util.Map;

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
        lockDiscussMapper.save(lockDiscusses);
    }

    @Override
    public void setLockDiscussStatus(Integer id) {
        lockDiscussMapper.setLockDiscussStatus(id);
    }

    @Override
    public LockDiscuss getByid(Integer id) {
        return lockDiscussMapper.getByid(id);
    }

    @Override
    public Map<String,String> getLockInfo(Integer discussid) {
        //得到被锁定的讨论的原因(message)和处理状态(status)
        // message:锁定的原因是后台管理员锁定时给出的原因
        // status:处理状态是前台学生对锁定结果的处理,当修改讨论后才会变为已经处理
        return lockDiscussMapper.getLockInfo(discussid);
    }

}
