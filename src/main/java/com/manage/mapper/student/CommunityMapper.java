package com.manage.mapper.student;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.Community;
import com.manage.entity.StuCommunityRole;
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
    void deleteMany(@Param("ids") List<Integer> ids);
    
    
    /**
     * 得到社团的团长和团长对应的职位id
     * 如果团长被改变,要把前团长删了
     * 删除需要前团长的id和所对应的职位
     * @param id 社团的id
     * @return
     */
    StuCommunityRole getCommMaster(Integer id);
    
    /**
     * 得到社团团长角色对应的id
     * @param id 社团的id
     * @return
     */
    Integer getCommMasterRoleid(Integer id);
    
    
    /**
     * 通过学生的id查询此学生所在的社团 
     * @param stuid 
     * @return
     */
    List<Community> getMyCommunity(@Param("id") Integer stuid);
    
    /**
     * 查询我是社团团长的社团
     * @param stuid
     * @return
     */
    List<Community> getMyMasterCommunity(@Param("id") Integer stuid);
     
    
    
}
