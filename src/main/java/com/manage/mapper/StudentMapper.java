package com.manage.mapper;

import java.util.List;

import com.manage.entity.Student;

public interface StudentMapper extends BaseMapper<Student> {

    /**
     * 通过社团的id查询出社团中的所有学生
     * @param id 社团的
     * @return 返回查询所有学生的信息
     */
    List<Student> getStudentByCommid(Integer id);
}