package com.manage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.Student;
import com.manage.util.PageParam;

public interface StudentMapper extends BaseMapper<Student> {

    /**
     * 通过社团的id查询出社团中的所有学生
     * @param id 社团的
     * @return 返回查询所有学生的信息
     */
    List<Student> getStudentByCommid(Integer id);

    /**
     * 
     * 管理员(老师)相当于没有班级的学生
     *  
     * @param pageParam
     * @param keyWord
     * @return 符合条件的学生
     */
    List<Student> getAllManager(@Param("pageParam") PageParam pageParam,
            @Param("keyWord") String keyWord);

}