package com.manage.mapper.student;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.StuCommunity;
import com.manage.entity.Student;
import com.manage.mapper.BaseMapper;
import com.manage.util.PageParam;

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

}
