package com.manage.mapper.discuss;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.UnlockDiscussRequest;
import com.manage.util.PageParam;

public interface UnlockDiscussRequestMapper {
    
    /**
     * 查询解锁请求,处理状态未处理
     * @param pageParam 分页参数
     * @param keyWord 查询关键字
     * @return
     */
    List<UnlockDiscussRequest> query(@Param("pageParam") PageParam pageParam,
            @Param("keyWord") String keyWord);
    
    /**
     * 查询满足条件的信息的总数量
     * @param keyWord
     * @return
     */
    Integer getCount(@Param("keyWord") String keyWord);
    
    
    /**
     * 添加解锁请求
     * @param unlockDiscussRequest 录入对象
     */
    void save(UnlockDiscussRequest unlockDiscussRequest);

    /**
     * 设置解锁请求为已处理
     * 
     */
    void setStatus(@Param("ids") List<Integer> ids);

}
