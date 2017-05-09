package com.manage.mapper.manager;

import java.util.List;

import com.manage.entity.MgrRole;
import com.manage.mapper.BaseMapper;

public interface MgrRoleMapper extends BaseMapper<MgrRole> {
    
    /**
     * 职位下拉框,不包含超级管理员(因为超级管理员只能有一个)
     * @return
     */
    List<MgrRole> queryForCommbo();
    
}
