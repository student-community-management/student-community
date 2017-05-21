package com.manage.mapper.student;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.StuCommRequest;

public interface StuCommRequestMapper {

    /**
     * 添加学生请求加入社团方法
     * @param t
     */
    void save(StuCommRequest t);

    /**
     * 设置处理状态
     * @param ids
     * @param commid
     */
    void setStatus(@Param("ids") List<Integer> ids, @Param("commid") Integer commid);

}
