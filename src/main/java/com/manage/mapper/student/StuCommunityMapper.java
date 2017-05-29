package com.manage.mapper.student;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.StuCommunity;
import com.manage.mapper.BaseMapper;

public interface StuCommunityMapper extends BaseMapper<StuCommunity> {

    /**
     * 当删除社团时,自动解除社团和学生的关系
     * 通过社团的id解除关系
     * @param communities
     */
    void deleteByCommids(@Param("ids") List<Integer> communities);

    /**
     * 查看此学生是否在这个社团中
     * @param stuCommunity  学生和社团对应对象
     * @return
     */
    Integer exist(StuCommunity stuCommunity);
    
    
    /**
     * 删除社团成员
     * @param ids 要删除的社团的成员的id
     * @param commid 要从这个社团删除的社团的id
     * 
     */
    void delCommStus(@Param("ids") List<Integer> ids,@Param("commid") Integer commid);
    
    /**
     * 添加社团团员
     * @param ids 要添加的社团成员
     * @param commid 添加到这个社团的社团的id
     */
    void saveCommStus(@Param("ids") List<Integer> ids,@Param("commid") Integer commid);

}
