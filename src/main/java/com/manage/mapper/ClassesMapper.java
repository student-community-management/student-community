package com.manage.mapper;

import java.util.List;

import com.manage.entity.Classes;

public interface ClassesMapper extends BaseMapper<Classes> {
    
    /**
     * 通过年级查询此年级有多少班
     * @return 查询此年级下的班名称
     */
    List<String> queryClassesByGrade(Integer grade); 
    
}