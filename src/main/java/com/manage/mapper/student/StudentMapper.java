package com.manage.mapper.student;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.Student;
import com.manage.mapper.BaseMapper;

public interface StudentMapper extends BaseMapper<Student> {

    /**
     * 一次删除多条信息
     * @param ids 多条信息的id
     */
    void deleteMany(List<Integer> ids);

    /**
     * 通过社团的id查询出社团中的所有学生
     * @param id 社团的
     * @return 返回查询所有学生的信息
     */
    List<Student> getStudentByCommid(Integer id);

    /**
     * 学生加入社团
     * @param studentid 加入社团的学生的id
     * @param communityid 加入的社团的id
     */
    void joinCommunity(@Param("studentid") Integer studentid,
            @Param("communityid") Integer communityid);

    /**
     * 前台页面登陆
     * @return 如果为1则为登陆成功
     */
    Integer login(Student stu);

}