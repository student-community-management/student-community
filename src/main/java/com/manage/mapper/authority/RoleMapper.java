package com.manage.mapper.authority;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.Role;
import com.manage.mapper.BaseMapper;
import com.manage.util.PageParam;

public interface RoleMapper extends BaseMapper<Role>{
    /**
     * 其中的结果是除去 管理员和班主任的角色
     * @param pageParam 分页条件
     * @param keyWord 查询关键字
     * @return 符合条件的角色
     * 
     */
    List<Role> getCommunityRoles();
    
}
