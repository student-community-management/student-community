package com.manage.mapper.authority;

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
}
