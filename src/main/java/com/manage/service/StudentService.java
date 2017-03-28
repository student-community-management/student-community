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

    @Override
    public List<Student> queryAll(PageParam pageParam) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public List<Student> queryAll(Student t, PageParam pageParam) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Student queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void delete(Integer id) {
        // TODO Auto-generated method stub

    }

    @Override
    public void save(Student t) {
        // TODO Auto-generated method stub

    }

    @Override
    public void update(Student t) {
        // TODO Auto-generated method stub

    }

    @Override
    public int getCount() {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public PageData getPageData() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int getCount(String keyWord) {
        // TODO Auto-generated method stub
        return 0;
    }

}
