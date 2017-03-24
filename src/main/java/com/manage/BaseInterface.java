package com.manage;

import java.util.List;

import com.manage.util.PageParam;

public interface BaseInterface<T> {
    /**
     * 分页查询
     * @return 返回查询后的所有实体类对象
     */
    List<T> queryAll(PageParam pageParam);

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
     */
    void save(T t);

    /**
     * 更新信息
     * @param t 更改之后的实体类对象
     */
    void update(T t);

    /**
     * @return 所有信息的条数
     */
    int getCount();
}
