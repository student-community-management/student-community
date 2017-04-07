package com.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.Student;
import com.manage.mapper.StudentMapper;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class StudentService implements BaseService<Student> {

    @SuppressWarnings("unused")
    @Autowired
    private StudentMapper studentMapper;

    public List<Student> queryAll(PageParam pageParam) {
        // TODO Auto-generated method stub
        return null;
    }

    public List<Student> queryAll(Student t, PageParam pageParam) {
        // TODO Auto-generated method stub
        return null;
    }

    public Student queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    public void delete(Integer id) {
        // TODO Auto-generated method stub
        
    }

    public void save(Student t) {
        // TODO Auto-generated method stub
        
    }

    public void update(Student t) {
        // TODO Auto-generated method stub
        
    }

    public int getCount() {
        // TODO Auto-generated method stub
        return 0;
    }

    public int getCount(String keyWord) {
        // TODO Auto-generated method stub
        return 0;
    }

    public PageData getPageData() {
        // TODO Auto-generated method stub
        return null;
    }


}
