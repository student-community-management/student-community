package com.manage.mapper.student;

import java.util.List;

import com.manage.entity.Classes;

public interface ClassesMapper {
    /**
     * 查询所有班级 添加学生下拉列表框 combogrid
     * @return
     */
    List<Classes> queryAll();
    
}
