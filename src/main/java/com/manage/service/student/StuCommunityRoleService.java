package com.manage.service.student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.StuCommunityRole;
import com.manage.mapper.student.StuCommunityRoleMapper;

@Service
public class StuCommunityRoleService implements StuCommunityRoleMapper {
    
    @Autowired
    private StuCommunityRoleMapper stuCommunityRoleMapper;
    
    @Override
    public void save(StuCommunityRole communityRole) {
        stuCommunityRoleMapper.save(communityRole);
    }

    @Override
    public void del(StuCommunityRole communityRole) {
        stuCommunityRoleMapper.del(communityRole);
    }

    @Override
    public void delByCommids(List<Integer> ids) {
        // TODO Auto-generated method stub
        //并不能单独实现的方法
    }
    
}
