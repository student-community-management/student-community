package com.manage.mapper.discuss;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.LockDiscuss;

public interface LockDiscussMapper {
    
    /**
     * 通过id查找
     * @param id
     * @return
     */
    LockDiscuss getByid(Integer id);
    
    /**
     * 保存一组数据
     * @param lockDiscusses
     */
    void save(@Param("lockDiscusses") List<LockDiscuss> lockDiscusses);
    
    
    /**
     * 将处理状态改为已处理
     * @param ids
     */
    void setLockDiscussStatus(@Param("ids") List<Integer> ids);
    
}
