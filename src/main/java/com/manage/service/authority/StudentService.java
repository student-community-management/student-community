package com.manage.service.authority;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.Student;
import com.manage.mapper.authority.CommunityRoleMapper;
import com.manage.mapper.authority.StudentMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class StudentService implements BaseService<Student>, StudentMapper {

    @Autowired
    private StudentMapper studentMapper;
    @Autowired
    private CommunityRoleMapper communityRoleMapper;

    /**
     * crid(communityRoleid) 为了在添加管理人员时获得社团对应的角色id
     * 为了保存{@link com.manage.control.authority.StudentControl#saveStu(Student, Integer) }中
     * Integer 参数
     */
    public static Integer crid;

    @Override
    public List<Student> queryAll(PageParam pageParam, String keyWord) {
        // return studentMapper.queryAll(pageParam, keyWord);
        return null;
    }

    @Override
    public Student queryOne(Integer id) {
        return studentMapper.queryOne(id);
    }

    @Override
    public void delete(List<Integer> ids) {
        if (ids == null || ids.size() == 0) {
            throw new RuntimeException("传入对象为空");
        } else {
            studentMapper.delete(ids);// 删除学生对象
        }
    }

    @Override
    public void save(Student t) {
        if (t == null) {
            throw new RuntimeException("传入对象为空");
        } else {
            studentMapper.save(t);// 录入学生(或管理人员)信息
            // 如果stuNativePlace 或 classes 为空 则为添加管理人员
            if (t.getStuNativePlace() == null || t.getClasses() == null) {
                // 获得刚添加的管理人员id
                int newMgrid = studentMapper.getNewMgrid();
                // 将管理人员添加到校本部
                studentMapper.joinCommunity(newMgrid, 1);
                // 赋予管理人员角色
                communityRoleMapper.setRoleToStu(newMgrid, crid);
            }
        }

    }

    @Override
    public void update(Student t) {
        if (t == null) {
            throw new RuntimeException("传入对象为空");
        } else {
            studentMapper.update(t);
        }
    }

    @Override
    public int getCount(String keyWord) {
        return studentMapper.getCount(keyWord);
    }

    @Override
    public List<Student> getStudentByCommid(Integer id) {

        if (id != null) {
            return studentMapper.getStudentByCommid(id);
        } else {
            throw new RuntimeException("查询参数有误");
        }
    }

    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        // return new PageData(this.getCount(keyWord), this.queryAll(pageParam,
        // keyWord));
        return null;
    }

    public PageData getPageDataForStu(PageParam pageParam, String keyWord, Boolean isClassesid) {
        return new PageData(this.getCountForStu(keyWord, isClassesid),
                this.queryAllForStu(pageParam, keyWord, isClassesid));
    }

    @Override
    public List<Student> queryAllForStu(PageParam pageParam, String keyWord, Boolean isClassesid) {
        return studentMapper.queryAllForStu(pageParam, keyWord, isClassesid);
    }

    @Override
    public int getCountForStu(String keyWord, Boolean isClassesid) {
        return studentMapper.getCountForStu(keyWord, isClassesid);
    }

    @Override
    public List<Student> getAllManager(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void joinCommunity(Integer studentid, Integer communityid) {
        // TODO Auto-generated method stub

    }

    @Override
    public Integer getNewMgrid() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Integer stuFrontLogin(Student stu) {
        return studentMapper.stuFrontLogin(stu);
    }

    @Override
    public Integer stuBackLogin(Student stu) {
        return studentMapper.stuBackLogin(stu);
    }

}
