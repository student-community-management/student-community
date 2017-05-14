package com.manage.mapper.student;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.Student;
import com.manage.mapper.BaseMapper;
import com.manage.util.PageParam;

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
     * 得到此社团的团长候选人
     * @param pageParam 分页条件参数
     * @param keyWord 查询关键字
     * @param id 社团的id
     * @return 学生对象
     * 
     */
    List<Student> getCandidate(@Param("pageParam") PageParam pageParam,
            @Param("keyWord") String keyWord, @Param("id") Integer id);
    
    /**
     * 社团团长候选人数量
     * @param keyWord 查询关键字
     * @param id 社团的id
     * @return
     */
    Integer getCandidateCount(@Param("keyWord") String keyWord, @Param("id") Integer id);
    
    
    /**
     * 前台页面登陆
     * @return 如果为1则为登陆成功
     */
    Integer login(Student stu);

}