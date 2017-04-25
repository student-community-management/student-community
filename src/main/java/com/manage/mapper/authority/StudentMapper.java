package com.manage.mapper.authority;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.Student;
import com.manage.mapper.BaseMapper;
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

    /**
     * 
     * @param pageParam
     * @param keyWord
     * @param isClassesid
     * @return
     */
    List<Student> queryAllForStu(@Param("pageParam") PageParam pageParam,
            @Param("keyWord") String keyWord, @Param("isClassesid") Boolean isClassesid);

    /**
     * 
     * @param pageParam
     * @param keyWord
     * @param isClassesid
     * @return
     */
    int getCountForStu(@Param("keyWord") String keyWord, @Param("isClassesid") Boolean isClassesid);

    /**
     * 学生加入社团
     * @param studentid 加入社团的学生的id
     * @param communityid 加入的社团的id
     */
    void joinCommunity(@Param("studentid") Integer studentid,
            @Param("communityid") Integer communityid);

    /**
     * 获得刚录取的管理员id
     * @return
     */
    Integer getNewMgrid();

    /**
     * 前台页面登陆
     * @return 如果为1则为登陆成功
     */
    Integer stuFrontLogin(Student stu);

    /**
     * 后台页面登录
     * @return 如果为1则为登陆成功
     */
    Integer stuBackLogin(Student stu);
}