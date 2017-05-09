package com.manage.mapper.student;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.CommunityRole;
import com.manage.mapper.BaseMapper;

public interface CommunityRoleMapper extends BaseMapper<CommunityRole> {
    
    /**
     * 添加社团时,自动添加社团对应的角色
     * @param communityid
     */
    void saveByCommid(Integer communityid);
    
    /**
     * 删除社团时删除社团对应的角色
     * @param communityid
     */
    void deleteByCommid(@Param("ids") List<Integer> communityids);
}
