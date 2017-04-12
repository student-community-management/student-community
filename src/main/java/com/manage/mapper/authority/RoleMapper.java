package com.manage.mapper.authority;

import java.util.List;

import com.manage.entity.Role;
import com.manage.mapper.BaseMapper;

public interface RoleMapper extends BaseMapper<Role> {

    /**
     *  查询普通社团的角色(不是校本部)
     *  此方法是为了添加社团时自动生成社团对应的角色
     *  在 {@link com.manage.mapper.authority.CommunityRoleMapper#autoSaveCommRoles(Integer, List)} 
     *  方法中作为 List 参数
     * @return
     */
    List<Integer> getCommunityRoles();

    /**
     * 获得管理人员都有哪些角色
     * @return 返回管理人员对应的角色id(communityRoleid),和角色名称(roleName)
     */
    List<Role> getMgrRoles();

}
