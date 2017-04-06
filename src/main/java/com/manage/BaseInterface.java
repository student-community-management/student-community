package com.manage;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.util.PageParam;

public interface BaseInterface<T> {
    
    /**
     * 按条件分页查询
     * @Param("pageParam") 注解是将多个参数自动封装到Map当中
     * 如果查询条件为空则在其mapper.xml文件中判断
     * @param pageParam 分页条件
     * @param keyWord 查询条件
     * @return 返回查询后的所有实体类对象
     */
    List<T> queryAll(@Param("pageParam") PageParam pageParam, @Param("keyWord") String keyWord);
    
    /**
     * 通过id查询单条信息
     * 
     * @param id 实体类的对象id
     * @return 返回查询后的一个实体类对象
     */
    T queryOne(Integer id);

    /**
     * 根据id删除
     * @param id 实体类对象的id
     */
    void delete(Integer id);

    /**
     * 添加信息
     * @param t 全新的实体类对象
     * @throws Exception 
     */
    void save(T t) throws Exception;

    /**
     * 更新信息
     * @param t 更改之后的实体类对象
     */
    void update(T t);

    /**
     * 查询符合条件的信息数量
     * 如果条件为空则直接在其mapper.xml文件中判断
     * @param keyWord 查询条件
     * @return 返回查询结果数量
     */
    int getCount(@Param("keyWord") String keyWord);
}
