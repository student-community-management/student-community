package com.manage.service.student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.manage.entity.Classes;
import com.manage.mapper.student.ClassesMapper;

@Service
@Transactional
public class ClassesService implements ClassesMapper {

    @Autowired
    private ClassesMapper classesMapper;

    /**
     * 读取所有的年级所以 pageParam(分页)为null
     * 如果只想查询为毕业的班级,则keyWord 为no
     */
    @Override
    public List<Classes> queryAll() {
        return classesMapper.queryAll();
    }

}
