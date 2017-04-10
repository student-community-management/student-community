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
    void setRoleToStu(@Param("stu_id") Integer stu_id,
            @Param("communityRoleid") Integer communityRoleid);
    
    /**
     * 自动生成数据到数据库
     * @param commid 社团的id
     * @param roleids 角色的ids
     */
    void autoSave(@Param("commid") Integer commid,@Param("roleids") List<Integer> roleids  );
    
}
