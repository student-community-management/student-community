package com.manage.mapper.authority;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.Community;
import com.manage.mapper.BaseMapper;

public interface CommunityMapper extends BaseMapper<Community> {

    /**
     * 获得角色的id
     * 为录入社区的角色(community_role)做准备
     * 
     * @return 返回角色id结果集
     */
    List<Integer> getRoleids();

    /**
     * 获取最新录入的社团id
     * 为录入社团的角色(community_role)做准备
     * 
     * @return 最新录入的社团id
     */
    Integer getNewComunityid();

    /**
     * 
     * 录入社团的角色(community_role)
     * 
     * @param newComunityid
     * @param Roleids
     */
    void saveCommunityRole(@Param("newComunityid") Integer newComunityid,
            @Param("ids") List<Integer> Roleids);
    
    
    
    /**
     * 赋予学生角色
     * @param stu_id
     * @param communityRoleid
     */
    void setRole(Integer stu_id,Integer communityRoleid);
    
}
