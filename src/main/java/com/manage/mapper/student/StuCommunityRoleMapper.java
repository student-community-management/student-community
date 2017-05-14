package com.manage.mapper.student;

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
    
}
