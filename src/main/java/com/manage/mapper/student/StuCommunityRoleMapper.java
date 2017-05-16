package com.manage.mapper.student;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.StuCommunityRole;

public interface StuCommunityRoleMapper {
    
    /**
     * 给学生添加社团职位
     * @param communityRole
     */
    void save(StuCommunityRole communityRole);

    /**
     * 删除学生的社团职位
     * @param communityRole
     */
    void del(StuCommunityRole communityRole);
    
    
    /**
     * 当删除社团时,社团对应的角色也会被删除
     * @param ids
     */
    void delByCommids(@Param("ids") List<Integer> ids);
    
}
