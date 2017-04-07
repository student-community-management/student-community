package com.manage.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.Student;
import com.manage.mapper.StudentMapper;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class StudentService implements BaseService<Student>, StudentMapper {

    @Autowired
    private StudentMapper studentMapper;

    @Override
    public List<Student> queryAll(PageParam pageParam, String keyWord) {
        return studentMapper.queryAll(pageParam, keyWord);
    }

    @Override
    public Student queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void delete(List<Integer> ids) {
        if(ids == null || ids.size() == 0){
            throw new RuntimeException("传入对象为空");
        } else {
            studentMapper.delete(ids);
        }
    }

    @Override
    public void save(Student t) {
        if (t == null) {
            throw new RuntimeException("传入对象为空");
        } else {
            studentMapper.save(t);
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
        return new PageData(this.getCount(keyWord), this.queryAll(pageParam, keyWord));
    }
    

    @Override
    public List<Student> getAllManager(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }
}
