package com.manage.mapper.authority;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.CommunityRole;
import com.manage.mapper.BaseMapper;

public interface CommunityRoleMapper extends BaseMapper<CommunityRole> {

    /**
     * 赋予学生角色
     * @param stu_id
     * @param communityRoleid
     */
    void setRoleToStu(@Param("stuid") Integer stuid,
            @Param("communityRoleid") Integer communityRoleid);

    /**
     * 自动生成社团对应的角色
     * @param commid 社团的id
     * @param roleids 角色的ids
     */
    void autoSaveCommRoles(@Param("commid") Integer commid, @Param("roleids") List<Integer> roleids);
    
    
    
    
}
