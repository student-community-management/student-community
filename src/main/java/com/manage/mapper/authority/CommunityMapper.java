package com.manage.mapper.authority;

import java.util.List;

import com.manage.entity.Community;
import com.manage.mapper.BaseMapper;

public interface CommunityMapper extends BaseMapper<Community> {

    /**
     * 获取最新录入的社团id
     * 为录入社团的角色(community_role)做准备
     * 
     * @return 最新录入的社团id
     */
    Integer getNewComunityid();

    /**
     * 一次删除多条信息
     * @param ids 多条信息的id
     */
    void deleteMany(List<Integer> ids);
}
